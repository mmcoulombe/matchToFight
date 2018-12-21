/// @description create a symbol at a specific emplacement
/// @param x
/// @param y
/// @param symType

var symX = argument0;
var symY = argument1;
var type = argument2;

var sym = instance_create_layer(symX, symY, "Symbols", obj_symbol);
with (sym) {
  image_index = type
  symType = type
}

return sym;