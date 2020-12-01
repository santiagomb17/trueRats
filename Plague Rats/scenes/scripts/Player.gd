extends Area2D

enum {MOVING, HIDDEN, DEAD, FIN}
var state = MOVING

var nextpos = null
var startpos = null
var runtime = 0

var costume = 0 #Set to 0 for base skin
var idle = "Idle"
var run = "Run"

func _ready():
	match costume:
		1:
			idle = "Sombrero Idle"
			run = "Sombrero Run"
		2:
			idle = "Chef Idle"
			run = "Chef Run"
		3:
			idle = "Idle"
			run = "Run"
		4:
			idle = "Idle"
			run = "Run"
		5:
			idle = "Idle"
			run = "Run"
		6:
			idle = "Idle"
			run = "Run"
		_:
			idle = "Idle"
			run = "Run"
	$AnimatedSprite.play(idle) #set the initial animation with the costume before each level.

#Added 11/25 by Matthew
#Used to animate the player sprite
func _process(delta):
	if(!nextpos == null && state != DEAD):
		runtime += .01
		$AnimatedSprite.play(run)
		position = startpos.linear_interpolate(nextpos,runtime/1.5)
		if(position == nextpos):
			$AnimatedSprite.play(idle)
			startpos = null
			nextpos = null
			runtime = 0
		if(state == DEAD):
			$AnimatedSprite.play("Dead")

