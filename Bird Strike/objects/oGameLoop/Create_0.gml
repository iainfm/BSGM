/// @description Main(ish) game loop

// Initialise global variables
global.score = 0
global.enemy = 0
global.wave = 1
global.lives = 2
global.game_in_play = true
global.next_life_score = 50

// May or may not need these:
global.grave_x = [ 432, 472, 456, 400, 456 ]
global.grave_y = [ 466, 482, 450, 468, 480 ]

// Seed random number generator
randomize()




