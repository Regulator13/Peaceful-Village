/// @description Take Aura Effect

//If aura is an intimidation aura
if other.intimidation > 0{
	//Potentially Emote on first contact
	if not scared{
		if irandom(1) == 0{
			emoting = true
			alarm_set(2, emote_duration)
		}
	}
	scared = true
	alarm_set(0, (other.intimidation/courage)*30)
}
