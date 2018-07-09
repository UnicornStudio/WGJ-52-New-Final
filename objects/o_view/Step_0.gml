/// @desc Move the view
x = lerp(x,(o_player.x div 367)*367,0.2)
y = lerp(y,(o_player.y div 182)*182,0.2)

var xpos = x/367
var ypos = y/182

o_game.x = xpos*367
o_game.y = ypos*182

camera_set_view_pos(view_camera[0],x,y)