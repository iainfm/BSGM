/// @description Player hit by bomb
var _i_life

// Avoid any over-processing

if (!global.game_in_play) { exit }

// Suspend hostilities
global.game_in_play = false

// Clear the bomb
// visible = false
// y = sprite_height
instance_destroy()
// speed = 0

flash_screen(2)
iPlayer.visible = false
instance_create_layer(iPlayer.x, iPlayer.y, "Instances", obj_dead_player)

/*obj_dead_player.x = obj_player.x
obj_dead_player.y = obj_player.y
obj_player.y = 0 - obj_player.sprite_height
obj_player.visible = false
obj_dead_player.visible = true
*/
// if (global.lives >= 1) {
// 	_i_life = instance_find(oLife, global.lives - 1)
// 	_i_life.visible = false
// }

global.lives -= 1

//TODO: if lives < 0 { end game }
/*
if ( global.lives < 0 ) {
	global.lives = 0
	global.game_in_play = false
	room_goto(rm_menu)
	}
*/
// layer_set_visible(_flash_layer, false)







