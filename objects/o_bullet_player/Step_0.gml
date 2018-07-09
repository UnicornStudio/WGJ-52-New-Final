/// @desc Move

if place_meeting(x,y,o_solid_parent){
	instance_destroy()	
}

if place_meeting(x,y,o_enemy){
	var e = instance_nearest(x,y,o_enemy)
	instance_destroy()
	if e.invin <= 0{
	e.hp -= 1
	e.invin = 6
	}
}