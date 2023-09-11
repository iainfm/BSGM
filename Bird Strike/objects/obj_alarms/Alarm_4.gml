/// @description Wait for new game tune

// Play new level tune
audio_play_sound(snd_new_level, 1, false, global.gain)

// Move to game world
room_goto(rm_world)