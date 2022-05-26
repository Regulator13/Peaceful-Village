/// @function scr_setup_attacks()
/// @description setup attacks
/// @return n/a
function scr_setup_attacks(){
	//Punch
	global.attacks[0] = {
		sprite : spr_punch,
		duration : 15,
		durability : 1,
		damage : 50,
		move_speed : 2,
		target_method : STATIONARY
	}
}