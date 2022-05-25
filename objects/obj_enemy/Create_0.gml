/// @description Set Default Stats

team = 1 //Set team to enemy
Target = noone
search_buffer = 30 //How often the enemy should search for a new target
name = "default"
spawn_day = 0
spawn_rate = 40
base_speed = 1
max_hp = 20
hp = max_hp
damage = 1
max_attack_buffer = 30 //How fast the enemy can attack
attack_buffer = 0 //Enemies can attack when they start out
attack_type = MELEE //How the enemy attacks
target_team = ENEMY //Which team to target
target_type = NEAREST //Which specific unit to target
move_type = DEFAULT_MOVE
base_lifespan = 900
lifespan = base_lifespan
scared = false
courage = 5
relationship_penalty = 100 //amount of relationship points you lose for killing a tribe member
relationship_update_buffer = 60 //Update relationship status
alarm_set(3, relationship_update_buffer)

//Find state based on relationship
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

//Find a Target
Target = scr_find_target()
alarm_set(4, search_buffer)

//Emotes
emoting = false
emote_duration = 90
emote_frequency = 120
emote_chance = 5 //1 in x chance of emoting
emote_cooldown_max = 120 //Can't emote for at least this long after emoting
emote_cooldown = emote_cooldown_max 
alarm_set(1, emote_frequency)
norm_emote = "" //emote for when neutral
friend_emote = "" //emote for when friendly
agr_emote = "" //emote for when aggressive
scare_emote = "" //emote for when scared
