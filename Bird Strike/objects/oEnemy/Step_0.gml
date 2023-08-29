/// @description Fly enemy
// Move the enemy sprite if it's visible


// Which way the enemy is moving (generally towards the player)
var _move_dir = 0
var _wobble = 1

if iEnemy1.visible {
	iEnemy1.y += iEnemy1.sprite_height / 48
	if iEnemy1.y > room_height {
		iEnemy1.y = 0
	}
	
	if iEnemy1.x > iPlayer.x {
		_move_dir = -1 * _wobble
	}
	else
	{
		_move_dir = 1 * _wobble
	}
	
	// Add some wobble, as per original game
	if random(10) > 8 {
		_wobble = -1 * _wobble
	}
	
	iEnemy1.x += _move_dir
	
}

else if iEnemy2.visible {
	iEnemy2.y += iEnemy2.sprite_height / 48
	if iEnemy2.y > room_height {
		iEnemy2.y = 0
	}
}

else if iEnemy3.visible {
	iEnemy3.y += iEnemy3.sprite_height / 48
	if iEnemy3.y > room_height {
		iEnemy3.y = 0
	}
}

else if iEnemy4.visible {
	iEnemy4.y += iEnemy4.sprite_height / 48
	if iEnemy4.y > room_height {
		iEnemy4.y = 0
	}
}

else if iEnemy5.visible {
	iEnemy5.y += iEnemy5.sprite_height / 48
	if iEnemy5.y > room_height {
		iEnemy5.y = 0
	}
}

else if iEnemy6.visible {
	iEnemy6.y += iEnemy6.sprite_height / 48
	if iEnemy6.y > room_height {
		iEnemy6.y = 0
	}
}