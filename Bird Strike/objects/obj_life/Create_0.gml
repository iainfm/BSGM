/// @description Initialise life counters
var _i_life

visible = false // clear all life icons...

// and light up the default amount (less one)

for (var _i = 0 ; _i < global.lives ; _i++) {
	_i_life = instance_find(obj_life, _i)
	_i_life.visible = true
}





