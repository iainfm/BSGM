/// @description Fire bullet
// You can write your code in this editor
if visible = true {
	y = y - ( sprite_height / 2 )

	// Check whether ceiling has been reached
	// TODO: Figure out the 112 programmatically
	if (y <= 112 ) {
		
		visible = false
		instance_destroy()
		// TODO: visible = false and other things
	}
}

