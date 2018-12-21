/// @description Insert description here
// You can write your code in this editor
var oldSym = obj_match3_ctrl.selectedSym;

// a sym is selected, let's check if it's a valid move
if (oldSym != noone) {
  var dist = point_distance(oldSym.x, oldSym.y, x, y);
  var deg = point_direction(oldSym.x, oldSym.y, x, y);

  if (deg % 90 == 0 && dist == 64) {
    show_debug_message("Allow Swap");
    oldSym.targetX = x;
    oldSym.targetY = y;
    
    targetX = oldSym.x;
    targetY = oldSym.y;
  }

  oldSym.selected = false;
  obj_match3_ctrl.selectedSym = noone;
} else {
  obj_match3_ctrl.selectedSym = id;
  selected = true;
}