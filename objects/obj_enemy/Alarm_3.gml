/// @description Update Relationship
var current_tribe = global.tribes[global.room_list[global.room_x][global.room_y].tribe]
var relationship = current_tribe.base_relationship
for (var i=0; i<array_length(current_tribe.ties); i++){
	relationship += current_tribe.tie_multipliers[i] * global.tribes[current_tribe.ties[i]].base_relationship
}
if relationship < 0{
	state = AGGRESSIVE
}
else if relationship < 500{
	state = NEUTRAL
}
else{
	state = FRIENDLY
}
alarm_set(3, relationship_update_buffer)
