#region Controls
if not sleeping{
	var dir_set = false
	if keyboard_check(LEFT){
		if sprint_buffer[0] > 0{
			sprinting = true
		}
		if sprinting{
			if energy >= sprint_cost{
				speed = sprint_speed
			}
			else sprinting = false
		}
		else speed = base_speed
		direction = 180
		dir_set = true
	}

	if keyboard_check(RIGHT){
		if sprint_buffer[1] > 0{
			sprinting = true
		}
		if sprinting{
			if energy >= sprint_cost{
				speed = sprint_speed
			}
			else sprinting = false
		}
		else speed = base_speed
		direction = 0
		dir_set = true
	}

	if keyboard_check(UP){
		if sprint_buffer[2] > 0{
			sprinting = true
		}
		if sprinting{
			if energy >= sprint_cost{
				speed = sprint_speed
			}
			else sprinting = false
		}
		else speed = base_speed
		if not dir_set direction = 90
		else if direction == 0 direction = 45
		else if direction == 180 direction = 135
		dir_set = true
	}

	if keyboard_check(DOWN){
		if sprint_buffer[3] > 0{
			sprinting = true
		}
		if sprinting{
			if energy >= sprint_cost{
				speed = sprint_speed
			}
			else sprinting = false
		}
		else speed = base_speed
		if not dir_set direction = 270
		else if direction == 0 direction = 315
		else if direction == 180 direction = 225
		dir_set = true
	}
	//Stay in the room
	if x < 0 x = 0
	if x > room_width x = room_width
	if y < 0 y = 0
	if y > room_height y = room_height
	
	//Stop if not moving
	if not dir_set{
		speed = 0
	}
	
	//Spend sprinting energy
	if sprinting{
		energy -= sprint_cost
	}
	//Check key releases
	//If all move keys are not pressed stop sprinting
	if not keyboard_check(LEFT) and not keyboard_check(RIGHT) and not keyboard_check(UP) and not keyboard_check(DOWN){
		sprinting = false
	}
	//Whenever an individual move key is released check if it is double tapped
	if keyboard_check_released(LEFT) sprint_buffer[0] = sprint_buffer_max
	if keyboard_check_released(RIGHT) sprint_buffer[1] = sprint_buffer_max
	if keyboard_check_released(UP) sprint_buffer[2] = sprint_buffer_max
	if keyboard_check_released(DOWN) sprint_buffer[3] = sprint_buffer_max
	
	//First Move
	if keyboard_check(MOVE_1){
		primary()
	}
	//Second Move
	if keyboard_check(MOVE_2){
		secondary()
	}
	//Third Move
	if keyboard_check(MOVE_3){
		tertiary()
	}
	//Action
	if keyboard_check_released(ACTION){
		//Sleep
		if place_meeting(x, y, obj_base){
			sleeping = true
			alarm_set(2, sleep_duration)
		}
		if place_meeting(x, y, obj_inn){
			sleeping = true
			alarm_set(2, sleep_duration)
			regen_mana = true
		}
		//Travel
		var Travel = instance_place(x, y, par_travel)
		if instance_exists(Travel){
			if not Travel.closed{
				if can_travel{
					if scr_check_travel_allowed(Travel.dir){
						scr_go_to_adj_room(Travel.dir)
						update_room = true
					}
					//Wait before allowing travel again
					can_travel = false
					alarm_set(1, travel_buffer)
				}
			}
		}
		//Read
		var Readable = instance_place(x, y, par_chat)
		if instance_exists(Readable){
			chat_x = Readable.x
			chat_y = Readable.y
			if is_array(Readable.num){
				read_num = Readable.num[0]
				read_num_last = array_length(Readable.num)
			}
			else{
				read_num = Readable.num
				read_num_last = read_num
			}
			alarm_set(3, 75 + string_length(global.chat[global.room_x][global.room_y][read_num])*2.8)
			num_lines = ceil(string_width(global.chat[global.room_x][global.room_y][read_num])/200)
		}
	}
}
//If sleeping, stop moving
else{
	speed = 0
}
#endregion

//Die
if hp <= 0{
	instance_destroy(self)
}
//Max hp
if hp > max_hp{
	hp = max_hp
}

//Increase energy
energy += recovery_rate
//Max Energy
if energy > hp{
	energy = hp
}

//Reduce buffers
for (var i=0; i<4; i++){
	sprint_buffer[i] -= 1
}
if sleeping{
	hp += sleep_hp
	energy += recovery_rate //Energy restores twice as fast while sleeping
	if regen_mana mana += sleep_mana
}
else{
	attack_buffer -= 1
	intimidate_buffer -= 1
}
