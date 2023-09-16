/// @description Bomb falls
// You can write your code in this editor

if visible {
	y = y + ( sprite_height / 4 )

	if (y > room_height) {
		instance_destroy()
	}
}




