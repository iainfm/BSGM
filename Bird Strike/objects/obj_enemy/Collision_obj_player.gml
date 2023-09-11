/// @description Plane hits player
// Do lost life / new life things
// TODO: move to a common subroutine

// Don't over-punish the player
if (!global.game_in_play) { exit }

var _i_life

// flash the screen
flash_screen(2)

// Suspend hostilitiess
global.game_in_play = false

obj_player.y = 0 - obj_player.sprite_height
obj_dead_player.x = obj_player.x
obj_dead_player.y = room_height - obj_player.sprite_height
obj_dead_player.visible = true

if (global.lives >= 1) {
	_i_life = instance_find(obj_life, global.lives - 1)
	_i_life.visible = false

}

global.lives -= 1
