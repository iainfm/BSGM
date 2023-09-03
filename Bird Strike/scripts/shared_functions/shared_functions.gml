function clear_stave() {
	// Clear the staves and reset the bonus counters
	var _this_note
	for (var _stave = 1 ; _stave <= 4 ; _stave++) {
		for (var _note = 0 ; _note < array_length(global.stave[_stave]) ; _note++) {
			_this_note = global.stave[_stave][_note]
			_this_note.image_alpha = 0.0
		}
	}
	global.note = 0
}

function next_level() {
	// TODO: End of level improvements
			
	// Reposition the aircraft and reset the graves
	var _i_enemy
	var _i_grave
	for (var _i = 0; _i < 6; _i++) {
		_i_enemy = instance_find(oEnemy, _i)
		_i_enemy.x = 92 + ( 80 * _i)
		_i_enemy.y = 38
		_i_enemy.speed = 0
		_i_enemy.visible = true
				
		// re-hide the graves
		if (_i <= 4) {
			_i_grave = instance_find(oGrave, _i)
			_i_grave.visible = false
		}
	}
	
	// increment wave number, ie enemy style. Loop back to the beginning after wave 4
	global.wave ++
	if ( global.wave > 4 ) {
		global.wave = 1
	}
	
	// Set the appropriate enemy sprite
	oEnemy.sprite_index = asset_get_index("sEnemy" + string(global.wave))

	// Reset the enemy count
	global.enemy = 0

	
	// Reset the pigeon bonus
	clear_stave()
}

function pigeon_hit() {
	
	// Stop and hide the pigeon
	speed = 0
	y = 0
	visible = false

	// Award 100 juicy pigeon-points
	global.score += 10
	
	// Add a note to the stave
	global.stave[global.wave][global.note].image_alpha = 1.0
	global.note++


	// Check for pigeon bonus
	if (global.note == array_length(global.stave[global.wave])) {
		global.score += 150
		next_level()
	}


}
