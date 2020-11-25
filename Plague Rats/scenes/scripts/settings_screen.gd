extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(1, lerp(AudioServer.get_bus_volume_db(1),value, 0.5))
	if value == -32:
		AudioServer.set_bus_mute(1, true)
	else:
		AudioServer.set_bus_mute(1, false)
	pass # Replace with function body.

func _on_SFX_slider_value_changed(value):
	$SFX_test.play()
	AudioServer.set_bus_volume_db(2, lerp(AudioServer.get_bus_volume_db(2),value, 0.5))
	if value == -32:
		AudioServer.set_bus_mute(2, true)
	else:
		AudioServer.set_bus_mute(2, false)
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/Menu/Main Menu.tscn")
