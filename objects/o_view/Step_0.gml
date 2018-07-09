/// @desc Move the view

x = lerp(x,(o_player.x div 367)*367,0.2)
y = lerp(y,(o_player.y div 182)*182,0.2)

o_game.x = x
o_game.y = y

camera_set_view_pos(view_camera[0],x,y)

instance_deactivate_all(true)
instance_activate_region(x,y,x+367,y+182,true)