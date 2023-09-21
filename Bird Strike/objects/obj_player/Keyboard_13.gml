/// @description Player action (fire)

if ( !global.game_in_play || !global.player_active) { exit }

if ( instance_number(obj_shot) < 2 ) {
	
	// Check if the first shot has cleared the tower
	if ( instance_number(obj_shot) == 1 ) {
		var _first_bullet = instance_find(obj_shot, 0)
		if _first_bullet.y > room_height  - ( obj_shot.sprite_height * 6 ) {
			exit
		}	
	}
	
	var _new_shot_x = obj_player.x + (obj_player.sprite_width / 2) // - (obj_shot.sprite_width)
	var _new_shot_y = room_height - obj_player.sprite_height - sprite_height
	instance_create_layer(_new_shot_x, _new_shot_y, "Instances", obj_shot)
	
}
