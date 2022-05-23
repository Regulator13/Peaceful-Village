/// @description Spawn money
var _h = 12 //buffer between coins
//Can have up to 4 coins before needing to be collected
if irandom(spawn_chance) == 0{
	if not position_meeting(x - _h, y - _h, obj_coin){
		instance_create_layer(x - _h, y - _h, "lay_instances", obj_coin)
	}
	else if not position_meeting(x + _h, y - _h, obj_coin){
		instance_create_layer(x + _h, y - _h, "lay_instances", obj_coin)
	}
	else if not position_meeting(x - _h, y + _h, obj_coin){
		instance_create_layer(x - _h, y + _h, "lay_instances", obj_coin)
	}
	else if not position_meeting(x + _h, y + _h, obj_coin){
		instance_create_layer(x + _h, y + _h, "lay_instances", obj_coin)
	}
}
alarm_set(0, spawn_check_buffer)
