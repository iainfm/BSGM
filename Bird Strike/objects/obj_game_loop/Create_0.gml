/// @description Main(ish) game loop

// Initialise global variables
global.score = 0
global.last_score = 0
global.enemy = 0
global.wave = 1
global.level = 1
global.lives = 2
global.game_in_play = true
global.note = 0
global.enemy_active = false
global.bombs_active = true
global.player_active = true
global.pigeon_active = true
global.gain = 1
global.can_drop_bomb = false
global.inst_enemy = 0
global.add_score = 0

// Set game speed
global.room_speed = 60 // fps
game_set_speed(global.room_speed, gamespeed_fps)

// Time delay between pigeon cheeps
global.pigeon_cheep_period = 1.25 * global.room_speed
global.old_pigeon_speed = 0

// Is a bonus tune playing?
global.bonus_tune_playing = false

// May or may not need these:
global.grave_x = [ 432, 472, 456, 400, 456 ]
global.grave_y = [ 466, 482, 450, 468, 480 ]

// Pigeon bonus staves
global.stave[1] = [i_note_1_1, i_note_1_2, i_note_1_3, i_note_1_4, i_note_1_5, i_note_1_6, i_note_1_7, i_note_1_8, i_note_1_9, i_note_1_10, i_note_1_11, i_note_1_12]
global.stave[2] = [i_note_2_1, i_note_2_2, i_note_2_3, i_note_2_4, i_note_2_5, i_note_2_6, i_note_2_7, i_note_2_8, i_note_2_9, i_note_2_10, i_note_2_11, i_note_2_12]
global.stave[3] = [i_note_1_1, i_note_1_2, i_note_1_3, i_note_1_4, i_note_1_5, i_note_1_6, i_note_1_7, i_note_1_8, i_note_1_9, i_note_1_10, i_note_1_11]
global.stave[4] = [i_note_4_1, i_note_4_2, i_note_4_3, i_note_4_4, i_note_4_5, i_note_4_6, i_note_4_7, i_note_4_8]

// Seed random number generator
randomize()

// Make random more random-y
var _max = (current_hour + 1) * (current_minute + 1) * (current_second + 1)
var _temp
for (var _i = 0; _i < _max; _i++) {
	_temp = random(_i)
}

// Create the game elements
create_instances()

// and the enemy order (TODO: move to new level code)
randomise_enemies()

// Hide visual elements
instance_destroy(obj_game_over)

// Clear the staves
clear_stave()

obj_alarms.alarm[8] = 2 * global.room_speed
obj_alarms.alarm[7] = 1

