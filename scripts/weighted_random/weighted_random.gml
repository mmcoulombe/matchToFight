/// @description 
/// @param numbers
/// @param weight

var numbers = argument0;
var weight = argument1;

var weightSum = 0;
for (var i = 0; i < weight.length; ++i) {
  weightSum += weight[i];
}

var rnd = irandom(weightSum);

for (var i = 0; i < numbers.length; ++i) {
  if (rnd < weight[i]) {
    return numbers[i];
  }
  rnd -= weight[i];
}
