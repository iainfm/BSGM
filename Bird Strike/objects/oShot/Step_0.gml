/// @description Insert description here
// You can write your code in this editor
if visible = true {
	y = y - ( sprite_height / 2 )

	// Check whether ceiling has been reached
	// TODO: Figure out the 112 programmatically
	if (y <= 112 ) {
		// y = room_height - sprite_height - oPlayer.sprite_height
		visible = false
		// TODO: visible = false and other things
	}
}

