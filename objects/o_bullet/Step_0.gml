/// @desc Move

if place_meeting(x,y,o_solid_parent){
	instance_destroy()	
}

if place_meeting(x,y,o_player){
	instance_destroy()
	o_player.hp -= 1
}