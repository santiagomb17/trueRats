extends Area2D

enum {MOVING, HIDDEN, DEAD, FIN}
var state = MOVING
#var isHidden = false
#var isDead = false

var nextpos = null
var runtime = 0

#Added 11/25 by Matthew
#Used to animate the player sprite
func _process(delta):
	if(!nextpos == null):
		runtime += delta
		$AnimatedSprite.play("Run")
		position = position.linear_interpolate(nextpos,runtime/1.5)
		if(position == nextpos):
			$AnimatedSprite.play("Idle")
			nextpos = null
			runtime = 0

