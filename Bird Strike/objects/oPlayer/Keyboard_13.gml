/// @description Player action (fire)

// Use iShot1 if not already in flight, but only if the other shot has cleared the tower
if iShot1.visible = false and iShot2.y < room_height - ( iShot1.sprite_height * 4 ) {
	iShot1.x = oPlayer.x + ( oPlayer.sprite_width / 2) - ( iShot1.sprite_width  )
	iShot1.y = room_height - oPlayer.sprite_height - sprite_height
	iShot1.visible = true
}

// Otherwise, use iShot2, but only if iShot1 has left the building
else if iShot2.visible = false and iShot1.y < room_height - ( iShot2.sprite_height * 4 ) {
	iShot2.x = oPlayer.x + ( oPlayer.sprite_width / 2) - ( iShot2.sprite_width  )
	iShot2.y = room_height - oPlayer.sprite_height - sprite_height
	iShot2.visible = true
}


