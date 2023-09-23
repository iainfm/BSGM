/// @description Fly enemy
// Move the enemy sprite

var _current_enemy
var _rmax = 15

_current_enemy = global.inst_enemy[global.enemy]

if (!global.enemy_active) {
	_current_enemy.speed = 0
	exit
}

// Descend the enemy; loop if it gets to the bottom of the room
_current_enemy.y += _current_enemy.sprite_height / 48
if (_current_enemy.y > room_height) && global.game_in_play {
	// global.game_in_play = true
	_current_enemy.y = 0
}
	
// Zero in on the player
if _current_enemy.x < ( iPlayer.x - _current_enemy.sprite_width) {
	_current_enemy.speed = 4
}
else if _current_enemy.x > ( iPlayer.x + _current_enemy.sprite_width) {
	_current_enemy.speed = -4
}

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

// Drop a bomb
var _max_bombs = 3

if (global.level <= 2) {
	_max_bombs = 1
}
else if (global.level <= 4) {
	_max_bombs = 2
}

// TODO: Check other bombs dropped far enough before releasing another
if ( instance_number(obj_bomb) < _max_bombs ) && global.can_drop_bomb && y > 64 {

	if random(10) >= 9 and _current_enemy.y < room_height - (3 * _current_enemy.sprite_height) {
		
		var _new_bomb_x = _current_enemy.x + (_current_enemy.sprite_width / 2)
		var _new_bomb_y = _current_enemy.y + sprite_get_height(spr_bomb)
		instance_create_layer(_new_bomb_x, _new_bomb_y, "Instances", obj_bomb)
		global.can_drop_bomb = false
	}
	
}
