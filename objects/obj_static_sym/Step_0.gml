/* 
 * GNU General Public License v3.0+
 * (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)
 */

/// @description Move orb when the target position is set

var dt = delta_time / 1000000;

var dist = point_distance(x, y, targetX, targetY);
if (dist > 1) {
  move_towards_point(targetX, targetY, moveSpeed * dt);
} else if (speed > 0) {
  speed = 0;
  x = targetX;
  y = targetY;
}