#region New Room Instructions
/*To add a new room to the game do the following:
1. Find the room you want to make on the Aggie.io map at https://aggie.io/tantwu4oas and mark it complete
   by placing a large black check on the "completed rooms" layer.
2. Create a gamemaker room with its coordinates as its name
3. Make the room id as the next room_index_list (below)
4. Choose the room type (below)
5. Choose the tribe (or wildlife) that inhabits that room (below)
6. Add the spawn_list for the room if not a TOWN (below)
*/
#endregion

/// @function scr_setup_rooms()
/// @description setup characters
/// @return n/a
function  scr_setup_rooms(){
	//Starting room coordinates
	global.room_x = 40
	global.room_y = 40
	
	//Initialize rooms
	global.room_list[40][40] = {
		name : rm_40_40,
		type : WILD,
		tribe : PLAIN_WILDLIFE,
		spawn_list: DEFAULT
	}
	global.room_list[40][41] = {
		name : rm_40_41,
		type : WILD,
		tribe : PLAIN_WILDLIFE,
		spawn_list: STRONG
	}
	global.room_list[40][42] = {
		name : rm_40_42,
		type : WILD,
		tribe : PERINTH_MILITIA,
		spawn_list: DEFAULT
	}
	global.room_list[40][43] = {
		name : rm_40_43,
		type : TOWN,
		tribe : PERINTH_MILITIA,
		spawn_list: DEFAULT
	}
}