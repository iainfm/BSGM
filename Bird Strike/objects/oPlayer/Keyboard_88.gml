/// @description  Player movement (Right)

// Move the player right 1/4 of the sprite width (to match original)
x = x + sprite_width / 4

// Check right bound
if x > room_width - ( sprite_width * 1.5 ) {
	x = room_width - ( sprite_width * 1.5 )
}