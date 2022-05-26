/// @description Initialize gate position
event_inherited()
dir = SOUTH
image_speed = 0
if obj_control.hour >= NIGHT_START or obj_control.hour <= NIGHT_END{
	closed = true
	image_index = 0
}
else{
	closed = false
	image_index = 1
}
alarm_set(0, obj_control.hour_buffer/30)
