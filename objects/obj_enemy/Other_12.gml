/// @desc Cover State
image_speed = 0
sprite_index = s_enemy_1_walking
var wall = instance_nearest(x,y,o_crate)

if distance_to_object(wall) < 2{
	hspd = 0
	vspd = 0
	image_speed= 0 
	sprite_index = s_enemy_1_walking
	image_index = 2
}

if distance_to_object(o_player) > 96{
	state = enemy.unaware	
}