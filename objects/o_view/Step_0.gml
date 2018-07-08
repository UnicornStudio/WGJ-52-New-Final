/// @desc Move the view

x = lerp(x,(o_player.x div 303)*303,0.2)
y = lerp(y,(o_player.y div 149)*149,0.2)

camera_set_view_pos(view_camera[0],x,y)