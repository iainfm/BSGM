/// @description Remove bonus
instance_destroy()
var _staves = instance_find(obj_staves, 0)
instance_destroy(_staves)
// instance_deactivate_layer("Instance_BonusStaves")
next_level()