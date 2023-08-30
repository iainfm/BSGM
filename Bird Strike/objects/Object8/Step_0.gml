/// @description Draw score
// TODO: only if it has changed

// global.score += 1

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
