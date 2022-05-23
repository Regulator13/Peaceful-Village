/// @description Set Default Stats

spawn_day = 0
spawn_rate = 40
base_speed = 1
max_hp = 20
hp = max_hp
attack = 1
base_lifespan = 900
lifespan = base_lifespan
scared = false
courage = 5

//Emotes
emoting = false
emote_duration = 90
emote_frequency = 120
emote_chance = 5 //1 in x chance of emoting
emote_cooldown_max = 120 //Can't emote for at least this long after emoting
emote_cooldown = emote_cooldown_max 
alarm_set(1, emote_frequency)
agr_emote = "" //emote for when aggressive
scare_emote = "" //emote for when scared
