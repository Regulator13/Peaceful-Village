/// @description Move and attack

if instance_exists(Target){
	//Aggressive
	if state == AGGRESSIVE or (state == NEUTRAL and (obj_control.hour >= NIGHT_START or obj_control.hour <= NIGHT_END)){
		if not scared{
			if move_type == DEFAULT_MOVE{
				if distance_to_point(Target.x, Target.y) > 10{
					move_towards_point(Target.x, Target.y, base_speed)
				}
			}
			if move_type = PASSING{
				if attack_buffer <= 0 move_towards_point(Target.x, Target.y, base_speed)
				else move_towards_point(Target.x, Target.y, base_speed*-1)
			}
		}
		else{
			move_towards_point(Target.x, Target.y, base_speed*-1)
		}
	}
	//Wandering
	else{
		if not scared{
			move_towards_point(Target.x, Target.y, base_speed*.5)
		}
		else{
			move_towards_point(Target.x, Target.y, base_speed*-1)
		}
	}
}

//Attack
if state == AGGRESSIVE or (state == NEUTRAL and (obj_control.hour >= NIGHT_START or obj_control.hour <= NIGHT_END)){
	if not scared{
		//Melee attack
		if attack_type == MELEE{
			if attack_buffer <= 0{
				if place_meeting(x, y, Target){
					Target.hp -= damage
					attack_buffer = max_attack_buffer
				}
			}
		}
	}
}

//Die
if hp <= 0{
	//Reduce player's relationship with that tribe
	obj_control.current_tribe.base_relationship -= relationship_penalty
	//Die
	instance_destroy(self)
}

//Disappear
if lifespan <= 0{
	instance_destroy(self)
}

//Stay in bounds
if x < 0 x = 0
if x > room_width x = room_width
if y < 0 y = 0
if y > room_height y = room_height

//Reduce lifespan
lifespan -= 1

//Reduce buffers
emote_cooldown -= 1
attack_buffer -= 1
