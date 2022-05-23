/// @description Set game variables
randomise()
scr_setup_game()
scr_setup_rooms()
#region Time
hour = 6 //24 hour day cycle
day = 0
hour_buffer = 240 //Time in an hour
col_0 = #000000
col_1 = #011a00
col_2 = #023800
col_3 = #025400
col_4 = #036c00
col_5 = #048400
col_6 = #049a00
col_7 = #04b200
col_8 = #05c600
col_9 = #05d500
col_10 = #05ec00
col_11 = #06ff00
col_12 = #06ff00
time_colors = [col_0, col_0, col_0, col_1, col_3, col_5, col_6, col_7, col_8, col_9, col_10, col_11, col_12, col_12, col_11, col_10, col_9, col_8, col_7, col_6, col_5, col_4, col_2, col_0, col_0]
alarm_set(0, hour_buffer)
lay_id = layer_get_id("lay_background")
back_id = layer_background_get_id(lay_id)
layer_background_blend(back_id, time_colors[hour]) 
#endregion

#region Spawn Baddies
spawn_buffer = 30
alarm_set(1, spawn_buffer)
//If an enemy rolls less than this, they spawn.
spawn_threshold = 10
//How much baddies' spawn rate is multiplied depending on the hour of day (lower at night)
spawn_multiplier = [1, 1.1, 1.2, 1.5, 2, 2.5, 3, 4, 5, 6, 8, 10, 15, 15, 10, 8, 6, 5, 4, 3, 2, 1.5, 1.2, 1.1]
#endregion
