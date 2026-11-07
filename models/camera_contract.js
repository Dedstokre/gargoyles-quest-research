/* Firebrand platforming camera contract.
   Analyst-authored Godot-facing model, scoped to the tested stage-0 context.
   It models software world-camera coordinates, not asynchronous hardware SCX/SCY. */

export const CAMERA_EVIDENCE = Object.freeze({
  worldScreenRelation: 'Observed — Very High (settled runtime samples)',
  stage0Targets: 'Observed — Very High (stage-entry values and live follow)',
  horizontalFollowRuntime: 'Observed — Very High (live right-follow transition)',
  horizontalFollowDecode: 'Observed — Very High (ROM-decoded B1:$4B95-$4BFC helpers)',
  horizontalReverseRuntime: 'Observed — High (runtime reversal sample)',
  verticalFollow: 'Observed — Very High (natural tier-0 jump/fall samples)',
  playerScreenClamps: 'Observed — Very High (ROM decode); left runtime High; right endpoint not naturally reached',
  cameraAreaBounds: 'Observed — High (ROM decode only; natural bounds not reached)',
  worldCoordinateCollision: 'Observed — Very High (collision code and world probes)',
});

// Stage-0 runtime-observed target values. They are parameters, not universal defaults.
export function createCamera({x=0,y=0,targetX=0x58,targetY=0x50,minX=0,minY=0,maxX=null,maxY=null}={}){
  return {x,y,targetX,targetY,minX,minY,maxX,maxY};
}

export function screenX(worldX,camera){ return worldX-camera.x; }
export function screenY(worldY,camera){ return worldY-camera.y; }
export function screenPosition(world,camera){
  return {x:screenX(world.x,camera),y:screenY(world.y,camera)};
}

// Invoke after one integral world-X movement pixel. Direction is +1 Right / -1 Left.
// The threshold/reversal behavior is runtime-observed; optional far bounds derive from
// ROM-decoded area limits and are not covered as runtime-demonstrated endpoints here.
export function followHorizontal(camera,worldX,direction){
  const sx=screenX(worldX,camera);
  let delta=0;
  if(direction>0 && sx>camera.targetX) delta=1;
  else if(direction<0 && sx<=camera.targetX && camera.x>camera.minX) delta=-1;
  if(delta<0 && camera.x+delta<camera.minX) delta=camera.minX-camera.x;
  if(camera.maxX!==null && camera.x+delta>camera.maxX) delta=camera.maxX-camera.x;
  camera.x+=delta;
  return delta;
}

// Orchestration hook for the audited one-pixel right-wall correction only.
// It keeps camera state in the presentation layer; it does not alter world-space
// probes or claim behavior for other correction magnitudes/routines.
export function followHorizontalCorrection(camera,beforeWorldX,correctedWorldX){
  const correction=correctedWorldX-beforeWorldX;
  if(Math.abs(correction)!==1) return 0;
  return followHorizontal(camera,correctedWorldX,Math.sign(correction));
}

// Invoke after vertical world motion. Direction is -1 ascent / +1 descent.
// Stage-0 target follow is runtime-observed; the optional area bounds are decode-only.
export function followVertical(camera,worldY,direction){
  const sy=screenY(worldY,camera);
  let desired=camera.y;
  if(direction<0 && sy<=camera.targetY) desired=worldY-camera.targetY;
  else if(direction>0 && sy>camera.targetY) desired=worldY-camera.targetY;
  desired=Math.max(camera.minY,desired);
  if(camera.maxY!==null) desired=Math.min(camera.maxY,desired);
  const delta=desired-camera.y;
  camera.y=desired;
  return delta;
}
