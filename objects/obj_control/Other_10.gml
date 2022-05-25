/// @description Update Room
lay_id = layer_get_id("lay_background")
back_id = layer_background_get_id(lay_id)
layer_background_blend(back_id, time_colors[hour]) 
current_room = global.room_list[global.room_x][global.room_y]
current_tribe = global.tribes[current_room.tribe]
relationship = current_tribe.base_relationship
for (var i=0; i<array_length(current_tribe.ties); i++){
	relationship += current_tribe.tie_multipliers[i] * global.tribes[current_tribe.ties[i]].base_relationship
}
if relationship < 0{
	relationship = "Enemies"
}
else if relationship < 500{
	relationship = "Neutral"
}
else{
	relationship = "Friends"
}
alarm_set(2, relationship_update_buffer)
