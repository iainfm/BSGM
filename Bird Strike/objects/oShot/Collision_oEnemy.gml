/// @description Enemy hit

if visible {
	
	visible = false // hide the bullet and move it out of the way
	speed = 0
	y = 0
	

// Get the current enemy instance
var _current_enemy = instance_find(oEnemy, global.enemy)

// Find out how accurately the enemy has been hit
	var _x_diff = ((_current_enemy.x + (_current_enemy.sprite_width / 2)) - x)
	
// If it's near the centre, they dead.
	if  abs(_x_diff) <= 4 {
		global.score += 15 // award 150 points for a kill
		
		// mark the fallen
		if (global.enemy <=4) {
			var _grave = instance_find(oGrave, global.enemy)
			_grave.visible = true
		}
		
		// bring on the next contender
		global.enemy += 1
		
		if global.enemy >= 6  {
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
// and welease wodger
	var _pigeon_lr = instance_find(oPigeonLR, 0)
	var _pigeon_rl = instance_find(oPigeonRL, 0)
	var _new_pigeon
	
// if neither pigeon flying, pick one at random
	if (_pigeon_lr.visible == false) and (_pigeon_rl.visible == false) {
		_new_pigeon = choose(_pigeon_lr, _pigeon_rl)
		_new_pigeon.y = random_range(192, room_height - 96)
		_new_pigeon.visible = true
	}
	
	
	// var _pigeon = choose(oPigeonLR, oPigeonRL)
	
	}

}






