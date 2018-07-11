/// @description Insert description here
// You can write your code in this editor


if(position_meeting(mouse_x, mouse_y, self)) {
	if (mouse_check_button_pressed(mb_left)) {
		room_goto(rm_test);
	}
    image_index = 1;
} else {
    image_index = 0;
}dex = 0;