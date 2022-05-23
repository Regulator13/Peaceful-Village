/// @function scr_create_attack(_x, _y, index)
/// @description creates an attack from a global list
/// @param _x real | x position
/// @param _y real | y position
/// @param index real | index in global arrays
/// @param Target real | instance id of target

function scr_create_attack(_x, _y, index, Target){
	var Inst = instance_create_layer(_x, _y, "lay_instances", obj_attack)
	
	Inst.sprite_index = global.attacks[index].sprite //Set sprite
	Inst.duration = global.attacks[index].duration //Set how long the attack will last
	Inst.damage = global.attacks[index].damage //Set how much damage the attack will do
	Inst.durability = global.attacks[index].durability //Set how many times the attack can hit an enemy
	Inst.speed = global.attacks[index].move_speed //Set how fast the attack will travel
	Inst.Target = Target //Set who the attack is targeting
	Inst.target_method = global.attacks[index].target_method //Set how the attack targets enemy
	
	//Set the direction the attack is traveling
	if Target != noone{
		if Inst.target_method == STATIONARY{
			Inst.direction = point_direction(_x, _y, Target.x, Target.y)
			Inst.image_angle = Inst.direction - 90
		}
	}
}

/// @function scr_create_aura(_x, _y, index)
/// @description creates an aura effect from a global list
/// @param _x real | x position
/// @param _y real | y position
/// @param index real | index in global arrays
/// @param Host real | instance id of Host

function scr_create_aura(_x, _y, index, Host){
	var Inst = instance_create_layer(_x, _y, "lay_instances", obj_aura)
	
	Inst.sprite_index = global.auras[index].sprite //Set sprite
	Inst.duration = global.auras[index].duration //Set how long the attack will last
	Inst.intimidation = global.auras[index].intimidation //Set how intimidating the aura is
	Inst.move_method = global.auras[index].move_method //Set how the aura moves
	Inst.animation_method = global.auras[index].animation_method //Set how the animation plays
	Inst.Host = Host //Set who is making the aura
	
}

/// @function scr_create_enemy(_x, _y, index)
/// @description creates an enemy from a global list
/// @param _x real | x position
/// @param _y real | y position
/// @param index real | index in global arrays

function scr_create_enemy(_x, _y, index){
	var Inst = instance_create_layer(_x, _y, "lay_instances", obj_enemy)
	
	Inst.sprite_index = global.enemies[index].sprite //Set sprite
	Inst.base_speed = global.enemies[index].base_speed //Set the speed
	Inst.max_hp = global.enemies[index].max_hp //Set the max hp
	Inst.hp = Inst.max_hp //Set the hp to max
	Inst.damage = global.enemies[index].damage //Set the attack damage
	Inst.base_lifespan = global.enemies[index].base_lifespan //Set the max lifespan
	Inst.lifespan = Inst.base_lifespan //Set the lifespan
	Inst.courage = global.enemies[index].courage //Set the courage
	Inst.agr_emote = global.enemies[index].agr_emote //Set the aggressive emote
	Inst.scare_emote = global.enemies[index].scare_emote //Set the scared emote

}
