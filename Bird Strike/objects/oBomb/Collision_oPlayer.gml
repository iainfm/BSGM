/// @description Player hit by bomb
var _i_life

// Clear the bomb
visible = false
y = 0
// speed = 0

// TODO: lost life sprite change, level reset etc


// Do lost life / new life things
oPlayer.x = (room_width / 2) - (oPlayer.sprite_width / 2)


if (global.lives >= 1) {
	_i_life = instance_find(oLife, global.lives - 1)
	_i_life.visible = false
}

global.lives -= 1

//TODO: if lives < 0 { end game }

if ( global.lives < 0 ) {
	global.lives = 0
	global.game_in_play = false
	}








