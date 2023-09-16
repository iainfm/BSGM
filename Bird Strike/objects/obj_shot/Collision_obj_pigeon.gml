/// @description Pigeon hit

// Remove the bullet
instance_destroy()

// Get the coordinates of the pigeon
var _pigeon = instance_find(obj_pigeon, 0)
// And place the dead pigeon object there
// obj_deadgeon.x = _pigeon.x
// obj_deadgeon.y = _pigeon.y

// Process common pigeon-hitting things
// obj_alarms.alarm[5] = 5.5 * global.room_speed
pigeon_hit()

// move the pigeon out of further harm's way
// _pigeon.y = room_height + _pigeon.sprite_height

// Show the dead bird (it will auto-hide at the end of its animation sequence)
// obj_deadgeon.visible = true






