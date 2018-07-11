/// @desc Do Stuff

if o_player.x > x{
	image_xscale = 1	
}else{
	image_xscale = -1	
}

if hp <= 0{
	instance_destroy()	
}

if invin > 0{
	invin -= 1	
}

event_user(state)