/// @description Wait for bonus tune
// show_message("Tune finished")
// global.bonus_tune_playing = false

// Display the bonus message
instance_create_layer(228, 240, "Instances", obj_bonus)

// Add the pigeon bonus

var _added = 0
audio_play_sound(snd_bonus, 1, false, global.gain)
//while(audio_is_playing(snd_bonus)) {
if (_added < 150) {
	global.score += 1
	_added += 1
}
// }
next_level()










