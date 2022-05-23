//Disappear if durability is gone
duration -= 1
if durability <= 0 or duration <= 0{
	instance_destroy(self)
}
