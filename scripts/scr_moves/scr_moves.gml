#region Attacks
function punch(){
	var energy_cost = 50 //Energy required to use move
	if energy >= energy_cost{
		if attack_buffer < 1{
			//Find target
			var Target = instance_nearest(x, y, obj_enemy)
			var index = 0 //Which attack/move will be created
			scr_create_attack(x, y, index, Target)
			max_attack_buffer = 20 //Recovery time after using move
			attack_buffer = max_attack_buffer
			energy -= energy_cost
		}
	}
}
#endregion

#region Intimidation
function shout(){
	var energy_cost = 30 //Energy required to use move
	if energy >= energy_cost{
		if intimidate_buffer < 1{
			var index = 0
			scr_create_aura(x, y, index, self)
			max_intimidate_buffer = 240 //Recovery time after using move
			intimidate_buffer = max_intimidate_buffer
			attack_buffer += 20 //Don't allow attacking shortly after intimdation
			energy -= energy_cost
		}
	}
}
#endregion

