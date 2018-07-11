/// @desc Setup

hp = 10
invin = 0

enum boss{
	idle,
	attack,
	move
}

state = boss.idle

wait_time = 100
shots_left = 10

hspd = 0
vspd = 0
spd = 1