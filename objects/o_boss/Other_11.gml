/// @desc Attack State
hspd = 0
vspd = 0
if distance_to_object(o_player) < 80{
	if shots_left > 0{
		if wait_time <= 0{
		var b = instance_create_layer(x,y,"Instances",o_bullet)	
		b.speed = 6
		b.direction = point_direction(x,y,o_player.x,o_player.y) + irandom_range(-10,10)
		b.image_angle = b.direction
		wait_time = 10
		shots_left -= 1
		}
	}else{
		wait_time = 100
		state = boss.idle
	}
}else{
	state = boss.move	
}