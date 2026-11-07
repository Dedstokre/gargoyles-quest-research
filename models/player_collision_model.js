// Analyst-authored ordinary-$01 subset of B1:$4000. Analyst names, not original source.
// Observed — Very High: branches/offsets/corrections in ROM; Observed — High:
// controlled execution across ordinary-$01 fixture cases.
// readSolid(x,y) samples integer WORLD pixels in a 16x16-cell room (boolean).
// Coordinates use ROM X/Y; feet P=(worldX-8,y-5) is Inference — Very High.
// Caller moves first, resolves here, then saves previousY at the settled boundary.
// Terrain queries cover ordinary $01 solids, not special-class producers/meaning.
// Retains incoming C36A bit7: if it survives side sampling, it overrides support
// skips even in ascent/cling ($41E6). Ordinary-room callers supply bit7 clear;
// setting it does not make this a complete special-class collision model.
// No camera scroll, hazards/slopes or environment-selected sides.
import { BTN, MOVE, AIR, FLIGHT_FRAMES, latchToWall } from './platforming_model.js';

export function resolveOrdinarySolids(p, input, readSolid, upgrades) {
  p.collisionFlags &= 0xc0; // $4000 preserves prior bits6/7, rebuilds lower bits
  if ((p.movementFlags & MOVE.AIRBORNE) &&
      (p.airPhase === AIR.ASCENT || (p.airPhase & 2))) {
    if (readSolid(p.worldX - 14, p.y - 22) ||
        readSolid(p.worldX - 3, p.y - 22)) {
      p.movementFlags = 0; // $43D2 clears state, not velocity
      p.y = (p.y + ((-(p.y + 5)) & 15)) & 0xffff;
    }
  }
  // $403B: held Left wins over Right; facing alone never selects a side.
  if (!(p.movementFlags & (MOVE.WALL_CLING | 0x20))) {
    const left = !!(input.held & BTN.LEFT);
    if (left || (input.held & BTN.RIGHT)) {
      p.collisionFlags &= 0x3f; // $411F clears old side contact before sampling
      const x = p.worldX - (left ? 16 : 1);
      let blocked = false;
      for (const [i, dy] of [-22, -14, -6].entries()) {
        if (!readSolid(x, p.previousY + dy)) continue;
        blocked = true;
        if (i < 2) latchToWall(p); // lower-only blocks; upper/middle may latch
      }
      if (blocked) {
        p.collisionFlags |= 0x40;
        // Shared helpers retain screen clamps even for collision correction.
        if (left && p.screenX !== 0x98)
          p.worldX = (p.worldX + ((-p.worldX) & 15)) & 0xffff;
        if (!left && p.screenX !== 0x18)
          p.worldX = (p.worldX - (p.worldX & 15)) & 0xffff;
      }
    }
  }
  if ((p.collisionFlags & 0x80) ||
      (!(p.movementFlags & MOVE.WALL_CLING) &&
       (!(p.movementFlags & MOVE.AIRBORNE) || p.airPhase !== AIR.ASCENT))) {
    // $41FD: either edge supports; middle sample is a separate special consumer.
    const left = readSolid(p.worldX - 15, p.y - 5);
    const right = readSolid(p.worldX - 2, p.y - 5);
    if (left || right) {
      p.collisionFlags = (p.collisionFlags | 1) & 0x7f;
      p.y = (p.y - ((p.y - 5) & 15)) & 0xffff;
      p.flightRemaining = FLIGHT_FRAMES[upgrades.flightTier];
    }
  }
  p.wallLatchSuppressed = false; // $448A-$448B clears C36B before special rebuild
}
