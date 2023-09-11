function clear_stave() {
	// Clear the staves and reset the bonus counters
	var _this_note
	for (var _stave = 1 ; _stave <= 4 ; _stave++) {
		for (var _note = 0 ; _note < array_length(global.stave[_stave]) ; _note++) {
			_this_note = global.stave[_stave][_note]
			_this_note.image_alpha = 0.0
		}
	}
	global.note = 0
}

function next_level() {
	// TODO: End of level improvements
	
	global.enemy_active = false
	obj_alarms.alarm[0] = 2 * global.room_speed
			
	// Reposition the aircraft and reset the graves
	var _i_enemy
	var _i_grave
	for (var _i = 0; _i < 6; _i++) {
		_i_enemy = instance_find(obj_enemy, _i)
		_i_enemy.x = 92 + ( 80 * _i)
		_i_enemy.y = 38
		_i_enemy.speed = 0
		_i_enemy.visible = true
				
		// re-hide the graves.
		if (_i <= 4) {
			_i_grave = instance_find(obj_grave, _i)
			_i_grave.visible = false
		}
	}
	
	// increment wave number, ie enemy style. Loop back to the beginning after wave 4
	global.wave ++
	if ( global.wave > 4 ) {
		global.wave = 1
	}
	
	// Set the appropriate enemy sprite
	obj_enemy.sprite_index = asset_get_index("sEnemy" + string(global.wave))

	// Reset the enemy count
	global.enemy = 0

	
	// Reset the pigeon bonus
	clear_stave()
	
	// TODO: Insert a pause here/somewhere
	
	// Play the music
	audio_play_sound(snd_new_level, 1, false, global.gain)
	
}

function pigeon_hit() {
	
	// dead pigeons don't cheep
	obj_alarms.alarm[2] = -1
	
	// play the pigeon death sound
	audio_play_sound(snd_pigeon_hit, 1, false, global.gain)
	
	// Stop and hide the pigeon
	speed = 0
	y = 0
	visible = false

	// Award 100 juicy pigeon-points
	global.score += 10
	
	// Add a note to the stave
	global.stave[global.wave][global.note].image_alpha = 1.0
	global.note++


	// Check for pigeon bonus
	if (global.note == array_length(global.stave[global.wave])) {
		// global.note = 0
		// Play bonus tune

		switch (global.wave) {
			case 1:
				audio_play_sound(snd_tune_1, 1, false, global.gain)
				while(audio_is_playing(snd_tune_1)) { }
			case 2:
				audio_play_sound(snd_tune_2, 1, false, global.gain)
				while(audio_is_playing(snd_tune_2)) { }
			case 3:
				audio_play_sound(snd_tune_3, 1, false, global.gain)
				while(audio_is_playing(snd_tune_3)) { }
			case 4:
				audio_play_sound(snd_tune_1, 1, false , global.gain)
				while(audio_is_playing(snd_tune_1)) {}
				audio_play_sound(snd_tune_2, 1, false, global.gain)
				while(audio_is_playing(snd_tune_2)) { }
				audio_play_sound(snd_tune_3, 1, false, global.gain)
				while(audio_is_playing(snd_tune_3)) { }
				audio_play_sound(snd_tune_4, 1, false, global.gain)
				while(audio_is_playing(snd_tune_4)) { }
		}
		
		// Add pigeon bonus
		var _added = 0
		audio_play_sound(snd_bonus, 1, false, global.gain)
		while(audio_is_playing(snd_bonus)) {
			if (_added < 150) {
				global.score += 1
				_added += 1
			}
		}
		next_level()
	}


}

function flash_screen(_frames) {
	audio_play_sound(snd_player_hit, 1, false, global.gain)
	var _flash_layer = layer_get_id("Flash")
	layer_set_visible(_flash_layer, true)
	obj_alarms.alarm[1] = _frames // set unflash timer
}

/*
function unused_find_instance_example {
for (var i = 0; i < instance_number(obj_Enemy); ++i;)
{
    enemy[i] = instance_find(obj_Enemy,i);
}
}
*/
