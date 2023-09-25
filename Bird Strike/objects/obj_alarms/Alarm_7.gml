/// @description Update score
if (global.score >= global.next_life_score) and (global.next_life_score > 0) and (global.add_score == 0) {
	
	// Award an exra life
	global.lives++
	audio_play_sound(snd_extra_life,1, false, global.gain)
	
	// and set the next next life threshold
	if (global.next_life_score == 500) {
		global.next_life_score = 1000
	}
	else {
		global.next_life_score = -1
	}
	
}

var _i_life

if (global.lives >= 0) {
	for (var _life = 0 ; _life < 5 ; _life++) {
		_i_life = instance_find(obj_life, _life)
		if (_life < global.lives ) {
			_i_life.visible = true
		}
		else {
			_i_life.visible = false
		}
		
	}
}

alarm[7] = 1

if (global.add_score != 0) {
	global.score++
	global.add_score--
}

if (global.score == global.last_score) { exit }

global.last_score = global.score

// Rollover the score at 99990 as per original
if (global.score >= 10000) {
	global.score -= 10000
}


var _tenthousands = floor(global.score / 1000)
var _thousands = floor( (global.score - (_tenthousands * 1000)) / 100 )
var _hundreds = floor( (global.score  - (_tenthousands * 1000) - (_thousands * 100)) / 10)
var _tens =  floor( global.score  - (_tenthousands * 1000) - (_thousands * 100) - _hundreds * 10)


var _a = asset_get_index("sScore_" + string(_tens))
iScore_10.sprite_index = _a
_a = asset_get_index("sScore_" + string(_hundreds))
iScore_100.sprite_index = _a
_a = asset_get_index("sScore_" + string(_thousands))
iScore_1000.sprite_index = _a
_a = asset_get_index("sScore_" + string(_tenthousands))
iScore_10000.sprite_index = _a











