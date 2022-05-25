/// @function scr_setup_quests()
/// @description setup quests
/// @return n/a
function scr_setup_quests(){
	//Stage 0 is when the quest has not been discovered
	//Stage 1 is when the quest is initialized
	//No descriptors are entered for stage 1 or 2.
	global.quests[0] = {
		title : "The lost sheep",
		current_stage : 0,
		stages : 3,	
		descriptors : ["Find the sheep", "Bring the sheep home"]
	}
}
