/// @description Move to menu or main game
// draw_set_alpha(1);
// draw_set_colour(c_white);
// var roomname = room_get_name(room);
// draw_text(32, 32, roomname)

// show_debug_message(string(room))

if room == rLoadScreen {
	room_goto(rMenu)
}
else if room == rMenu {
	room_goto(rWorld)
}








