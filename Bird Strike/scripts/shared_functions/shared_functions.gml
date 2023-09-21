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
	obj_alarms.alarm[0] = 3 * global.room_speed
	
	// Clear birbs, bombs, shots etc
	
	var _i, _inst
	
	for (_i = 0; _i < instance_number(obj_bonus); _i++) {
		_inst = instance_find(obj_bonus, _i)
		instance_destroy(_inst) // TODO: Fix this
	}
	
	for (_i = 0; _i < instance_number(obj_pigeon); _i++) {
		_inst = instance_find(obj_pigeon, _i)
		instance_destroy(_inst)
	}

	for (_i = 0; _i < instance_number(obj_bomb); _i++) {
		_inst = instance_find(obj_bomb, _i)
		instance_destroy(_inst)
	}

	for (_i = 0; _i < instance_number(obj_shot); _i++) {
		_inst = instance_find(obj_shot, _i)
		instance_destroy(_inst)
	}


	// Reposition the aircraft and reset the graves
	var _i_enemy
	var _i_grave
	for (var _i = 0; _i < 6; _i++) {
		_i_enemy = instance_find(obj_enemy, _i)
		_i_enemy.x = 92 + ( 80 * _i)
		_i_enemy.y = 64
		_i_enemy.speed = 0
		_i_enemy.visible = true
				
		// re-hide the graves.
		if (_i <= 4) {
			_i_grave = instance_find(obj_grave, _i)
			_i_grave.visible = false
		}
	}
	
	// Randomise the enemies
	randomise_enemies()
	
	// increment wave number, ie enemy style. Loop back to the beginning after wave 4
	global.wave++
	if ( global.wave > 4 ) {
		global.wave = 1
	}
	
	// increment level number (for difficulty)
	global.level++
	
	// Set the appropriate enemy sprite
	obj_enemy.sprite_index = asset_get_index("sEnemy" + string(global.wave))

	// Reset the enemy count
	global.enemy = 0

	
	// Reset the pigeon bonus
	clear_stave()
	
	// Reposition the player
	obj_player.x = (room_width / 2) - (obj_player.sprite_width / 2)
	
	// Play the music
	audio_play_sound(snd_new_level, 1, false, global.gain)
	
	// Let's go!
	global.game_in_play = true
	global.bombs_active = true
	global.player_active = true
	
}

function pigeon_hit() {
	
	// dead pigeons don't cheep
	obj_alarms.alarm[2] = -1
	
	// play the pigeon death sound
	audio_play_sound(snd_pigeon_hit, 1, false, global.gain)
	
	// Explode the pigeon(!)
	var _i, _i_pigeon
	for (_i = 0; _i < instance_number(obj_pigeon) ; _i++) {
		_i_pigeon = instance_find(obj_pigeon, _i)
		instance_create_layer(_i_pigeon.x, _i_pigeon.y, "Instances", obj_deadgeon)
		instance_destroy(_i_pigeon)
	}

	// Award 100 juicy pigeon-points
	global.score += 10
	
	// Add a note to the stave
	global.stave[global.wave][global.note].image_alpha = 1.0
	global.note++


	// Check for pigeon bonus
	if (global.note == array_length(global.stave[global.wave])) {
		// Play bonus tune(s)
		global.game_in_play = false
		global.enemy_active = false
		global.bombs_active = false
		global.player_active = false
		obj_alarms.alarm[5] = 5.5 * global.room_speed
		
		switch (global.wave) {
			case 1:
				audio_play_sound(snd_tune_1, 1, false, global.gain)
				break
			case 2:
				audio_play_sound(snd_tune_2, 1, false, global.gain)
				break
			case 3:
				audio_play_sound(snd_tune_3, 1, false, global.gain)
				break
			case 4:
				instance_create_layer(120, 0, "Instances_BonusStaves", obj_staves)
				obj_alarms.alarm[5] = 22.5 * global.room_speed
				audio_play_sound(snd_tune_all, 1, false, global.gain)
				break
		}
		
		// Add pigeon bonus
		/*var _added = 0
		audio_play_sound(snd_bonus, 1, false, global.gain)
		while(audio_is_playing(snd_bonus)) {
			if (_added < 150) {
				global.score += 1
				_added += 1
			}
		}
		next_level() */
	}


}

function flash_screen(_frames) {
	audio_play_sound(snd_player_hit, 1, false, global.gain)
	var _flash_layer = layer_get_id("Flash")
	layer_set_visible(_flash_layer, true)
	obj_alarms.alarm[1] = _frames // set unflash timer
}

function create_instances() {

	for  (var _i = 0; _i < 6; _i++) {
		global.inst_enemy[_i] = instance_create_layer(92 + (_i * 80), 64, "Instances", obj_enemy)
	}
	
}

function randomise_enemies() {

	// Randomise the enemies
	
	var _swap1
	var _swap2
	var _swap_temp
	
	for (var _i = 0; _i < 100; _i++) {
	
		_swap1 = instance_find(obj_enemy, irandom(instance_number(obj_enemy)-1 ))
		_swap2 = instance_find(obj_enemy, irandom(instance_number(obj_enemy)-1 ))
		
		_swap_temp = _swap1.x
		_swap1.x = _swap2.x
		_swap2.x = _swap_temp
		
	}

}

/*
function unused_find_instance_example {
for (var i = 0; i < instance_number(obj_Enemy); ++i;)
{
    enemy[i] = instance_find(obj_Enemy,i);
}
}
*/
