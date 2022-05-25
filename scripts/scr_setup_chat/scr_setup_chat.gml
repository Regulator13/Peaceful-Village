#region Adding a new chat
/*
1.	Find the room coordinates below where the text will show and add the chat to the room.
2.	If using multiple chats, such as for a long message, simply add more chats
3.	Add the chat object to a room
4.	Go to the room, double click on the object and click "instance creation code"
5.	Enter num = x or num = [x, y] depending on if you have multiple texts
	For example: If you are adding the first chat to a room enter num = 0, 
	or for a longer message num = [0, 3]
	
Reminder: Use \n to start a new line.
*/
#endregion

/// @function scr_setup_chat()
/// @description setup text boxes that appear in game
/// @return n/a
function scr_setup_chat(){
	global.chat[40][40][0] = "You can read! That's a good first step!"
	global.chat[40][40][1] = "You're really out in the wilderness here. I hope you can fend for yourself."
	global.chat[40][40][2] = "When in doubt, use the action button. Good Luck!"
	global.chat[40][40][3] = "North - Perinth"
	
	global.chat[40][41][0] = "This is a camp. You can sleep here by pressing the action button!"
	global.chat[40][41][1] = "Sleeping will regenerate your health, and speed up energy recovery."
	global.chat[40][41][2] = "Doesn't help with mana though, you need a town for that."
	global.chat[40][41][3] = "Better keep looking."
	
	global.chat[40][43][0] = "Perinth"
}