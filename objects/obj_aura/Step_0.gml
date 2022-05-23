//Move method
if move_method = CENTERED{
	x = Host.x
	y = Host.y
}

duration -= 1

//Disappear
if duration <= 0{
	instance_destroy(self)
}
