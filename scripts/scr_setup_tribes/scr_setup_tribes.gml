#region How to add a tribe
/*
1. Add the tribe below, giving it a name
2. Give it a spawn list from scr_setup_enemies
3. Choose a base relationship with the player and any ties the tribe has
4. Add the tribe's name to macro_tribes
*/
#endregion
/// @function scr_setup_tribes()
/// @description setup tribes
/// @return n/a
function scr_setup_tribes(){
	global.tribes[PLAIN_WILDLIFE] = {
		name : "Plain Wildlife",
		base_relationship : -2000,
		ties : [],
		tie_multipliers : [],
		default_spawn : [COYOTE, BEAR, EAGLE],
		strong_spawn : [BEAR, LION]
	}
	global.tribes[PLAIN_BANDITS] = {
		name : "Plain Bandits",
		base_relationship : -500,
		ties : [],
		tie_multipliers : [],
		default_spawn : [],
		strong_spawn : []
	}
	global.tribes[PERINTH_MILITIA] = {
		name : "Perinth Militia",
		base_relationship : 400,
		ties : [PLAIN_BANDITS],
		tie_multipliers : [-.5],
		default_spawn : [MILITIA],
		strong_spawn : []
	}
}
