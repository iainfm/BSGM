/// @description Plane hits player
// Do lost life / new life things
// TODO: move to a common subroutine
var _i_life

oPlayer.y = 0 - oPlayer.sprite_height
oDeadPlayer.x = oPlayer.x
oDeadPlayer.y = room_height - oPlayer.sprite_height
oDeadPlayer.visible = true

if (global.lives >= 1) {
	_i_life = instance_find(oLife, global.lives - 1)
	_i_life.visible = false

}

global.lives -= 1

if ( global.lives < 0 ) {
	global.lives = 0
	global.game_in_play = false
	room_goto(rMenu)
	}








