extends Area2D

enum {MOVING, HIDDEN, DEAD, FIN}
var state = MOVING

var nextpos = null
var startpos = null
var runtime = 0

#Added 11/25 by Matthew
#Used to animate the player sprite
func _process(delta):
	if(!nextpos == null && state != DEAD):
		runtime += .01
		$AnimatedSprite.play("Run")
		position = startpos.linear_interpolate(nextpos,runtime/1.5)
		if(position == nextpos):
			$AnimatedSprite.play("Idle")
			startpos = null
			nextpos = null
			runtime = 0
		if(state == DEAD):
			$AnimatedSprite.play("Idle")

