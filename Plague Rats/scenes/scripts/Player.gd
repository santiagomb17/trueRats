extends Area2D

signal costume_updated

enum {MOVING, HIDDEN, DEAD, FIN}
var state = MOVING

var nextpos = null
var startpos = null
var runtime = 0

#var costume = 0 setget set_costume
var idle = "Idle"
var run = "Run"

#Added 11/25 by Matthew
#Used to animate the player sprite
func _process(delta):
	if(!nextpos == null && state != DEAD):
		runtime += .01
		$AnimatedSprite.play(run)
		position = startpos.linear_interpolate(nextpos,runtime/1.5)
		if(position == nextpos || runtime >= 1.5):
			$AnimatedSprite.play(idle)
			position = nextpos
			startpos = null
			nextpos = null
			runtime = 0
		if(state == DEAD):
			$AnimatedSprite.play("Dead")
