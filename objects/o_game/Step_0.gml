/// @desc Do Stuff

if door_cooldown > 0{
	door_cooldown -= 1	
}

if keyboard_check_pressed(ord("R")){
	game_restart()	
}
