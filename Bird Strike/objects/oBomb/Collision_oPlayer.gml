/// @description Player hit by bomb
var _i_life

// Clear the bomb
visible = false
y = sprite_height
// speed = 0

// TODO: lost life sprite change, level reset etc


// Do lost life / new life things

// var _flash_layer = layer_get_id("Flash")
// layer_set_visible(_flash_layer, true)

oDeadPlayer.x = oPlayer.x
oDeadPlayer.y = oPlayer.y
oPlayer.y = 0 - oPlayer.sprite_height
oPlayer.visible = false
oDeadPlayer.visible = true

// if (global.lives >= 1) {
// 	_i_life = instance_find(oLife, global.lives - 1)
// 	_i_life.visible = false
// }

global.lives -= 1

//TODO: if lives < 0 { end game }

if ( global.lives < 0 ) {
	global.lives = 0
	global.game_in_play = false
	room_goto(rMenu)
	}

// layer_set_visible(_flash_layer, false)







