/// @description Spawn Enemies
//Find which spawn list is being used for the tribe controlling the room.
if current_room.spawn_list == DEFAULT{
	var spawn_list = global.tribes[current_room.tribe].default_spawn
}
else if current_room.spawn_list == STRONG{
	var spawn_list = global.tribes[current_room.tribe].strong_spawn
}
//Spawn enemies periodically if in the wild
if current_room.type == WILD{
	//Go through all eligible enemies for this area
	for (var i=0; i<array_length(spawn_list); i++){
		var ind = spawn_list[i]
		//Check if the spawn day has been reached or if lucky early spawn
		if day >= global.enemies[ind].spawn_day or (irandom(power((global.enemies[ind].spawn_day - day + 1), 2)) <= 1){
			//Check if the spawn roll meets the threshold for the given hour
			if irandom(global.enemies[ind].spawn_rate * spawn_multiplier[hour]) < spawn_threshold{
				//Choose spawn point for the baddie at random coordinates along the edge
				var edge = choose("left", "right", "top", "bottom")
				switch (edge){
					case "left":
						var spawn_x = HS
						var spawn_y = irandom_range(HS, room_height - HS)
						break
					case "right":
						var spawn_x = room_width - HS
						var spawn_y = irandom_range(HS, room_height - HS)
						break
					case "top":
						var spawn_x = irandom_range(HS, room_width - HS)
						var spawn_y = HS
						break
					case "bottom":
						var spawn_x = irandom_range(HS, room_width - HS)
						var spawn_y = room_height - HS
				}
				//Spawn the baddie
				scr_create_enemy(spawn_x, spawn_y, ind)
			}
		}
	}
}
alarm_set(1, spawn_buffer)
