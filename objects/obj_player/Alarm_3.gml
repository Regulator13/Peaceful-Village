/// @description Move to next message
if read_num < read_num_last{
	read_num += 1
	alarm_set(3, 60 + string_length(global.chat[global.room_x][global.room_y][read_num])*2.8)
	num_lines = ceil(string_width(global.chat[global.room_x][global.room_y][read_num])/200)
	show_debug_message(string(num_lines))
}
else{
	read_num = -1
	read_num_last = -1
	num_lines = -1
}
