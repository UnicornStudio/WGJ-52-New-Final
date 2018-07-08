/// @desc Move the view

x = lerp(x,(o_player.x div 367)*367,0.2)
y = lerp(y,(o_player.y div 182)*182,0.2)

camera_set_view_pos(view_camera[0],x,y)