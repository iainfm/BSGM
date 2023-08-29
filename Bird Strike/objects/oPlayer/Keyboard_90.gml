/// @description Player movement (Left)

// Move the player left 1/4 of the sprite width (to match original)
x = x - sprite_width / 4

// Check left bound
if x < sprite_width / 2 {
	x = sprite_width / 2
}