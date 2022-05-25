/// @description Change the time

hour += 1
if hour >= 24{
	hour = 0
	day += 1
}
//Change the room background color
layer_background_blend(back_id, time_colors[hour]) 
//Set the font to contrast with the background
if time_colors[hour] <= #787878{
	draw_set_color(#FFFFFF)
}
else{
	draw_set_color(#000000)
}
alarm_set(0, hour_buffer)
