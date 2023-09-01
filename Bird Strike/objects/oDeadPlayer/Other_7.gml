/// @description Hide object

if visible {
	oPlayer.x = (room_width / 2) - (oPlayer.sprite_width / 2)
	oPlayer.y = room_height - oPlayer.sprite_height
	oPlayer.visible = true
	visible = false
}
