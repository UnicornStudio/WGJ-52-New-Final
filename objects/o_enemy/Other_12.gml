/// @desc Cover State
image_speed = 0
sprite_index = s_enemy_1_walking

if distance_to_object(o_player) > 96{
	state = enemy.unaware	
}