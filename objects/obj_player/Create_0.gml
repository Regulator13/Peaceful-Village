/// @description Initialize variables

//Base stats
team = 0 //Set team to friendly
max_hp = 500
hp = max_hp
max_mana = 200
mana = max_mana
money = 0
energy = hp
recovery_rate = 1 //How fast the player regains energy as a percent of max
regen_mana = false //True when the player is at an inn
//Moving
base_speed = 1
sprint_cost = 1.5 //energy cost of sprinting
sprint_speed = 2
sprinting = false
sprint_buffer_max = 10
sprint_buffer = [0, 0, 0, 0]
can_travel = true 
travel_buffer = 150 //You can only move between rooms every so often
//Attacking
max_attack_buffer = 60
attack_buffer = max_attack_buffer
//Scaring
max_intimidate_buffer = 60
intimidate_buffer = max_intimidate_buffer
intimidation = 30
//Actions
sleeping = false //Is the player sleeping?
sleep_duration = 240
sleep_hp = max_hp*.001 //amount of hp to recover per step while sleeping
sleep_mana = max_mana*.001 //amount of mana to recover per step while sleeping
//Move setup
primary = method(self, punch) //Equip the punch move as the player's primary attack
secondary = method(self, shout) //Equip shout as secondary
tertiary = method(self, punch)
//Reading
read_num = -1 //The text currently being read
read_num_last = -1 //The last text in the section to read
chat_x = -1 //Where the chat is displayed
chat_y = -1 //Where the chat is displayed
//Other
update_room = false //Whether the player is changing rooms this step
