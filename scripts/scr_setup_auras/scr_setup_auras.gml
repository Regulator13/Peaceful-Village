/// @function scr_setup_auras()
/// @description setup auras
/// @return n/a
function scr_setup_auras(){
	//Shout
	global.auras[0] = {
		sprite : spr_shout,
		duration : 45,
		intimidation : 20,
		move_method : CENTERED,
		animation_method : ONE_ROUND
	}
}