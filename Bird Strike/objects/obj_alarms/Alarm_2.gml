/// @description Chirpy chirpy cheep cheep

if (global.pigeon_active) {
	audio_play_sound(snd_pigeon_cheep, 1, false, global.gain)
}

// reset the timer
alarm[2] = global.pigeon_cheep_period
