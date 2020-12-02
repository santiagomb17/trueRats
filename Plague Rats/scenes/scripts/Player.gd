extends Area2D

signal costume_updated

enum {MOVING, HIDDEN, DEAD, FIN}
var state = MOVING

var nextpos = null
var startpos = null
var runtime = 0

var costume = 0 setget set_costume
var idle = "Idle"
var run = "Run"

func set_costume(value: int) -> void:
	costume = value
	emit_signal("costume_updated")

func _ready():
	match costume:
		1:
			idle = "White Idle"
			run = "White Run"
		2:
			idle = "Bubble Idle"
			run = "Bubble Run"
		3:
			idle = "Chef Idle"
			run = "Chef Run"
		4:
			idle = "SombreroIdle"
			run = "Sombrero Run"
		5:
			idle = "Fat Idle"
			run = "Fat Run"
		6:
			idle = "Crown Idle"
			run = "Crown Run"
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
		if(position == nextpos || runtime >= 1.5):
			$AnimatedSprite.play(idle)
			position = nextpos
			startpos = null
			nextpos = null
			runtime = 0
		if(state == DEAD):
			$AnimatedSprite.play("Dead")

