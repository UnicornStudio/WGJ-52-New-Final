/// @desc Handle States
event_user(state)

if state == enemy.aware or state == enemy.cover{
	if cooldown <= 0{
		laststate = state
		state = enemy.shoot
		cooldown = 80
		var b = instance_create_layer(x,y,"Instances",o_bullet)
		b.direction = point_direction(x,y,o_player.x,o_player.y) + irandom_range(-5,5)
		b.image_angle = b.direction
	}
	if o_player.x > x{
		image_xscale = 1
	}else{
		image_xscale = -1
	}
}
if cooldown > 0{
	cooldown -= 1	
}

if hp <= 0{
	instance_destroy()
}

if invin > 0{
	invin -= 1	
}