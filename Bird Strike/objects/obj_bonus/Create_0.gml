/// @description Start bonus activities

// Stop all animations

global.enemy_active = false
global.bombs_active = false
global.player_active = false

// Set the bonus timeout
alarm[0] = 3 * global.room_speed

// Play the bonus noise
audio_play_sound(snd_bonus, 1, false, global.gain)

// Add the pigeon bonus
global.add_score = 150
