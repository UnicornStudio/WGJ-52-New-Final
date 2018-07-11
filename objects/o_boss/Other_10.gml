/// @desc Idle State

if wait_time > 0{
	wait_time -= 1	
}else{
	wait_time = 10
	state = boss.attack	
}

image_index = 2