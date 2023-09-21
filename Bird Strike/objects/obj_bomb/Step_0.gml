/// @description Bomb falls
// You can write your code in this editor

if global.bombs_active {
	y = y + ( sprite_height / 4 )

	if (y > room_height) {
		instance_destroy()
	}
}




