/// @description Pigeon LR hit

// zero the bullet
speed = 0
y = 0
visible = false

// Award 100 juicy pigeon-points
global.score += 10

var _pigeon = instance_find(oPigeonLR, 0)

oDeadgeon.x = _pigeon.x
oDeadgeon.y = _pigeon.y

// move the pigeon out of further harm's way
_pigeon.y = room_height + _pigeon.sprite_height

oDeadgeon.visible = true





