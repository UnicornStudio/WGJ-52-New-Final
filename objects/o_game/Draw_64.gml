/// @desc Draw
draw_set_halign(fa_center)
draw_set_font(fnt_text)
if instance_number(o_enemy) > 1{
draw_text_outline(display_get_gui_width()/2,0,string(instance_number(o_enemy))+ " Enemies Remaining!")
}else if instance_number(o_enemy) == 1{
draw_text_outline(display_get_gui_width()/2,0,string(instance_number(o_enemy)) + " Enemy Remaining!")
}else if instance_number(o_enemy) == 0{
draw_text_outline(display_get_gui_width()/2,0,"Room Clear!")	
}
draw_set_halign(fa_left)