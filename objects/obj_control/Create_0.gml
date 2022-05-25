/// @description Set game variables
randomise()
scr_setup_game()
relationship_update_buffer = 150
#region Time
hour = 6 //24 hour day cycle
day = 0
hour_buffer = 240 //Time in an hour
col_0 = #000000
col_1 = #141414
col_2 = #282828
col_3 = #3c3c3c
col_4 = #505050
col_5 = #646464
col_6 = #787878
col_7 = #8c8c8c
col_8 = #a0a0a0
col_9 = #b4b4b4
col_10 = #c8c8c8
col_11 = #dcdcdc
col_12 = #ffffff
time_colors = [col_0, col_0, col_0, col_1, col_3, col_5, col_6, col_7, col_8, col_9, col_10, col_11, col_12, col_12, col_11, col_10, col_9, col_8, col_7, col_6, col_5, col_4, col_2, col_0, col_0]
alarm_set(0, hour_buffer)
event_user(0) //Update the room
#endregion

#region Spawn Baddies
spawn_buffer = 30
alarm_set(1, spawn_buffer)
//If an enemy rolls less than this, they spawn.
spawn_threshold = 10
//How much baddies' spawn rate is multiplied depending on the hour of day (lower at night)
spawn_multiplier = [1, 1.1, 1.2, 1.5, 2, 2.5, 3, 4, 5, 6, 8, 10, 15, 15, 10, 8, 6, 5, 4, 3, 2, 1.5, 1.2, 1.1]
#endregion
