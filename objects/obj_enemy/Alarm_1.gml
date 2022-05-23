/// @description Emotes

if irandom(emote_chance) == 0 and emote_cooldown <= 0{
	emoting = true
	alarm_set(2, emote_duration)
}
alarm_set(1, emote_frequency)
