// @Description Initialise alarms

// How long the enemies wait before beginning their descent
alarm[0] = -1 // 2 * global.room_speed

// Timer to reset the lost-life flash
alarm[1] = -1 // initialise disabled

// Make the pigeon chirp, in exactly the same way they don't
alarm[2] = -1

// Delay after Game Over message
alarm[3] = -1

// Wait for start of new game tune to play
alarm[4] = -1

// Wait for bonus tune
alarm[5] = -1

alarm[6] = 1 * global.room_speed

global.next_life_score = 500