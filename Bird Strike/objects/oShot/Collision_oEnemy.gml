/// @description Enemy hit
// You can write your code in this editor
if visible {
	
	visible = false // hide the bullet and move it out of the way
	speed = 0
	y = 0
	// y = room.height - oPlayer.sprite_height - sprite_height // and set it back to the bottom

// Get the current enemy instance
var _current_enemy = instance_find(oEnemy, global.enemy)

// Find out how accurately the enemy has been hit
	var _x_diff = ((_current_enemy.x + (_current_enemy.sprite_width / 2)) - x)
	
// If it's near the centre, they dead.
	if  abs(_x_diff) <= 4 {
		global.score += 15 // 150 points for a kill
		global.enemy += 1
		
		if global.enemy >= 6  {
			// TODO: End of level improvements
			
			var _i_enemy
			for (var _i = 0; _i < 6; _i++) {
				_i_enemy = instance_find(oEnemy, _i)
				_i_enemy.x = 92 + ( 80 * _i)
				_i_enemy.y = 64
				_i_enemy.speed = 0
				_i_enemy.visible = true
			}
			
			global.wave += 1 // increment wave number, ie enemy style. 
			if ( global.wave > 4 ) {
				global.wave = 1
			}
			oEnemy.sprite_index = asset_get_index("sEnemy" + string(global.wave))
			//oEnemy.sprite_index = asset_get_index("sExplosion")

			global.enemy = 0
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
// and welease wodger (TODO)
	var _pigeon_lr = instance_find(oPigeonLR, 0)
	var _pigeon_rl = instance_find(oPigeonRL, 0)
	var _new_pigeon
	
// if neither pigeon flying, pick one at random
	if (_pigeon_lr.visible == false) and (_pigeon_rl.visible == false) {
		_new_pigeon = choose(_pigeon_lr, _pigeon_rl)
		_new_pigeon.y = random_range(176, room_height - 64)
		_new_pigeon.visible = true
	}
	
	
	var _pigeon = choose(oPigeonLR, oPigeonRL)
	
	}

}






