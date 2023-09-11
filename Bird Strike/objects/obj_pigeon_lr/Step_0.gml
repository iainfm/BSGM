/// @description Fly pigeon L->R

if visible {
	x = x + sprite_width / 8
	if x > room_width {
		visible = false
		x = 0
	}
}



