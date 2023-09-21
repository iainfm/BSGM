/// @description Fly pigeon

// Stop the pigeon!
if (!global.pigeon_active) {
	speed = 0
}

// Adios the pigeon when its flight ends
if (x > room_width) or (x < 0) {
	instance_destroy()
}



