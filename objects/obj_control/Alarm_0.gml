/// @description Change the time

hour += 1
if hour >= 24{
	hour = 0
	day += 1
}
//Change the room background color
layer_background_blend(back_id, time_colors[hour]) 
alarm_set(0, hour_buffer)
