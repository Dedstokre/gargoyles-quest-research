// Dependency-free regression suite for models/*.js. Stdlib only (node:assert).
// Run: node tests/model_regressions.mjs. Exits nonzero on failure.
//
// Tags: INVARIANT = strong regression on established (Observed/Inference High+)
// evidence; SANITY = implementation check on weaker or narrower evidence.
// Hypothesis-level paths (flight-budget exhaustion, post-flight re-entry,
// and natural walk-off geometry/timing) are DELIBERATELY UNTESTED: controlled
// support-loss dispatch is covered, but no natural ledge transition was reached.
import { strict as assert } from 'node:assert';
import * as P from '../models/platforming_model.js';
import * as O from '../models/overworld_model.js';
import * as A from '../models/animation_model.js';
import * as C from '../models/player_collision_model.js';

let passed = 0, total = 0;
function test(name, fn) {
  total++;
  fn();
  passed++;
  console.log(`PASS ${name}`);
}

// Fresh player record with every field the platforming model touches.
function freshPlayer() {
  return {
    y: 0, worldX: 0x100, screenX: 0x50, facingRight: true,
    movementFlags: 0, collisionFlags: 0,
    verticalSpeedInteger: 0, verticalSpeedHalf: 0,
    verticalAccelPhase: 0, verticalSubpixel: 0,
    horizontalPhase: 0, airPhase: P.AIR.ASCENT,
    flightRemaining: 63, requestedAnimation: 0, animation: 0,
    wallJumpForcedInputFrames: 0, wallJumpForcedDirection: 0,
    fieldC4AC: 0, contactClass08Latch: 0,
    controlDisabled: false, wallLatchSuppressed: false,
  };
}
const T0 = { jumpTier: 0, flightTier: 0 };

// ---- Platforming: jump launch (B1:$4560; platforming.md Jump strength) ----
for (const [tier, i, half, budget] of [[0, 2, 0x80, 63], [1, 3, 0, 127], [2, 3, 0x80, 255], [3, 4, 0, Infinity]]) {
  test(`platforming/launch-tier${tier}`, () => {
    const p = freshPlayer();
    P.beginAirborne(p, { jumpTier: tier, flightTier: tier });
    assert.equal(p.verticalSpeedInteger, i);
    assert.equal(p.verticalSpeedHalf, half);
    assert.equal(p.flightRemaining, budget); // tier 3 is unlimited (DF13 bypass at $4785).
    assert.equal(p.airPhase, P.AIR.ASCENT);
    assert.equal(p.movementFlags, P.MOVE.AIRBORNE);
    assert.equal(p.fieldC4AC, 1); // C4AC=1 at $4562, every launch.
  });
}

// ---- Platforming: full-held tier-0 apex (traced -27px at +18f; do not adjust casually) ----
test('platforming/held-ascent-apex-tier0', () => {
  const p = freshPlayer();
  p.y = 500;
  P.beginAirborne(p, T0);
  for (let f = 0; f < 18; f++) P.updateAirborne(p, { held: P.BTN.A, pressed: 0 }, T0);
  assert.equal(p.y, 500 - 27);
});

// ---- Platforming: early release cut ($45C9) ----
test('platforming/release-cut', () => {
  const p = freshPlayer();
  P.beginAirborne(p, T0);
  for (let f = 0; f < 3; f++) P.updateAirborne(p, { held: P.BTN.A, pressed: 0 }, T0);
  P.updateAirborne(p, { held: 0, pressed: 0 }, T0);
  assert.equal(p.airPhase, P.AIR.PRE_FLIGHT_FALL);
  assert.equal(p.verticalSpeedInteger, 0);
  assert.equal(p.verticalSpeedHalf, 0x80);
});

// ---- Platforming: flight entry decrements immediately; then sustain drains ($478A) ----
test('platforming/flight-sustain', () => {
  const p = freshPlayer();
  P.beginAirborne(p, T0);
  P.updateAirborne(p, { held: 0, pressed: 0 }, T0); // release -> phase 1
  P.updateAirborne(p, { held: 0, pressed: P.BTN.A }, T0); // fresh edge -> flight
  assert.equal(p.airPhase, P.AIR.FLIGHT);
  p.y = 300;
  for (let f = 0; f < 12; f++) P.updateAirborne(p, { held: 0, pressed: 0 }, T0);
  assert.equal(p.flightRemaining, 50); // entry update plus twelve sustain updates.
  assert.equal(p.y, 300);
});

test('platforming/flight-exit-runs-first-fall-integration-immediately', () => {
  const p = freshPlayer();
  p.y = 300;
  p.airPhase = P.AIR.FLIGHT;
  p.movementFlags = P.MOVE.AIRBORNE;
  p.verticalSpeedInteger = 0;
  p.verticalSpeedHalf = 0x80;
  p.verticalAccelPhase = 0;
  p.verticalSubpixel = 0;
  P.updateAirborne(p, { held: 0, pressed: P.BTN.A }, T0);
  assert.deepEqual([
    p.airPhase, p.y, p.verticalAccelPhase, p.verticalSubpixel,
  ], [P.AIR.POST_FLIGHT_FALL, 300, 0x10, 0x80]);
});

// ---- Platforming: terminal fall speed 2.5 ($471D clamp) ----
test('platforming/terminal-fall', () => {
  const p = freshPlayer();
  let maxHalf = 0;
  for (let f = 0; f < 200; f++) {
    const dy = P.integrateFall(p);
    maxHalf = Math.max(maxHalf, p.verticalSpeedInteger * 2 + (p.verticalSpeedHalf ? 1 : 0));
    assert.ok(dy <= 3);
  }
  assert.deepEqual([p.verticalSpeedInteger, p.verticalSpeedHalf], [2, 0x80]);
  assert.ok(maxHalf <= 5); // never exceeds 2.5 px/frame in half-pixel units.
});

// ---- Platforming: horizontal $C0 carry, INVARIANT (traced sawtooth, +4px/6f) ----
test('platforming/horizontal-carry-C0', () => {
  const p = freshPlayer();
  let dx = 0;
  for (let f = 0; f < 6; f++) dx += P.integrateHorizontal(p, { held: P.BTN.RIGHT }, 0x00);
  assert.equal(dx, 4);
  assert.equal(p.worldX, 0x104);
  assert.equal(p.facingRight, true);
});

// ---- Platforming: $80 substitution, SANITY (Inference High; branch unrecorded) ----
test('platforming/horizontal-SANITY-rate-80', () => {
  const p = freshPlayer();
  let dx = 0;
  for (let f = 0; f < 12; f++) dx += P.integrateHorizontal(p, { held: P.BTN.RIGHT }, 0x28);
  assert.equal(dx, 6); // half rate over the same span.
});

// ---- Platforming: left symmetry + clamps, SANITY (mirror path unrecorded) ----
test('platforming/horizontal-SANITY-left-symmetry', () => {
  const r = freshPlayer(), l = freshPlayer();
  r.facingRight = false;
  let dr = 0, dl = 0;
  for (let f = 0; f < 12; f++) {
    dr += P.integrateHorizontal(r, { held: P.BTN.RIGHT }, 0x00);
    dl += P.integrateHorizontal(l, { held: P.BTN.LEFT }, 0x00);
  }
  assert.equal(dr, -dl);
  assert.equal(l.facingRight, false);
});

// These clamp checks exercise byte-decoded branches; `$98` was not reached live.
test('platforming/ROM-DECODED-right-screen-clamp-98', () => {
  const p = freshPlayer();
  p.horizontalPhase = 0x80; // arrange a carry on the next update.
  p.screenX = 0x98;
  assert.equal(P.integrateHorizontal(p, { held: P.BTN.RIGHT }, 0x00), 0);
  assert.equal(p.worldX, 0x100); // carry pixel swallowed at the bound.
});

test('platforming/ROM-DECODED-left-screen-clamp-18', () => {
  const p = freshPlayer();
  p.horizontalPhase = 0x80;
  p.screenX = 0x18;
  assert.equal(P.integrateHorizontal(p, { held: P.BTN.LEFT }, 0x00), 0);
  assert.equal(p.worldX, 0x100);
});

// ---- Platforming: grounded idle/walk/shot-lock ($4536-$455D) ----
test('platforming/grounded-idle', () => {
  const p = freshPlayer();
  for (let f = 0; f < 12; f++) P.updateGrounded(p, { held: 0 });
  assert.equal(p.worldX, 0x100);
  assert.equal(p.requestedAnimation, 1);
  assert.equal(p.movementFlags, 0);
});

test('platforming/grounded-walk-enter', () => {
  const p = freshPlayer();
  P.updateGrounded(p, { held: P.BTN.RIGHT });
  assert.equal(p.movementFlags, P.MOVE.GROUND_MOVING);
  assert.equal(p.requestedAnimation, 2);
});

// The controller support-loss branch is runtime-observed in a controlled C36A
// fixture. These tests assert that branch only; they do not imply a natural ledge.
test('platforming/support-loss-no-edge-starts-fall-same-update', () => {
  const p = freshPlayer();
  p.y = 0x1d5;
  p.movementFlags = P.MOVE.GROUND_MOVING;
  P.updateGrounded(p, { held: P.BTN.RIGHT, pressed: 0 },
    { supported: false, upgrades: T0 });
  assert.deepEqual([
    p.y, p.movementFlags, p.airPhase, p.verticalSpeedInteger,
    p.verticalSpeedHalf, p.verticalAccelPhase, p.verticalSubpixel,
  ], [0x1d5, P.MOVE.AIRBORNE, P.AIR.POST_FLIGHT_FALL, 0, 0x80, 0x10, 0x80]);
});

test('platforming/support-loss-fresh-A-edge-jumps', () => {
  const p = freshPlayer();
  p.y = 0x1d5;
  P.updateGrounded(p, { held: P.BTN.A, pressed: P.BTN.A },
    { supported: false, upgrades: T0 });
  assert.deepEqual([p.y, p.movementFlags, p.airPhase],
    [0x1d3, P.MOVE.AIRBORNE, P.AIR.ASCENT]);
});

test('platforming/support-loss-held-A-without-edge-falls', () => {
  const p = freshPlayer();
  p.y = 0x1d5;
  P.updateGrounded(p, { held: P.BTN.A, pressed: 0 },
    { supported: false, upgrades: T0 });
  assert.deepEqual([p.y, p.movementFlags, p.airPhase, p.verticalSubpixel],
    [0x1d5, P.MOVE.AIRBORNE, P.AIR.POST_FLIGHT_FALL, 0x80]);
});

test('platforming/support-loss-dispatch-precedes-shot-lock', () => {
  const p = freshPlayer();
  p.movementFlags = P.MOVE.SHOT_LOCK;
  P.updateGrounded(p, { held: 0, pressed: 0 },
    { supported: false, upgrades: T0 });
  assert.deepEqual([p.movementFlags, p.airPhase],
    [P.MOVE.AIRBORNE, P.AIR.POST_FLIGHT_FALL]);
});

test('platforming/walk-release-rechecks-input-and-enters-idle', () => {
  const p = freshPlayer();
  p.movementFlags = P.MOVE.GROUND_MOVING;
  p.requestedAnimation = 2;
  P.updateGrounded(p, { held: 0, pressed: 0 }, { supported: true, upgrades: T0 });
  assert.deepEqual([p.movementFlags, p.requestedAnimation, p.worldX, p.horizontalPhase],
    [0, 1, 0x100, 0]);
});

// Camera checks below use live stage-0 follow/reverse samples. Screen clamps and
// area bounds are ROM-decoded paths only and remain provenance-tagged, not treated
// as naturally demonstrated endpoints.
let Camera;
try { Camera = await import('../models/camera_contract.js'); } catch { Camera = null; }
test('camera/contract-module-present', () => {
  assert.ok(Camera, 'camera contract model should be available');
  assert.match(Camera.CAMERA_EVIDENCE.playerScreenClamps, /ROM decode/);
  assert.match(Camera.CAMERA_EVIDENCE.cameraAreaBounds, /ROM decode only/);
  assert.equal(Camera.CAMERA_EVIDENCE.horizontalReverseRuntime,
    'Observed — High (runtime reversal sample)');
  assert.match(Camera.CAMERA_EVIDENCE.horizontalFollowDecode,
    /Observed — Very High \(ROM-decoded/);
});
if (Camera) {
  test('camera/stage0-horizontal-follow-and-reverse-runtime', () => {
    const c = Camera.createCamera({ x: 0, y: 0x180, targetX: 0x58, targetY: 0x50 });
    assert.equal(Camera.followHorizontal(c, 0x58, 1), 0);
    assert.equal(Camera.followHorizontal(c, 0x59, 1), 1);
    assert.equal(c.x, 1);
    c.x = 8;
    assert.equal(Camera.followHorizontal(c, 0x5f, -1), -1); // world pixel moved left before follow.
    assert.equal(c.x, 7);
  });

  test('camera/stage0-vertical-follow-runtime', () => {
    const c = Camera.createCamera({ x: 0, y: 0x180, targetX: 0x58, targetY: 0x50 });
    assert.equal(Camera.followVertical(c, 0x1d0, -1), 0); // first reach target
    assert.equal(Camera.followVertical(c, 0x1c4, -1), -0x0c);
    assert.equal(c.y, 0x174);
    assert.equal(Camera.screenY(0x1c4, c), 0x50);
  });

  test('camera/screen-coordinate-is-world-minus-camera', () => {
    const c = Camera.createCamera({ x: 1, y: 0x174, targetX: 0x58, targetY: 0x50 });
    assert.deepEqual(Camera.screenPosition({ x: 0x59, y: 0x1c4 }, c), { x: 0x58, y: 0x50 });
  });

  test('camera/collision-correction-right-wall-observable-contract', () => {
    assert.equal(typeof Camera.followHorizontalCorrection, 'function');
    if (typeof Camera.followHorizontalCorrection !== 'function') return;
    const c = Camera.createCamera({ x: 0x09, targetX: 0x58 });
    const p = freshPlayer();
    Object.assign(p, { worldX: 0x61, y: 0x1c3, previousY: 0x1c3,
      movementFlags: P.MOVE.AIRBORNE, screenX: 0x58 });
    C.resolveOrdinarySolids(p, { held: P.BTN.RIGHT }, (x, y) =>
      Math.floor(x / 16) === 6 && Math.floor(y / 16) === 0x1a, T0);
    assert.equal(p.worldX, 0x60); // audited ordinary right-wall correction.
    Camera.followHorizontalCorrection(c, 0x61, p.worldX);
    assert.deepEqual([p.worldX, c.x, Camera.screenX(p.worldX, c)], [0x60, 0x08, 0x58]);
  });
}

test('platforming/grounded-shotlock-skips-horizontal', () => {
  const p = freshPlayer();
  p.movementFlags = P.MOVE.SHOT_LOCK;
  p.horizontalPhase = 0x80;
  P.updateGrounded(p, { held: P.BTN.RIGHT });
  assert.equal(p.worldX, 0x100); // $452D RET NZ: $4632 not reached.
  assert.equal(p.horizontalPhase, 0x80);
});

// ---- Platforming: cling freeze + latch writes ----
test('platforming/cling-freeze', () => {
  const p = freshPlayer();
  p.movementFlags = P.MOVE.WALL_CLING;
  p.worldX = 0x200; p.y = 100;
  P.updateWallCling(p, { held: P.BTN.RIGHT, pressed: 0 }, T0);
  assert.equal(p.worldX, 0x200);
  assert.equal(p.y, 100);
  assert.equal(p.flightRemaining, 63); // cling refills ($4B55).
});

test('platforming/latch-writes', () => {
  const p = freshPlayer();
  p.movementFlags = P.MOVE.AIRBORNE;
  p.facingRight = true;
  assert.equal(P.latchToWall(p), true);
  assert.equal(p.movementFlags, P.MOVE.WALL_CLING);
  assert.equal(p.wallJumpForcedDirection, 0); // C2A2 cleared.
  assert.ok(p.collisionFlags & 0x40); // C36A bit6 latched.
  assert.equal(p.facingRight, false);
  const g = freshPlayer(); // guard: grounded player cannot latch.
  assert.equal(P.latchToWall(g), false);
});

// ---- Platforming: forced 8-update wall-jump input vs raw control ----
test('platforming/forced-input-8-updates', () => {
  const p = freshPlayer();
  p.wallJumpForcedInputFrames = 8;
  p.wallJumpForcedDirection = 1; // selector 1 -> A+Left ($21).
  const masks = [];
  for (let f = 0; f < 8; f++) masks.push(P.applyWallJumpForcedInput(p, { held: 0, pressed: 0 }).held);
  assert.deepEqual(masks, [0x21, 0x21, 0x21, 0x21, 0x21, 0x21, 0x21, 0x21]);
  assert.equal(p.wallJumpForcedInputFrames, 0);
});

test('platforming/forced-input-drives-horizontal', () => {
  const w = freshPlayer();
  w.movementFlags = P.MOVE.AIRBORNE;
  w.airPhase = P.AIR.ASCENT;
  w.verticalSpeedInteger = 2;
  w.wallJumpForcedInputFrames = 8;
  w.wallJumpForcedDirection = 1;
  const x0 = w.worldX;
  for (let f = 0; f < 8; f++) {
    P.updateAirborne(w, P.applyWallJumpForcedInput(w, { held: 0, pressed: 0 }), T0);
  }
  assert.ok(w.worldX < x0); // forced Left+A moves left through the air path.
  const c = freshPlayer(); // raw-input control: no movement.
  c.movementFlags = P.MOVE.AIRBORNE;
  c.airPhase = P.AIR.ASCENT;
  c.verticalSpeedInteger = 2;
  for (let f = 0; f < 8; f++) P.updateAirborne(c, { held: 0, pressed: 0 }, T0);
  assert.equal(c.worldX, x0);
});

// ---- Platforming: C668 launch override, SANITY (Inference High) ----
test('platforming/SANITY-C668-launch-override', () => {
  const p = freshPlayer();
  p.contactClass08Latch = 1;
  P.beginAirborne(p, { jumpTier: 1, flightTier: 0 });
  assert.equal(p.verticalSpeedInteger, 2); // nonzero C668 forces C27D=2.
  const q = freshPlayer();
  P.beginAirborne(q, { jumpTier: 1, flightTier: 0 });
  assert.equal(q.verticalSpeedInteger, 3); // zero latch keeps tier value.
});

// ---- Overworld: RNG vectors hand-traced through $0BBF instruction semantics ----
test('overworld/rng-vectors', () => {
  const cases = [
    [{ lo: 0x34, hi: 0x12 }, { lo: 0x9c, hi: 0x6a }, 0x6a],
    [{ lo: 0x00, hi: 0x00 }, { lo: 0x00, hi: 0x00 }, 0x00],
    [{ lo: 0x00, hi: 0xb0 }, { lo: 0x00, hi: 0x10 }, 0x10],
    [{ lo: 0x00, hi: 0x60 }, { lo: 0x00, hi: 0x20 }, 0x20],
    [{ lo: 0x00, hi: 0x10 }, { lo: 0x00, hi: 0x30 }, 0x30],
  ];
  for (const [init, want, ret] of cases) {
    const rng = { ...init };
    assert.equal(O.stepRng(rng), ret);
    assert.deepEqual(rng, want);
  }
});

// ---- Overworld: counter gate + reset timing ($6FA0-$6FB5) ----
test('overworld/gate-before-8', () => {
  const s = { encounterStepCounter: 7, rng: { lo: 0, hi: 0 }, frameCounter: 0, playerX: 0, playerY: 0 };
  assert.equal(O.maybeStartEncounter(s), null);
  assert.equal(s.encounterStepCounter, 7); // untouched below threshold.
});

test('overworld/gate-fail-resets-counter', () => {
  const s = { encounterStepCounter: 8, rng: { lo: 0, hi: 0 }, frameCounter: 1, playerX: 0, playerY: 0 };
  assert.equal(O.maybeStartEncounter(s), null); // (0+1)&3 != 0.
  assert.equal(s.encounterStepCounter, 0); // reset precedes the gate.
});

// ---- Overworld: scene assignment, variant offsets, DF2D clear ----
test('overworld/encounter-scene-variants', () => {
  const mk = (hi) => ({ encounterStepCounter: 8, rng: { lo: 0, hi }, frameCounter: 0, playerX: 0, playerY: 0 });
  // Stepped hi values $00/$10/$20/$30 give selectors 0/1/2/3 -> offsets 0/0/1/2.
  assert.equal(O.maybeStartEncounter(mk(0x00)), 0x1b);
  assert.equal(O.maybeStartEncounter(mk(0xb0)), 0x1b);
  assert.equal(O.maybeStartEncounter(mk(0x60)), 0x1c);
  const s4 = mk(0x10);
  assert.equal(O.maybeStartEncounter(s4), 0x1d);
  assert.equal(s4.encounterObjectId, 0); // ROM clears DF2D.
});

test('overworld/region-zero-suppresses', () => {
  const s = { encounterStepCounter: 8, rng: { lo: 0, hi: 0 }, frameCounter: 0, playerX: 0x0400, playerY: 0 };
  assert.equal(O.maybeStartEncounter(s), null); // col 4 base is 0.
});

// ---- Overworld: blocked terrain/entity, occupancy flags ($6F55-$709F) ----
test('overworld/blocked-terrain-no-step', () => {
  const s = { overworldCell: 0x00, heldButtons: O.BTN.RIGHT, encounterStepCounter: 3, moveDirection: 0 };
  const r = O.tryReserveOverworldStep(s, { 0: 0, 1: 1 }, []);
  assert.equal(r.kind, 'blocked-terrain');
  assert.equal(s.encounterStepCounter, 3);
  assert.equal(s.overworldCell, 0x00);
});

test('overworld/blocked-entity', () => {
  const s = { overworldCell: 0x00, heldButtons: O.BTN.RIGHT, encounterStepCounter: 3, moveDirection: 0 };
  const r = O.tryReserveOverworldStep(s, { 0: 0, 1: 0 }, [{ active: true, overworldCell: 0x01 }]);
  assert.equal(r.kind, 'blocked-entity');
  assert.equal(s.encounterStepCounter, 3);
});

test('overworld/flagged-entity-skipped', () => {
  const s = { overworldCell: 0x00, heldButtons: O.BTN.RIGHT, encounterStepCounter: 3, moveDirection: 0, playerX: 0, playerY: 0 };
  const r = O.tryReserveOverworldStep(s, { 0: 0, 1: 0 }, [{ active: true, flagBit3: true, overworldCell: 0x01 }]);
  assert.equal(r.kind, 'step-started'); // flag bits 3/4 set: not an occupant.
  assert.equal(s.overworldCell, 0x01);
  assert.equal(s.encounterStepCounter, 4);
  assert.equal(s.moveDirection, 1);
  assert.equal(s.facingRight, true);
  assert.equal(s.moveFramesRemaining, 16);
});

// ---- Overworld: 16-frame one-pixel walk ($1DA3 table) ----
test('overworld/walk-animation', () => {
  const s = { moveDirection: 1, playerX: 100, playerY: 50, moveFramesRemaining: 16 };
  for (let f = 0; f < 16; f++) assert.equal(O.tickOverworldStepAnimation(s), true);
  assert.equal(s.playerX, 116);
  assert.equal(s.moveDirection, 0);
  assert.equal(O.tickOverworldStepAnimation(s), false);
});

// ---- Animation: established renderer behavior (B2:$6A1F; rendering.md) ----
test('animation/set-reset', () => {
  const o = { animationId: 2, animationTimer: 5, animationFrameIndex: 1 };
  A.setAnimation(o, 2);
  assert.deepEqual([o.animationTimer, o.animationFrameIndex], [5, 1]); // same ID: no-op.
  A.setAnimation(o, 3);
  assert.deepEqual([o.animationId, o.animationTimer, o.animationFrameIndex], [3, 0, 0]);
});

test('animation/sequence-advance', () => {
  const o = { animationTimer: 0, animationFrameIndex: 0, animationFlags: 0 };
  const anim = { duration: 3, frames: ['a', 'b'] };
  assert.equal(A.tickAnimation(o, anim), 'a');
  assert.equal(A.tickAnimation(o, anim), 'a');
  assert.equal(A.tickAnimation(o, anim), 'b'); // timer hits duration: advance.
  assert.equal(A.tickAnimation(o, anim), 'b');
  assert.equal(A.tickAnimation(o, anim), 'b');
  assert.equal(A.tickAnimation(o, anim), 'a'); // ordinary sequences loop.
});

test('animation/SANITY-oneshot-completion', () => {
  // SANITY: bit6/bit7 completion semantics are analyst-inferred (render-flags
  // hypothesis), not directly traced end-to-end. Pins implementation only.
  const o = { animationTimer: 0, animationFrameIndex: 0, animationFlags: 0x40 };
  const anim = { duration: 1, frames: ['a', 'b'] };
  assert.equal(A.tickAnimation(o, anim), 'b');
  assert.equal(A.tickAnimation(o, anim), 'b'); // clamped on last frame...
  assert.ok(o.animationFlags & 0x80); // ...with the completion marker set.
});

test('animation/compose-mirror', () => {
  const frame = { pieces: [{ tile: 7, attr: 0x01 }] };
  const layout = [{ y: 4, x: 6 }];
  const plain = A.composeFrame({ flags: 0x00, screenX: 0x50, screenY: 0x40 }, frame, layout);
  assert.deepEqual(plain, [{ y: 0x46, x: 0x56, tile: 7, attr: 0x01 }]);
  const mirrored = A.composeFrame({ flags: 0x20, screenX: 0x50, screenY: 0x40 }, frame, layout);
  // -x-8 mirror; flags bit5 also feeds the attr mask (0x20 ^ piece attr).
  assert.deepEqual(mirrored, [{ y: 0x46, x: 0x42, tile: 7, attr: 0x21 }]);
});

// Ordinary-$01 fixtures: geometry notebook §7; coordinates include Y high byte 1.
test('collision/support-floor-snap', () => {
  assert.equal(typeof C.resolveOrdinarySolids, 'function');
  const p = freshPlayer();
  Object.assign(p, { worldX: 0x38, y: 0x1d6, previousY: 0x1d5,
    movementFlags: P.MOVE.AIRBORNE, airPhase: P.AIR.PRE_FLIGHT_FALL });
  C.resolveOrdinarySolids(p, { held: 0 }, (x, y) =>
    Math.floor(y / 16) === 0x1d && [2, 3].includes(Math.floor(x / 16)), T0);
  assert.equal(p.y, 0x1d5);
  assert.equal(p.collisionFlags, 1);
  assert.equal(p.movementFlags, P.MOVE.AIRBORNE); // next movement update lands
  assert.equal(p.previousY, 0x1d5); // caller saves only after the complete update
});

test('collision/head-ceiling-correction', () => {
  const p = freshPlayer();
  Object.assign(p, { worldX: 0x38, y: 0x1c4, previousY: 0x1c6,
    movementFlags: P.MOVE.AIRBORNE });
  C.resolveOrdinarySolids(p, { held: 0 }, (x, y) =>
    Math.floor(x / 16) === 2 && Math.floor(y / 16) === 0x1a, T0);
  assert.equal(p.y, 0x1cb); // modulo correction +7, not tight AABB stop
  assert.equal(p.movementFlags, 0);
  assert.equal(p.verticalSpeedInteger, 0); // correction leaves speed unchanged
});

test('collision/right-wall-upper-cling', () => {
  const p = freshPlayer();
  Object.assign(p, { worldX: 0x61, y: 0x1c3, previousY: 0x1c3,
    movementFlags: P.MOVE.AIRBORNE, wallJumpForcedDirection: 2 });
  C.resolveOrdinarySolids(p, { held: P.BTN.RIGHT }, (x, y) =>
    Math.floor(x / 16) === 6 && Math.floor(y / 16) === 0x1a, T0);
  assert.equal(p.worldX, 0x60);
  assert.equal(p.movementFlags, P.MOVE.WALL_CLING);
  assert.equal(p.collisionFlags, 0x40);
  assert.equal(p.facingRight, false);
  assert.equal(p.wallJumpForcedDirection, 0);
});

// Copied independent expectations from the supplied 21-case executed matrix.
// Cell indices are local C1xx offsets; the fixture's Y high byte is 1.
for (const [name, x, y, previousY, state, phase, held, cells, disabled, suppressed,
  outX, outY, outState, outFlags] of [
  ['floor-fall', 0x38,0xd6,0xd5,2,1,0,[0xd2,0xd3],false,false,0x38,0xd5,2,1],
  ['floor-ascent-skips', 0x38,0xd6,0xd5,2,0,0,[0xd2,0xd3],false,false,0x38,0xd6,2,0],
  ['floor-flight', 0x38,0xd6,0xd5,2,2,0,[0xd2,0xd3],false,false,0x38,0xd5,2,1],
  ['floor-left-only', 0x38,0xd8,0xd5,0,0,0,[0xd2],false,false,0x38,0xd5,0,1],
  ['floor-right-only', 0x38,0xd8,0xd5,0,0,0,[0xd3],false,false,0x38,0xd5,0,1],
  ['head-left', 0x38,0xc4,0xc6,2,0,0,[0xa2],false,false,0x38,0xcb,0,0],
  ['head-right', 0x38,0xc4,0xc6,2,0,0,[0xa3],false,false,0x38,0xcb,0,0],
  ['head-flight', 0x38,0xc4,0xc6,2,2,0,[0xa2],false,false,0x38,0xcb,0,0],
  ['head-fall-skips', 0x38,0xc4,0xc6,2,1,0,[0xa2],false,false,0x38,0xc4,2,0],
  ['right-upper', 0x61,0xc3,0xc3,2,0,0x10,[0xa6],false,false,0x60,0xc3,8,0x40],
  ['right-middle', 0x61,0xc3,0xc3,2,1,0x10,[0xb6],false,false,0x60,0xc3,8,0x40],
  ['lower-only-blocks', 0x61,0xc6,0xc6,2,1,0x10,[0xc6],false,false,0x60,0xc6,2,0x40],
  ['left-middle', 0x6f,0xc3,0xc3,2,1,0x20,[0xb5],false,false,0x70,0xc3,8,0x40],
  ['ground-wall-block', 0x61,0xc3,0xc3,1,0,0x10,[0xa6],false,false,0x60,0xc3,1,0x40],
  ['flight-latch', 0x61,0xc3,0xc3,2,2,0x10,[0xa6],false,false,0x60,0xc3,8,0x40],
  ['no-direction-no-side', 0x61,0xc3,0xc3,2,1,0,[0xa6],false,false,0x61,0xc3,2,0],
  ['disabled-blocks-no-cling', 0x61,0xc3,0xc3,2,1,0x10,[0xa6],true,false,0x60,0xc3,2,0x40],
  ['suppressed-blocks-no-cling', 0x61,0xc3,0xc3,2,1,0x10,[0xa6],false,true,0x60,0xc3,2,0x40],
  ['cling-no-new-contact', 0x60,0xc3,0xc3,8,1,0x10,[0xa6,0xb6],false,false,0x60,0xc3,8,0],
  ['cling-without-wall', 0x60,0xc3,0xc3,8,1,0,[],false,false,0x60,0xc3,8,0],
  ['saved-Y-discriminator', 0x61,0xd3,0xc3,2,1,0x10,[0xa6],false,false,0x60,0xd3,8,0x40],
]) test(`collision/matrix-${name}`, () => {
  const p = freshPlayer();
  Object.assign(p, { worldX: x, y: y + 0x100, previousY: previousY + 0x100,
    movementFlags: state, airPhase: phase, controlDisabled: disabled,
    wallLatchSuppressed: suppressed, flightRemaining: 7,
    verticalSpeedInteger: 2, horizontalPhase: 0x80 });
  C.resolveOrdinarySolids(p, { held }, (px, py) =>
    py >= 0x100 && py < 0x200 && cells.includes(
      (Math.floor(py / 16) - 16) * 16 + Math.floor(px / 16)), T0);
  assert.deepEqual([p.worldX,p.y,p.movementFlags,p.collisionFlags],
    [outX,outY + 0x100,outState,outFlags]);
  assert.equal(p.facingRight, outState === 8 && state !== 8 ? false : true);
  assert.equal(p.previousY, previousY + 0x100);
  assert.equal(p.verticalSpeedInteger, 2); // even head correction retains speed
  assert.equal(p.horizontalPhase, 0x80);
  assert.equal(p.flightRemaining, outFlags & 1 ? 63 : 7);
});

test('collision/sustained-cling-retains-contact-without-probes', () => {
  const p = freshPlayer();
  Object.assign(p, { movementFlags: 8, collisionFlags: 0x40, previousY: 100, y: 100 });
  C.resolveOrdinarySolids(p, { held: P.BTN.RIGHT }, () => {
    assert.fail('ordinary cling must skip head, side and support probes');
  }, T0);
  assert.deepEqual([p.y,p.movementFlags,p.collisionFlags], [100,8,0x40]);
});

test('animation/player-ROM-sequences', () => {
  assert.equal(A.PLAYER_ANIMATIONS[0], A.PLAYER_ANIMATIONS[1]);
  for (const [id, duration, frames] of [
    [1,255,[1]], [2,8,[3,2,3,4]], [3,255,[5]],
    [4,6,[6,7,8,7]], [5,6,[12,13,14,13]],
    [6,3,[9,10,11,10]], [7,3,[24,13,25,13]],
    [8,255,[15]], [9,255,[16]],
  ]) {
    const anim = A.PLAYER_ANIMATIONS[id];
    assert.deepEqual(anim, { duration, frames });
    const o = { animationTimer: 0, animationFrameIndex: 0, animationFlags: 0 };
    for (let i = 0; i < frames.length; i++) {
      for (let t = 1; t < duration; t++) assert.equal(A.tickAnimation(o, anim), frames[i]);
      assert.equal(A.tickAnimation(o, anim), frames[(i + 1) % frames.length]);
    }
    assert.equal(o.animationTimer, 0);
    assert.equal(o.animationFrameIndex, 0);
  }
});

test('collision/head-correction-before-current-support', () => {
  const p = freshPlayer();
  Object.assign(p, { worldX: 0x38, y: 0x1c4, previousY: 0x1c6, movementFlags: 2 });
  const reads = [];
  C.resolveOrdinarySolids(p, { held: 0 }, (x, y) => {
    reads.push([x,y]);
    return Math.floor(x / 16) === 2 && [0x1a,0x1c].includes(Math.floor(y / 16));
  }, T0);
  assert.deepEqual(reads, [[0x2a,0x1ae],[0x29,0x1c6],[0x36,0x1c6]]);
  assert.deepEqual([p.y,p.movementFlags,p.collisionFlags], [0x1c5,0,1]);
});

test('collision/side-correction-before-current-X-support', () => {
  const p = freshPlayer();
  Object.assign(p, { worldX: 0x6f, y: 0x1d8, previousY: 0x1c3 });
  C.resolveOrdinarySolids(p, { held: P.BTN.RIGHT }, (x, y) =>
    (Math.floor(x / 16) === 6 && Math.floor(y / 16) === 0x1a) ||
    (Math.floor(x / 16) === 5 && Math.floor(y / 16) === 0x1d), T0);
  assert.deepEqual([p.worldX,p.y,p.collisionFlags], [0x60,0x1d5,0x41]);
});

test('collision/suppression-is-cleared-after-pass', () => {
  const p = freshPlayer();
  Object.assign(p, { worldX: 0x61, y: 0x1c3, previousY: 0x1c3,
    movementFlags: 2, wallLatchSuppressed: true });
  C.resolveOrdinarySolids(p, { held: P.BTN.RIGHT }, () => false, T0);
  assert.equal(p.wallLatchSuppressed, false);
});

console.log(`\n${passed}/${total} tests passed`);
if (passed !== total) process.exit(1);
