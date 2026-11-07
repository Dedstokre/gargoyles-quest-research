// Clean high-level reconstruction of the Gargoyle's Quest object animation path.
// Names are inferred; table formats and state transitions are derived from ROM code.

// Observed — Very High: B2:$5180-$51A9, rechecked against original ROM.
// State names for IDs 01-09 are Inference — Very High from controller selection.
// 00 aliases 01's pointer; trigger/use of 00 and 0A/0B remains unresolved.
export const PLAYER_ANIMATIONS = {
  0x01: { duration: 255, frames: [0x01] },
  0x02: { duration: 8, frames: [0x03,0x02,0x03,0x04] },
  0x03: { duration: 255, frames: [0x05] },
  0x04: { duration: 6, frames: [0x06,0x07,0x08,0x07] },
  0x05: { duration: 6, frames: [0x0c,0x0d,0x0e,0x0d] },
  0x06: { duration: 3, frames: [0x09,0x0a,0x0b,0x0a] },
  0x07: { duration: 3, frames: [0x18,0x0d,0x19,0x0d] },
  0x08: { duration: 255, frames: [0x0f] },
  0x09: { duration: 255, frames: [0x10] },
};
PLAYER_ANIMATIONS[0] = PLAYER_ANIMATIONS[1];

export function setAnimation(object, animationId) {
  if (object.animationId === animationId) return;
  object.animationId = animationId;
  object.animationTimer = 0;
  object.animationFrameIndex = 0;
}

export function tickAnimation(object, animation) {
  // animation = { duration, frames: [frameId, ...] }
  object.animationTimer = (object.animationTimer + 1) & 0xff;

  if (object.animationTimer < animation.duration) {
    return animation.frames[object.animationFrameIndex];
  }

  object.animationTimer = 0;
  object.animationFrameIndex++;

  if (object.animationFrameIndex >= animation.frames.length) {
    if (object.animationFlags & 0x40) {
      object.animationFlags |= 0x80; // inferred completion marker
      object.animationFrameIndex = animation.frames.length - 1;
    } else {
      object.animationFrameIndex = 0;
    }
  }

  return animation.frames[object.animationFrameIndex];
}

export function composeFrame(object, frame, layout) {
  // frame = { pieces: [{tile, attr}, ...] }
  // layout = [{y, x}, ...]
  const facingMirror = !!(object.flags & 0x20);
  const objectAttrMask = object.flags & 0xa0;

  return frame.pieces.map((piece, i) => {
    const pos = layout[i];
    const xOffset = facingMirror ? -pos.x - 8 : pos.x;

    return {
      // These are raw Game Boy OAM coordinates, before the hardware's -16/-8 display bias.
      y: (object.screenY + 2 + pos.y) & 0xff,
      x: (object.screenX + xOffset) & 0xff,
      tile: piece.tile,
      attr: objectAttrMask ^ piece.attr,
    };
  });
}
