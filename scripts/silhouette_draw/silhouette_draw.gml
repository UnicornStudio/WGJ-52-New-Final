/// @desc silhouette_draw()

surface_set_target(surf)

draw_clear(c_black)

gpu_set_fog(true,c_white,0,1)

with(o_silhouette_target){
	draw_self()
}

gpu_set_fog(false,c_white,0,0)

with(o_silhouette_hider){
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,0.5)	
}

surface_reset_target()

shader_set(shd_leave_gray)
draw_surface(surf,0,0)
shader_reset()