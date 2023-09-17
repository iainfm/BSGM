/// @description Enemy hit

// Get the current enemy instance
var _current_enemy = instance_find(obj_enemy, global.enemy)

// Find out how accurately the enemy has been hit
	var _x_diff = ((_current_enemy.x + (_current_enemy.sprite_width / 2)) - x)
	
// If it's near the centre, they dead.
	if  abs(_x_diff) <= 4 {
		
		audio_play_sound(snd_enemy_explosion, 1, false, global.gain)
		
		global.score += 15 // award 150 points for a kill
		
		// mark the fallen
		if (global.enemy <=4) {
			var _grave = instance_find(obj_grave, global.enemy)
			_grave.visible = true
		}
		
		// bring on the next contender
		global.enemy += 1
		
		if global.enemy >= 6  {
			global.game_in_play = false
			next_level()
		}
		else {
			// 'Disappear' the enemy
			_current_enemy.visible = false
			iExplosion.x = _current_enemy.x
			iExplosion.y = _current_enemy.y
			_current_enemy.x = 0
			_current_enemy.y = 0
			iExplosion.visible = true
		}
	}
	else {
// Only winged; award a small score
		global.score += 1	
	}
	
// if no pigeon flying, pick one at random
if (instance_number(obj_pigeon) == 0) {
	var _new_pigeon_x = 0
	var _new_pigeon_y = random_range(192, room_height - 96)
	
	switch (irandom(100) < 50) {
	
		case true:
			// Left to Right
			object_set_sprite(obj_pigeon, spr_pigeon_lr_strip5)
			break
		
		case false:
			// Right to Left
			_new_pigeon_x = room_width
			object_set_sprite(obj_pigeon, spr_pigeon_rl_strip5)
			break
		
	}

	instance_create_layer(_new_pigeon_x, _new_pigeon_y, "Instances", obj_pigeon)
	obj_alarms.alarm[2] = global.pigeon_cheep_period
}

instance_destroy()






