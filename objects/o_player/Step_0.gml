/// @description Insert description here
// You can write your code in this editor
/// Movement
var hspd = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*spd;
var vspd = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*spd;

if (place_meeting(x+hspd, y, o_solid_parent)) {
	while(!place_meeting(x+sign(hspd),y,o_solid_parent)){
		x += sign(hspd)
	}
	hspd = 0
}
 x += hspd;

// Vertical movement
if (place_meeting(x, y+vspd, o_solid_parent)) {
	while(!place_meeting(x,y+sign(vspd),o_solid_parent)){
		y += sign(vspd)
	}
	vspd = 0
}
y += vspd;

if mouse_x > x{
	xscale = 1;
}else{
	xscale = -1;	
}

if hspd != 0 or vspd != 0{
	sprite_index = s_player_move_male
}else{
	sprite_index = s_player_idle_male	
}