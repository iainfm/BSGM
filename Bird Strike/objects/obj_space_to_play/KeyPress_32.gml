/// @description Move to menu or main game
// draw_set_alpha(1);
// draw_set_colour(c_white);
// var roomname = room_get_name(room);
// draw_text(32, 32, roomname)

if room == rm_load_screen {
	audio_stop_all()
	room_goto(rm_menu)
}

else if room == rm_menu {
	
	if ( global.gain == 1 ) and ( global.playing == false ) {
		global.playing = true
		audio_play_sound(snd_new_game, 1, false, global.gain)
		// Set an alarm to play the new level tune and move to rm_world
		obj_alarms.alarm[4] = 3.5 * global.room_speed
	}
	
}








