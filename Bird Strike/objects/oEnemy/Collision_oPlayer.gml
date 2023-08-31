/// @description Plane hits player
// Do lost life / new life things
// TODO: move to a common subroutine
var _i_life

// if ( y == ( oPlayer.y + oPlayer.sprite_height) - oPlayer.sprite_height ) {
oPlayer.x = (room_width / 2) - (oPlayer.sprite_width / 2)


if (global.lives >= 1) {
	_i_life = instance_find(oLife, global.lives - 1)
	_i_life.visible = false

}

global.lives -= 1

// }

//TODO: if lives < 0 { end game }

if ( global.lives < 0 ) {
	global.lives = 0
	global.game_in_play = false
	}








