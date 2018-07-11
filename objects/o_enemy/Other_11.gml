/// @desc Aware State
image_speed = 1
sprite_index = s_enemy_1_walking

if go_cover and instance_exists(o_crate){
	var wall = instance_nearest(x,y,o_crate)

	if distance_to_object(wall) > 24{
		if wall.x > x{
		hspd = lerp(hspd,spd,0.2)	
		}else{
			hspd = lerp(hspd,-spd,0.2)	
		}
	
		if wall.y > y{
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
		if distance_to_object(o_player) > 16{
		x += hspd
		}
		if place_meeting(x,y+vspd,o_solid_parent){
			while(!place_meeting(x,y+sign(vspd),o_solid_parent)){
				y += sign(vspd)
			}
			vspd = 0
		}
		y += vspd
		
		}else{
			state = enemy.cover	
		}
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
	if distance_to_object(o_player) > 16{
	x += hspd
	}
	if place_meeting(x,y+vspd,o_solid_parent){
		while(!place_meeting(x,y+sign(vspd),o_solid_parent)){
			y += sign(vspd)
		}
		vspd = 0
	}
	y += vspd
}

if distance_to_object(o_player) > 96{
	state = enemy.unaware	
}