/// @description Enemy hit
// You can write your code in this editor
if visible {
	
	visible = false

// Get the current enemy instance
var _current_enemy = instance_find(oEnemy, global.enemy)

// Find out how accurately the enemy has been hit
	var _x_diff = ((_current_enemy.x + (_current_enemy.sprite_width / 2)) - x)
	
// If it's near the centre, they dead.
	if  abs(_x_diff) <= 2 {
		global.score += 15 // 150 points for a kill
		global.enemy += 1
		
		if global.enemy >= 6  {
			// TODO: End of level (running out of enemies will throw an exception at the moment)
		}
		
		_current_enemy.visible = false
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






