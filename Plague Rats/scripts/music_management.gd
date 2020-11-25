extends Node2D

var ended = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

 #Called when the node enters the scene tree for the first time.
func _ready():

	$fader.play("fade in")
	#$AudioStreamPlayer.play()
	#pass # Replace with function body.



func _process(_delta):
	if $music.playing == false:
		$music.play()
