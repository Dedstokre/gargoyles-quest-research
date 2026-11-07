/* Gargoyle's Quest - clean high-level model of the reconstructed overworld core.
   Analyst-inferred names. This is a behavioral translation, not original source.
   Main evidence: fixed bank $1D15-$1DEC, bank 1 $6F55-$70D1, RNG $0BBF-$0BE8.
*/

export const BTN = { A:0x01, B:0x02, SELECT:0x04, START:0x08, RIGHT:0x10, LEFT:0x20, UP:0x40, DOWN:0x80 };

// Bank 1 $70D2: five coarse Y bands x eight coarse X bands.
export const ENCOUNTER_REGION_BASE = [
  [0x1B,0x1B,0x1B,0x1B,0,0,0,0],
  [0x1B,0x1B,0x1B,0x1B,0,0,0,0],
  [0x19,0x19,0x1B,0x1C,0,0,0,0],
  [0x19,0x19,0x1B,0x1C,0x1C,0,0,0],
  [0x19,0x19,0x19,0x1C,0x1C,0,0,0],
];

// Fixed bank $0BBF. Returns the new high byte, matching A on RET.
// Provenance: byte-exact routine cross-checked against the TAS RNG audit
// (private source citation: references/tasvideos/audit/rng_crosscheck.md, not bundled):
// next=(3*old+256*oldLo)%65536.
// Note the routine also overwrites the $DF0C/D scratch copy each call; this model
// tracks only the persistent $DF0A/B state.
export function stepRng(rng) {
  const oldLo = rng.lo & 0xFF;
  const oldHi = rng.hi & 0xFF;
  const tripleLo = oldLo * 3;
  const lo = tripleLo & 0xFF;
  const carry = tripleLo >>> 8;
  const hiOfTriple = (oldHi * 3 + carry) & 0xFF;
  const hi = (hiOfTriple + oldLo) & 0xFF;
  rng.lo = lo;
  rng.hi = hi;
  return hi;
}

// Called when no 16-frame step animation is already running. Timing nuance: the ROM
// performs this check on an idle update after the eighth accepted step completes
// (B1:$6FA0-$6FB5), not on a ninth step; the counter increments only after terrain
// and entity occupancy validation succeed ($709F). This model preserves both orderings.
export function maybeStartEncounter(s) {
  if (s.encounterStepCounter < 8) return null;
  s.encounterStepCounter = 0;

  const r = stepRng(s.rng);
  if (((r + s.frameCounter) & 3) !== 0) return null; // 1-in-4 gate if low bits are uniform.

  const row = (s.playerY >>> 8) & 0x0F;
  const col = (s.playerX >>> 8) & 0x0F;
  if (row >= 5 || col >= 8) return null;
  const base = ENCOUNTER_REGION_BASE[row][col];
  if (base === 0) return null;

  const selector = (s.rng.hi >>> 4) & 3;
  const variantOffset = selector === 0 ? 0 : selector - 1; // 0,0,1,2 for selectors 0,1,2,3
  const battleSceneId = base + variantOffset;
  s.sceneId = battleSceneId;
  s.encounterObjectId = 0; // ROM clears DF2D here.
  return battleSceneId;
}

function destinationCell(cell, held) {
  const row = (cell >>> 4) & 0x0F;
  const col = cell & 0x0F;
  if (held & BTN.DOWN)  return (((row + 1) & 0x0F) << 4) | col;
  if (held & BTN.UP)    return (((row - 1) & 0x0F) << 4) | col;
  if (held & BTN.LEFT)  return (row << 4) | ((col - 1) & 0x0F);
  if (held & BTN.RIGHT) return (row << 4) | ((col + 1) & 0x0F);
  return null;
}

// Simplified normal-walking branch of bank 1 $6F55. Special event-tile semantics are intentionally
// left as callbacks because their quest-specific meanings are not yet identified.
export function tryReserveOverworldStep(s, mapCells, entitySlots, onSpecialTile = null) {
  const encounter = maybeStartEncounter(s);
  if (encounter !== null) return { kind:'encounter', sceneId:encounter };

  // Note: the ROM records blocked/special outcomes in C579 (moveBlockedOrEvent) and
  // returns before movement; this model surfaces them as return kinds instead and does
  // not track C579 in state. Deliberately comment-level: C579 bit semantics are partial.
  const currentTileCode = mapCells[s.overworldCell] ?? 0;
  if (onSpecialTile) {
    const special = onSpecialTile(currentTileCode, s);
    if (special) return special;
  }

  const dest = destinationCell(s.overworldCell, s.heldButtons);
  if (dest === null) return { kind:'idle' };
  if ((mapCells[dest] ?? 0) === 1) return { kind:'blocked-terrain' };

  for (const e of entitySlots) {
    if (!e.active || e.flagBit3 || e.flagBit4) continue;
    if (e.overworldCell === dest) return { kind:'blocked-entity', entity:e };
  }

  s.overworldCell = dest;          // destination is committed before the visual walk finishes
  s.encounterStepCounter = (s.encounterStepCounter + 1) & 0xFF;

  if (s.heldButtons & BTN.RIGHT) { s.facingRight=true;  s.moveDirection=1; }
  else if (s.heldButtons & BTN.LEFT) { s.facingRight=false; s.moveDirection=2; }
  else if (s.heldButtons & BTN.UP) s.moveDirection=3;
  else s.moveDirection=4;
  s.moveFramesRemaining = 16;
  return { kind:'step-started', direction:s.moveDirection };
}

// Fixed bank $1DA3 table: exactly one world pixel per frame for 16 frames.
export function tickOverworldStepAnimation(s) {
  if (!s.moveDirection) return false;
  if (s.moveDirection === 1) s.playerX++;
  if (s.moveDirection === 2) s.playerX--;
  if (s.moveDirection === 3) s.playerY--;
  if (s.moveDirection === 4) s.playerY++;
  s.moveFramesRemaining--;
  if (s.moveFramesRemaining === 0) s.moveDirection = 0;
  return true;
}
