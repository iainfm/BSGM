/// @description End of player death animation

// Game over, man! Game over!
if ( global.lives < 0 ) {
	global.lives = 0
	global.game_in_play = false
	
	// Display the game over animation
	
	//var _inst_game_over = instance_find(obj_game_over, 0)
	//_inst_game_over.visible = true
	
	instance_create_layer(164, 240, "Instances", obj_game_over)
	
	// The end of the animation will take us back to the HST

	}

else {

	if visible {
		obj_player.x = (room_width / 2) - (obj_player.sprite_width / 2)
		obj_player.y = room_height - obj_player.sprite_height
		obj_player.visible = true
		instance_destroy()
	}

	audio_play_sound(snd_new_level, 1, false, global.gain)
	global.game_in_play = true
	global.enemy_active = false
	obj_alarms.alarm[8] = 2 * global.room_speed

}