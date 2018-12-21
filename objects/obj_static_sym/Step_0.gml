/// @description Insert description here
// You can write your code in this editor

var dist = point_distance(x, y, targetX, targetY);
if (dist != 0) {
  x = lerp(x, targetX, speed);
  y = lerp(y, targetY, speed);
}