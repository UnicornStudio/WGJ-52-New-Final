/// @desc Move State
if distance_to_object(o_player) < 24{
	state = boss.attack
}else{
	if o_player.x > x{
		hspd = lerp(hspd,spd,0.2)	
	}else{
		hspd = lerp(hspd,-spd,0.2)	
	}
	
	if o_player.y > y{
		vspd = lerp(vspd,spd,0.2)	
	}else{
		vspd = lerp(vspd,-spd,0.2)	
	}
	
	if place_meeting(x+hspd,y,o_solid_parent){
		while(!place_meeting(x+sign(hspd),y,o_solid_parent)){
			x += sign(hspd)
		}
		hspd = 0
	}
	x += hspd
	
	if place_meeting(x,y+vspd,o_solid_parent){
		while(!place_meeting(x,y+sign(vspd),o_solid_parent)){
			y += sign(vspd)
		}
		vspd = 0
	}
	y += vspd
}