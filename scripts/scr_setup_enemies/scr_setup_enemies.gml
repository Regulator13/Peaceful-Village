#region Adding a new enemy
/*
1. Make a sprite for the enemy (set its origin to middle center)
2. Add the enemy below, giving it a name and base stats
3. Give the enemy something to say (emotes)! Note: wildlife do not need friendly or neutral emotes
4. Add the enemy name to macros_enemies
5. Don't forget to add your enemy to a tribe's list in scr_setup_tribes
*/
#endregion

#region Variable Notes
/*
spawn_rate:			At midnight (highest spawn time) an enemy will spawn 1 every spawn_rate/10 seconds.
					In daytime the spawn rate will be 5 to 15 times less.
					For example, a spawn rate of 40 will spawn 1 enemy every 4 seconds at night and 
					every 20-60 seconds during the day
			
base_speed:			Speed traveled in pixels per step. Player travels 1 and sprints 2, for reference.

max_attack_buffer:	The enemy can attack every attack_buffer/30 seconds. So a buffer of 10 means
					the enemy can attack three times per second.
					
base_lifespan:		How long the enemy will stay on the map before disappearing. 30 steps = 1 second.

courage:			How much intimidation will affect the enemy. Higher number means less affected.
*/
#endregion
/// @function scr_setup_enemies()
/// @description setup enemies
/// @return n/a
function scr_setup_enemies(){
	#region Plains Wildlife
	global.enemies[COYOTE] = {
		name : "Coyote",
		sprite : spr_coyote,
		spawn_day : 0,
		spawn_rate : 40,
		base_speed : 1,
		max_hp : 200, 
		damage : 2,
		max_attack_buffer : 3,
		base_lifespan : 900,
		attack_type : MELEE,
		move_type : DEFAULT_MOVE,
		target_team : ENEMY,
		target_type : NEAREST,
		courage : 5,
		friend_emote : "",
		norm_emote : "",
		agr_emote : "Awoooooo!",
		scare_emote : "*whimper*"
	}
	global.enemies[BEAR] = {
		name : "Bear",
		sprite : spr_bear,
		spawn_day : 2,
		spawn_rate : 80,
		base_speed : .8,
		max_hp : 350,
		damage : 40,
		max_attack_buffer : 60,
		attack_type : MELEE,
		move_type : DEFAULT_MOVE,
		target_team : ENEMY,
		target_type : NEAREST,
		base_lifespan : 1200, 
		courage : 10,
		friend_emote : "",
		norm_emote : "",
		agr_emote : "Grrrrrrr!",	
		scare_emote : "*grumble*"
	}
	global.enemies[EAGLE] = {
		name : "Eagle",
		sprite : spr_eagle,
		spawn_day : 0,
		spawn_rate : 100,
		base_speed : 1.2,
		max_hp : 150,
		damage : 20,
		max_attack_buffer : 60,
		attack_type : MELEE,
		move_type : PASSING,
		target_team : ENEMY,
		target_type : NEAREST,
		base_lifespan : 1500, 
		courage : 6,
		friend_emote : "",
		norm_emote : "",
		agr_emote : "Caw!",	
		scare_emote : "Eeeee!"
	}
	
	global.enemies[LION] = {
		name : "Lion",
		sprite : spr_lion,
		spawn_day : 0,
		spawn_rate : 300,
		base_speed : 1.1,
		max_hp : 1000,
		damage : 20,
		max_attack_buffer : 10,
		attack_type : MELEE,
		move_type : DEFAULT_MOVE,
		target_team : ENEMY,
		target_type : NEAREST,
		base_lifespan : 3000, 
		courage : 30,
		friend_emote : "",
		norm_emote : "",
		agr_emote : "ROAR!",
		scare_emote : "roar."
	}
	#endregion
	#region Plains Bandits
	#endregion
	#region Perinth Milita
	global.enemies[MILITIA] = {
		name : "Militia",
		sprite : spr_militia,
		spawn_day : 0,
		spawn_rate : 80,
		base_speed : 1,
		max_hp : 400, 
		damage : 10,
		max_attack_buffer : 20,
		base_lifespan : 1500,
		attack_type : MELEE,
		move_type : DEFAULT_MOVE,
		target_team : ENEMY,
		target_type : NEAREST,
		courage : 6,
		friend_emote : "Hello Friend!",
		norm_emote : "Another day on the job.",
		agr_emote : "We protect!",
		scare_emote : "Retreat!"
	}
	#endregion
}