/// @description Plane hits player
// Do lost life / new life things
// TODO: move to a common subroutine

// Don't over-punish the player
if (!global.game_in_play) { exit }

var _i_life

// Suspend hostilitiess
global.game_in_play = false

// flash the screen
flash_screen(2)
iPlayer.visible = false
instance_create_layer(iPlayer.x, iPlayer.y, "Instances", obj_dead_player)

global.lives -= 1

