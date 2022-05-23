/// @description Move and attack

if instance_exists(obj_player){
	if not scared{
		move_towards_point(obj_player.x, obj_player.y, base_speed)
	}
	else{
		move_towards_point(obj_player.x, obj_player.y, base_speed*-1)
	}
}
//Die
if hp <= 0{
	instance_destroy(self)
}

//Disappear
if lifespan <= 0{
	instance_destroy(self)
}

//Reduce lifespan
lifespan -= 1

//Reduce buffers
emote_cooldown -= 1
