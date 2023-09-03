/// @description Pigeon LR hit

// Get the coordinates of the pigeon
var _pigeon = instance_find(oPigeonLR, 0)
// And place the dead pigeon object there
oDeadgeon.x = _pigeon.x
oDeadgeon.y = _pigeon.y

// Process common pigeon-hitting things
pigeon_hit()

// move the pigeon out of further harm's way
_pigeon.y = room_height + _pigeon.sprite_height

// Show the dead bird (it will auto-hide at the end of its animation sequence)
oDeadgeon.visible = true





