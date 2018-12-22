/* 
 * GNU General Public License v3.0+
 * (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)
 */

/// @description Manage the creation of the match 3 like grid

// temporary: definind the top lef location of the grid
xStart = (window_get_width() - rows * cellSize) * 0.5;
yStart = (window_get_height() - cols * cellSize) * 0.5;

// fill the grid with symbols
for (var row = 0; row < rows; ++row) {
  for (var col = 0; col < cols; ++col) {
    var px = xStart + (col * cellSize);
    var py = yStart + (row * cellSize);
    instance_create_layer(px, py, 0, obj_bgTile);
    var sym = instance_create_layer(px, py, 0, obj_static_sym);
    with (sym) {
      sym.row = row;
      sym.column = col;
    }
  }
}