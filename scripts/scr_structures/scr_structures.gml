/// @function scr_setup_names()
/// @description setup characters
/// @return n/a
function scr_setup_game(){
	#region Attacks
	//Punch
	global.attacks[0] = {
		sprite : spr_punch,
		duration : 15,
		durability : 1,
		damage : 4,
		move_speed : 2,
		target_method : STATIONARY
	}
	#endregion
	
	#region Auras
	//Shout
	global.auras[0] = {
		sprite : spr_shout,
		duration : 45,
		intimidation : 20,
		move_method : CENTERED,
		animation_method : ONE_ROUND
	}
	#endregion

	#region Enemies
	//Goblin
	global.enemies[0] = {
		sprite : spr_bad1,
		spawn_day : 0,
		spawn_rate : 40,
		base_speed : 1,
		max_hp : 20, 
		damage : 1, 
		base_lifespan : 900, 
		courage : 5,
		agr_emote : "Grrrrr",
		scare_emote : "Don't hurt us!"
	}
	//Troll
	global.enemies[1] = {
		sprite : spr_bad2,
		spawn_day : 2,
		spawn_rate : 40,
		base_speed : .9,
		max_hp : 30, 
		damage : 1.5, 
		base_lifespan : 1200, 
		courage : 8,
		agr_emote : "Fear us!",	
		scare_emote : "We are sorry for our ways!"
	}
	#endregion
}
