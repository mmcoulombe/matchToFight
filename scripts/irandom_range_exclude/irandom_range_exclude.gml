/// @description
/// @param start
/// @param end
/// @param excludes

var s = argument0;
var e = argument1 - 1;
var excludes = argument2;

var l = array_length_1d(excludes)

var value = s + irandom(e - s - l);

for (var i = 0; i < l; ++i) {
  var ex = excludes[i];
  if (ex > value) {
    return value;
  }
  value++;
}

return value;