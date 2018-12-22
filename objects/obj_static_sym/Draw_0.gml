/* 
 * GNU General Public License v3.0+
 * (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)
 */

/// @description Display the orb and add the selection sprite if selected

draw_self();
draw_text(x - 20, y + 5, "(" + string(row) + "," + string(column) + ")");

if (selected) {
  draw_sprite(spr_selected, -1, x, y);
}