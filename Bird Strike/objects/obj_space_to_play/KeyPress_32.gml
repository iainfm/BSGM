/// @description Move to menu or main game
// draw_set_alpha(1);
// draw_set_colour(c_white);
// var roomname = room_get_name(room);
// draw_text(32, 32, roomname)

// show_debug_message(string(room))

if room == rm_load_screen {
	room_goto(rm_menu)
}

else if room == rm_menu {

if ( global.gain == 1 ) {
		audio_play_sound(snd_new_game, 1, false, global.gain)
		while (audio_is_playing(snd_new_game)) { }
		audio_play_sound(snd_new_level, 1, false, global.gain)
	}

	room_goto(rm_world)
	
}








