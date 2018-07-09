/// @desc Draw

image_alpha = 1

draw_set_halign(fa_left)
draw_set_font(fnt_text)
var InstanceCount; 
var BossCount;
BossCount = 0;
InstanceCount=0; 
if instance_exists(o_enemy){
with(o_enemy) {
    //EDIT: or other colision type like circle or elipse if they're more apropriate 
	if place_meeting(x,y,o_mask_room_check){
		InstanceCount += 1
	}
 } 
}

if instance_exists(o_boss){
with(o_boss) {
    //EDIT: or other colision type like circle or elipse if they're more apropriate 
	if place_meeting(x,y,o_mask_room_check){
		BossCount += 1
	}
 } 
}
 //do something with the count 
draw_text(0,0, string(InstanceCount));
draw_text(0,16, string(BossCount));

x = o_view.x
y = o_view.y

if InstanceCount <= 0{
	o_door.active = true	
}else{
	o_door.active = false	
}