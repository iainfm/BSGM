/// @description Fly pigeon

// Stop the pigeon!
if (!global.pigeon_active) {
	if (speed != 0) {
		global.old_pigeon_speed = speed
	}
	speed = 0
	image_index = 1
}
else {
	if (global.old_pigeon_speed != 0) {
		speed = global.old_pigeon_speed
	}
}

// Adios the pigeon when its flight ends
if (x > room_width) or (x < 0) {
	obj_alarms.alarm[2] = -1
	instance_destroy()
}



