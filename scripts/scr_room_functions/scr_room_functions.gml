/// @function scr_go_to_adj_room(dir)
/// @description Moves player to an adjacent room
/// @param dir real | direction of travel
function scr_go_to_adj_room(dir){
	//Eliminate all enemies that aren't close enough
	for (var i=0; i<instance_number(obj_enemy); i++){
		var Inst = instance_find(obj_enemy, i)
		switch dir{
			case NORTH:
				if Inst.y > ROOM_BUFFER*2 Inst.persistent = false
				else Inst.y = room_height - ROOM_BUFFER + abs(ROOM_BUFFER - Inst.y)
				break
			case SOUTH:
				if Inst.y < room_height - ROOM_BUFFER*2 Inst.persistent = false
				else Inst.y = ROOM_BUFFER - abs((room_height - ROOM_BUFFER) - Inst.y)
				break
			case EAST:
				if Inst.x < room_width - ROOM_BUFFER*2 Inst.persistent = false
				else Inst.x = room_width - ROOM_BUFFER + abs(ROOM_BUFFER - Inst.x)
				break
			case WEST:
				if Inst.x > ROOM_BUFFER*2 Inst.persistent = false
				else Inst.x = ROOM_BUFFER - abs((room_width - ROOM_BUFFER) - Inst.x)
				break
		}
	}
	//Move all players
	for (var i=0; i<instance_number(obj_player); i++){
		var Player = instance_find(obj_player, i)
		switch dir{
			case NORTH:
				Player.y = room_height - ROOM_BUFFER
				break
			case SOUTH:
				Player.y = ROOM_BUFFER
				break
			case EAST:
				Player.x = ROOM_BUFFER
				break
			case WEST:
				Player.x = room_width - ROOM_BUFFER
				break
		}
	}
	switch dir{
		case NORTH:
			room_goto(global.room_list[global.room_x][global.room_y + 1].name)
			global.room_y += 1
			break
		case SOUTH:
			room_goto(global.room_list[global.room_x][global.room_y - 1].name)
			global.room_y -= 1
			break
		case EAST:
			room_goto(global.room_list[global.room_x - 1][global.room_y].name)
			global.room_x -= 1
			break
		case WEST:
			room_goto(global.room_list[global.room_x + 1][global.room_y].name)
			global.room_x += 1
			break
	}
}

/// @function scr_check_travel_allowed(dir)
/// @description Checks if the player is allowed to move to a room in a specified direction
/// @param dir real | direction of travel
/// @return allow_travel real | Whether or not travel is allowed
function scr_check_travel_allowed(dir){
	var allow_travel = true
	//Check to see if all players are within range of edge of map
	for (var i=0; i<instance_number(obj_player); i++){
		var Inst = instance_find(obj_player, i)
		switch dir{
			case NORTH:
				if Inst.y > ROOM_BUFFER*2 allow_travel = false
				break
			case SOUTH:
				if Inst.y < room_height - ROOM_BUFFER*2 allow_travel = false
				break
			case EAST:
				if Inst.x < room_width - ROOM_BUFFER*2 allow_travel = false
				break
			case WEST:
				if Inst.x > ROOM_BUFFER*2 allow_travel = false
				break
		}
	}
	return allow_travel
}
