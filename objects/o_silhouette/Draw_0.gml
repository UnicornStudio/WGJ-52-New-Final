/// @desc Do Stuff

if !surface_exists(surf){
	surf = surface_create(room_width,room_height)
	silhouette_draw()
}else{
	silhouette_draw()	
}