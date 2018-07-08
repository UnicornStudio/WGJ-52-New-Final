/// @desc Do Stuff

if o_game.door_cooldown <= 0 and place_meeting(x,y,o_player) and keyboard_check_pressed(vk_enter){
o_game.door_cooldown = 8
o_player.x = exit_pos.x
o_player.y = exit_pos.y
}
