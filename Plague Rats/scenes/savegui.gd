extends Control

onready var spin_box : SpinBox = $SpinBox

onready var game_saver : Node = $Node

func _on_Button_pressed():
	game_saver.save()



func _on_Button2_pressed():
	game_saver.load()


func _on_SpinBox_changed():
	pass # Replace with function body.
