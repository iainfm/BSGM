/// @description Fly enemy
// Move the enemy sprite that's visible

var _current_enemy
var _rmax = 15

if iEnemy1.visible {
	_current_enemy = iEnemy1
} else if iEnemy2.visible {
	_current_enemy = iEnemy2
} else if iEnemy3.visible {
	_current_enemy = iEnemy3
} else if iEnemy4.visible {
	_current_enemy = iEnemy4
} else if iEnemy5.visible {
	_current_enemy = iEnemy5
} else if iEnemy6.visible {
	_current_enemy = iEnemy6
} // else end of level - throws an exception at the moment

// Descend the enemy; loop if it gets to the bottom of the room
_current_enemy.y += _current_enemy.sprite_height / 48
if _current_enemy.y > room_height {
	_current_enemy.y = 0
}
	
// Zero in on the player
if _current_enemy.x < ( iPlayer.x - _current_enemy.sprite_width) {
	_current_enemy.speed = 4
}
else if _current_enemy.x > ( iPlayer.x + _current_enemy.sprite_width) {
	_current_enemy.speed = -4
}
/* else {
	// Player X and Enemy X are equal
	var _drand = random(1)
	if _drand > 0.5 {
		_current_enemy.speed = 4
	}
	else {
		_current_enemy.speed = -4
	}
}*/
	
// Check left and right bounds
if _current_enemy.x < 0 {
	_current_enemy.speed = 4
}
else if _current_enemy.x > room_width - _current_enemy.sprite_width {
	_current_enemy.speed = -4
}

// Deal with edge cases

if _current_enemy.speed = 0 {
	_current_enemy.speed = 4
}
	
// Add some randomness as per the original

if random(_rmax) == _rmax {
	_current_enemy.speed = -1 * _current_enemy.speed
}
