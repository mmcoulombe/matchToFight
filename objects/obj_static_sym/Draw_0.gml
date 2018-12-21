/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(x - 20, y + 5, "(" + string(row) + "," + string(column) + ")");

if (selected) {
  draw_sprite(spr_selected, -1, x, y);
}