extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
#func _ready():
#
#	$fader.play("fade in")
#	$AudioStreamPlayer.play()
#	pass # Replace with function body.

func fade_out():
	
	pass


func _process(_delta):
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()
