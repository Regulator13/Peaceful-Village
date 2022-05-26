//Controls
#macro LEFT ord("A")
#macro RIGHT ord("D")
#macro UP ord("W")
#macro DOWN ord("S")
#macro MOVE_1 ord("G")
#macro MOVE_2 ord("Y")
#macro MOVE_3 ord("T")
#macro ACTION vk_space

///Move constants
//Targeting
#macro STATIONARY 0 //Attack moves towards where the enemy was when the attack began

///Aura constants
//Movement method
#macro CENTERED 0 //Aura moves with the player
//Animation method
#macro ONE_ROUND 0 //Animation goes one time and then stays on last image

//Margins and buffers
#macro HS 16 //half the default sprite size
#macro ROOM_BUFFER 96 //How far the character appears from the edge of the room when traveling to an adjacent room

//Room types
#macro WILD 0
#macro TOWN 1
#macro CHALLENGE 2

//Directions
#macro NORTH 0
#macro EAST 1
#macro SOUTH 2
#macro WEST 3

//Time
#macro NIGHT_START 22
#macro NIGHT_END 4
