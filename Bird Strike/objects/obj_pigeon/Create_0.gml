/// @description Initialise bird

if x < room_width / 2 {
	speed = sprite_width / 8
}
else {
	speed = sprite_width / -8
}

/*

switch (irandom(100) < 50) {
	
	case true:
		// Left to Right
		object_set_sprite(obj_pigeon, spr_pigeon_lr_strip5)
		x = 0
		speed = sprite_width / 8
		break
		
	case false:
		// Right to Left
		object_set_sprite(obj_pigeon, spr_pigeon_rl_strip5)
		x = room_width
		speed = sprite_width / -8
		break
		
}

y = random_range(192, room_height - 96)
*/