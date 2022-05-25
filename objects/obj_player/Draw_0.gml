//Draw health, energy, and mana bars
draw_healthbar(x-HS*1.5, y-HS-12, x+HS*1.5, y-HS-6, (hp/max_hp)*100, c_black, c_red, c_red, 0, false, true)
draw_healthbar(x-HS*1.5, y-HS-12, x+HS*1.5, y-HS-6, (energy/max_hp)*100, c_black, c_yellow, c_yellow, 0, false, true)
draw_healthbar(x-HS*1.5, y-HS-6, x+HS*1.5, y-HS-2, (mana/max_mana)*100, c_black, c_blue, c_blue, 0, false, true)
draw_self()
//Draw text
draw_set_font(ft_text)
draw_set_halign(fa_left)
draw_text(32, 32, "Money: " + string(money))
if sleeping{
	draw_text(x-HS, y-8, "ZZZ...")
}
draw_set_halign(fa_center)
if read_num >= 0{
	draw_text_ext(chat_x, chat_y - 32 - num_lines*16, global.chat[global.room_x][global.room_y][read_num], 16, 200)
}
