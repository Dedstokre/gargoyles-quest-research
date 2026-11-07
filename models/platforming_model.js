/* Gargoyle's Quest - reconstructed platforming movement model.
   This is analyst-authored pseudocode-like JavaScript derived from ROM behavior, not original source.
   Exact addresses are noted beside important branches. Several environment/collision details are
   deliberately abstracted behind collision flags.
*/

export const BTN={A:1,B:2,RIGHT:0x10,LEFT:0x20};
export const MOVE={GROUND_MOVING:1,AIRBORNE:2,SHOT_LOCK:4,WALL_CLING:8,SPECIAL:0x10};
export const AIR={ASCENT:0,PRE_FLIGHT_FALL:1,FLIGHT:2,POST_FLIGHT_FALL:4};

export const JUMP_LAUNCH=[2.5,3.0,3.5,4.0];                 // fixed $030F-$0316
export const FLIGHT_FRAMES=[63,127,255,Infinity];          // fixed $030B-$030E; DF11-1 is usable budget

function splitHalf(v){ return {i:Math.floor(v), half:(v%1?0x80:0)}; }

// Byte-faithful ascent integrator from B1:$46E2. Positive return value means pixels to move upward.
export function integrateJumpAscent(p){
  p.verticalAccelPhase=(p.verticalAccelPhase+0x40)&0xFF;
  if(p.verticalAccelPhase===0){
    p.verticalSpeedHalf ^= 0x80;
    if(p.verticalSpeedHalf!==0){
      p.verticalSpeedInteger=(p.verticalSpeedInteger-1)&0xFF;
      if(p.verticalSpeedInteger===0xFF){
        p.verticalSpeedHalf=0; p.verticalSpeedInteger=1; p.airPhase=AIR.PRE_FLIGHT_FALL;
        return 0;
      }
    }
  }
  let dy=p.verticalSpeedInteger;
  if(p.verticalSpeedHalf){
    p.verticalSubpixel=(p.verticalSubpixel+p.verticalSpeedHalf)&0xFF;
    if(p.verticalSubpixel===0) dy++;
  }
  return dy;
}

// Byte-faithful downward integrator from B1:$471D. Terminal speed is 2.5 px/frame.
export function integrateFall(p){
  p.verticalAccelPhase=(p.verticalAccelPhase+0x10)&0xFF;
  if(p.verticalAccelPhase===0){
    p.verticalSpeedHalf=(p.verticalSpeedHalf+0x80)&0xFF;
    if(p.verticalSpeedHalf===0){
      p.verticalSpeedInteger++;
      if(p.verticalSpeedInteger===3){ p.verticalSpeedInteger=2; p.verticalSpeedHalf=0x80; }
    }
  }
  let dy=p.verticalSpeedInteger;
  if(p.verticalSpeedHalf){
    p.verticalSubpixel=(p.verticalSubpixel+p.verticalSpeedHalf)&0xFF;
    if(p.verticalSubpixel===0) dy++;
  }
  return dy;
}

function sustainFlight(p,upgrades){
  if(upgrades.flightTier!==3) p.flightRemaining--;
  p.verticalSpeedInteger=0;
  p.verticalSpeedHalf=0x80;
}

// B1:$4560 common launch initializer. Support-loss/no-edge handling follows this
// initializer in updateGrounded(); the controller branch is **Observed — High** in a
// controlled C36A fixture. A naturally reached ledge and its geometry/timing remain
// unobserved, so this helper does not expose a `walkedOffEdge` shortcut.
export function beginAirborne(p, upgrades){
  const launch=splitHalf(JUMP_LAUNCH[upgrades.jumpTier]);
  p.verticalSpeedInteger=launch.i;
  p.verticalSpeedHalf=launch.half;
  p.fieldC4AC=1; // B1:$4562 writes C4AC=1 on every launch (Observed, Very High); broader meaning unresolved.
  if(p.contactClass08Latch){
    // B1:$456B-$4573: nonzero C668 (class-$08 contact latch) forces C27D=2 (Inference, High).
    p.verticalSpeedInteger=2;
  }
  p.flightRemaining=FLIGHT_FRAMES[upgrades.flightTier]; // DF12=DF11-1 refill (Observed, Very High).
  p.verticalAccelPhase=0; p.verticalSubpixel=0; p.airPhase=AIR.ASCENT; p.movementFlags=MOVE.AIRBORNE;
}

// High-level equivalent of B1:$45AB-$462F. Collision response is applied separately.
//
// Wiring note: every air branch in ROM converges through $45C1 into JP $4632 (ascent via
// $45C6, pre-flight and post-flight falls via $45E0/$462F; flight sustain updates
// horizontal per analysis, though its exact $45F2-$461E route is unrecorded this session).
// The single trailing integrateHorizontal call below reproduces that convergence: each
// applicable air branch reaches horizontal integration exactly once. `input` must be the
// post-applyWallJumpForcedInput() input ($4632 reads C261 after the $4B62 replacement).
export function updateAirborne(p,input,upgrades){
  if(p.airPhase===AIR.ASCENT){
    if(input.held & BTN.A) p.y -= integrateJumpAscent(p);
    else { p.airPhase=AIR.PRE_FLIGHT_FALL; p.verticalSpeedInteger=0; p.verticalSpeedHalf=0x80; p.y += integrateFall(p); }
  } else if(p.airPhase===AIR.PRE_FLIGHT_FALL){
    if(input.pressed & BTN.A){
      p.verticalSpeedInteger=0; p.verticalSpeedHalf=0x80; p.airPhase=AIR.FLIGHT;
      sustainFlight(p,upgrades); // $45DB->$45E2 reaches the budget decrement this update.
    }
    else p.y += integrateFall(p);
  } else if(p.airPhase===AIR.FLIGHT){
    if(input.pressed & BTN.A){
      p.airPhase=AIR.POST_FLIGHT_FALL;
      p.y += integrateFall(p); // $4618 exits to phase 4 and falls in this update.
    }
    // HYPOTHESIS (Medium): the budget-exhaustion exit at B1:$4627 never executed in any
    // Gearboy trace session. The transition below is the code-shape reading, not an
    // observed transition. Keep it separate from the observed fresh-A exit above.
    else if(p.flightRemaining===0){ p.airPhase=AIR.POST_FLIGHT_FALL; }
    else {
      sustainFlight(p,upgrades);
      // ROM does not call the fall integrator while actively flying: vertical world Y stays level here.
    }
  } else if(p.airPhase===AIR.POST_FLIGHT_FALL){
    // HYPOTHESIS: re-entry into flight from post-flight fall is untested in any trace
    // session. Retained as the code-shape reading; do not treat as established.
    if(input.pressed & BTN.A && p.flightRemaining!==0) p.airPhase=AIR.FLIGHT;
    else p.y += integrateFall(p);
  }
  // $45C1 convergence: JP $4632. Flight sustain's exact route ($45F2-$461E) is unrecorded
  // this session; horizontal handling there is retained as analysis-supported model
  // wiring, not a fresh instruction-level capture. Wall cling never reaches $4632
  // (X/Y frozen in trace) and is handled by updateWallCling, which calls no horizontal.
  integrateHorizontal(p,input,p.collisionFlags);
}

// Grounded/support dispatch from B1:$451A-$45C1. `supported` represents the prior
// collision result consumed by the controller; a natural ledge geometry/timing path
// has not been observed. The support-loss behavior below is **Observed — High** in a
// controlled C36A fixture, not a claim that a natural walk-off was demonstrated.
// Collision rebuilding remains separate and follows movement in the outer update.
export function updateGrounded(p,input,{supported=true,upgrades={jumpTier:0,flightTier:0}}={}){
  if(!supported || (input.pressed & BTN.A)){
    // B1:$451A support-loss and supported fresh-A both branch to shared $4560 init.
    beginAirborne(p,upgrades);
    if(input.pressed & BTN.A){
      updateAirborne(p,input,upgrades); // $4592 fresh edge: ascent integration now.
    } else {
      // B1:$4598-$45A9 overwrites launch speed, selects phase 4 and calls $471D now.
      p.verticalSpeedInteger=0;
      p.verticalSpeedHalf=0x80;
      p.airPhase=AIR.POST_FLIGHT_FALL;
      p.y += integrateFall(p);
      integrateHorizontal(p,input,p.collisionFlags);
    }
    return;
  }
  if(p.movementFlags & MOVE.SHOT_LOCK) return; // $452B-$452D, after support/A dispatch.
  // B1:$452E-$455D rechecks current horizontal input, independent of prior walk bit.
  if(input.held & (BTN.RIGHT|BTN.LEFT)){
    // $4549-$454B: set ground-moving; $454E-$4552 requests walk.
    p.movementFlags=MOVE.GROUND_MOVING; p.requestedAnimation=2;
  } else {
    // $453E-$4543: release-to-idle, even if prior state was walking.
    p.movementFlags=0; p.requestedAnimation=1;
  }
  integrateHorizontal(p,input,p.collisionFlags); // $4546/$455D reaches $4632.
}

// Byte-faithful horizontal integrator from B1:$4632-$46A3. The accumulator arithmetic and
// screen clamps are Observed, Very High (Gearboy trace: C0/80/40/00 sawtooth walking right,
// +4px per 6 frames). rate selects $C0 (0.75 px/frame) normally, or $80 (0.5 px/frame)
// when C36A collision/environment flags $28 are set (Inference, High; the exact
// substitution branch at $463C-$4643 is unrecorded in the live trace). Screen bounds are
// $98 (right, $466B) and $18 (left, $4698); a carry pixel at the bound is swallowed
// (accumulator already updated, world X unchanged). Carry pixels JP to the camera-scroll
// helpers $4B95/$4BD0, which are out of model scope: this function updates world coords
// only. On ordinary flat ground with no horizontal input, the traced helper returns
// without changing X or C280 (Observed, High). The distinct environment/collision
// route through $46CC remains outside this ordinary branch.
export function integrateHorizontal(p,input,collisionFlags){
  const rate=(collisionFlags & 0x28) ? 0x80 : 0xC0;
  const held=input.held;
  const movingRight=!!(held & BTN.RIGHT), movingLeft=!!(held & BTN.LEFT);
  if(!movingRight && !movingLeft){
    // Flat-ground no-direction early return; do not conflate it with the $46CC route.
    return 0;
  }
  const prev=p.horizontalPhase;
  const acc=(prev + rate) & 0xFF;
  p.horizontalPhase=acc;
  const carried=acc < prev; // Unsigned wraparound <=> ADD set carry (RET NC $4664).
  if(movingRight){
    p.facingRight=true; // B1:$465B SET 5,(HL) on C200.
    if(!carried) return 0; // RET NC $4664: no carry, no pixel.
    if(p.screenX===0x98) return 0; // RET Z $466D: clamp swallows the pixel.
    p.worldX=(p.worldX+1)&0xFFFF; // B1:$4670-$4676 low+=1 with high-byte carry.
    return 1;
  }
  p.facingRight=false; // Left path mirror ($467C-$4693 unrecorded; symmetric per analysis).
  if(!carried) return 0;
  if(p.screenX===0x18) return 0; // RET Z $469A.
  p.worldX=(p.worldX-1)&0xFFFF; // B1:$469D-$46A3 low-=1 with high-byte borrow.
  return -1;
}

// B1:$415F-$416D / $41C5-$41D3 wall-contact transition.
// Observed — Very High (code), High (fixtures/natural middle latch): caller must
// establish an eligible upper/middle ordinary-solid hit. Lower-only bit6 contact
// is not eligible. No phase/fresh-A/shot-lock veto is present in these helpers.
export function latchToWall(p){
  if(!(p.movementFlags & MOVE.AIRBORNE) || p.controlDisabled || p.wallLatchSuppressed) return false;
  p.movementFlags=MOVE.WALL_CLING;
  p.wallJumpForcedDirection=0; // stores at B1:$4165/$41CB (Observed, Very High).
  p.collisionFlags|=0x40; // OR/store $4173/$4175, $41D9/$41DB (Observed, Very High).
  p.facingRight=!p.facingRight;
  return true;
}

// B1:$4AFF-$4B61. A wall continuously replenishes flight power.
export function updateWallCling(p,input,upgrades){
  if(p.movementFlags & MOVE.SHOT_LOCK) return;
  if(!(input.pressed & BTN.A)){
    p.flightRemaining=FLIGHT_FRAMES[upgrades.flightTier];
    p.animation=8;
    return;
  }
  p.movementFlags=0;
  // If the player is not already holding away from the wall, the ROM injects A+away for 8 updates.
  const away = p.facingRight ? BTN.RIGHT : BTN.LEFT;
  if(!(input.held & away)){
    p.wallJumpForcedInputFrames=8;
    p.wallJumpForcedDirection=p.facingRight ? 2 : 1; // selector used by $4B62
  }
  beginAirborne(p,upgrades);
}

// B1:$4B62: selector 1 -> A+Left ($21), selector 2 -> A+Right ($11).
export function applyWallJumpForcedInput(p,input){
  if(!p.wallJumpForcedInputFrames) return input;
  p.wallJumpForcedInputFrames--;
  const forced=p.wallJumpForcedDirection===1 ? (BTN.A|BTN.LEFT) : (BTN.A|BTN.RIGHT);
  return {...input,held:forced};
}

// Ground/support contact: B1:$4000/$4034 and $4752.
export function onGroundContact(p,upgrades){
  p.movementFlags &= MOVE.SHOT_LOCK; // entity-platform contact path preserves only shot lock
  p.flightRemaining=FLIGHT_FRAMES[upgrades.flightTier];
}
