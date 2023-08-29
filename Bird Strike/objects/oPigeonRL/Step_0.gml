/// @description Fly pigeon R->L

// Fly the pigeon if it's visible
if visible {
	x = x - sprite_width / 8
	if x < 0 {
		visible = false
		x = room_width
	}
}