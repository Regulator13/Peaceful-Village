/// @description Draw hp and lifespan

draw_healthbar(x-HS, y-HS-12, x+HS, y-HS-8, (hp/max_hp)*100, c_black, c_red, c_blue, 0, false, false)
draw_healthbar(x-HS, y-HS-16, x+HS, y-HS-12, (lifespan/base_lifespan)*100, c_black, c_purple, c_fuchsia, 0, false, false)
draw_self()
//Draw emotes
draw_set_font(ft_text)
draw_set_halign(fa_center)
if emoting{
	if not scared{
		if state == AGGRESSIVE or (state == NEUTRAL and (obj_control.hour >= NIGHT_START or obj_control.hour <= NIGHT_END)) draw_text(x, y - 6, agr_emote)
		else if state == NEUTRAL draw_text(x, y - 6, norm_emote)
		else if state == FRIENDLY draw_text(x, y - 6, friend_emote)
	}
	else{
		draw_text(x, y, scare_emote)
	}
}
