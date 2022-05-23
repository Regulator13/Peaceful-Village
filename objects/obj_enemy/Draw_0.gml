/// @description Draw hp and lifespan

draw_healthbar(x-HS, y-HS-12, x+HS, y-HS-8, (hp/max_hp)*100, c_black, c_red, c_blue, 0, false, false)
draw_healthbar(x-HS, y-HS-16, x+HS, y-HS-12, (lifespan/base_lifespan)*100, c_black, c_purple, c_fuchsia, 0, false, false)
draw_self()
//Draw emotes
draw_set_font(ft_text)
draw_set_halign(fa_center)
if emoting{
	if not scared{
		draw_text(x, y-20, agr_emote)
	}
	else{
		draw_text(x, y-20, scare_emote)
	}
}
