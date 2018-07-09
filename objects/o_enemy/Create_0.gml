/// @desc Setup

enum enemy{
	unaware,
	aware,
	cover,
	shoot
}

state = enemy.unaware
laststate = state
spd = 1

go_cover = choose(true,false)

hspd = 0
vspd = 0

cooldown = 0

hp = 2
invin = 6