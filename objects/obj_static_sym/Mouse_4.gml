/* 
 * GNU General Public License v3.0+
 * (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)
 */

/// @description Action to do when you press on an orb

var oldSym = obj_match3_ctrl.selectedSym;

// a sym is selected, let's check if it's a valid move
if (oldSym != noone) {
  var dist = point_distance(oldSym.x, oldSym.y, x, y);
  var deg = point_direction(oldSym.x, oldSym.y, x, y);

  if (deg % 90 == 0 && dist == 64) {
    // set the target position to be the other orb
    show_debug_message("Allow Swap");
    oldSym.targetX = x;
    oldSym.targetY = y;
    
    targetX = oldSym.x;
    targetY = oldSym.y;
    
    // update grid information
    var tmpRow = oldSym.row;
    var tmpColumn = oldSym.column;
    
    oldSym.column = column;
    oldSym.row = row;
    
    row = tmpRow;
    column = tmpColumn;
  }

  oldSym.selected = false;
  obj_match3_ctrl.selectedSym = noone;
} else {
  obj_match3_ctrl.selectedSym = id;
  selected = true;
}