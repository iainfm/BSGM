/// @description Main(ish) game loop

// Initialise global variables
global.score = 0
global.enemy = 0
global.wave = 1
global.lives = 2
global.game_in_play = true
global.next_life_score = 500
global.note = 0
global.enemy_active = false
global.game_paused = false
global.gain = 1

// Set game speed
global.room_speed = 60 // fps
game_set_speed(global.room_speed, gamespeed_fps)

// Time delay between pigeon cheeps
global.pigeon_cheep_period = 1.25 * global.room_speed

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

// Hide visual elements
// var _inst_game_over = instance_find(obj_game_over, 0)
// _inst_game_over.visible = false
instance_destroy(obj_game_over)

// Clear the staves
clear_stave()