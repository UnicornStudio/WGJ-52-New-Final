/// @desc Shoot State

image_speed = 1
sprite_index = s_enemy_1_shooting

if animation_hit_frame(sprite_get_number(sprite_index)-1){
	state = laststate	
}
