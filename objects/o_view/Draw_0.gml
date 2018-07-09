/// @desc Move the view
x = lerp(x,(o_player.x div 367)*367,0.2)
y = lerp(y,(o_player.y div 182)*182,0.2)

var xpos = x/367
var ypos = y/182

o_game.x = xpos*367
o_game.y = ypos*182

camera_set_view_pos(view_camera[0],x,y)

instance_deactivate_all(true)
instance_activate_region(0+xpos*367,0+ypos*182,(xpos+1)*367-5,(ypos+1)*182-5,true)

draw_rectangle(0+xpos*367+5,0+ypos*182+5,(xpos+1)*367-5,(ypos+1)*182-5,true)
draw_self()