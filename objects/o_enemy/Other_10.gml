/// @desc Unaware State
image_speed = 0
image_index = 2
if distance_to_object(o_player) < 80{
	if distance_to_object(o_crate) > 24{
		state = enemy.aware	
	}else{
		state = enemy.cover	
	}
}