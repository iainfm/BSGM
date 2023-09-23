/// @description Initialise bird

if x < room_width / 2 {
	speed = sprite_width / 8
}
else {
	speed = sprite_width / -8
}
global.old_pigeon_speed = speed