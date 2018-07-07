/// @description Insert description here
// You can write your code in this editor
/// Movement
var hspd = (keyboard_check(vk_right) - keyboard_check(vk_left))*spd;
var vspd = (keyboard_check(vk_down) - keyboard_check(vk_up))*spd;

/// Move
move(hspd, vspd);