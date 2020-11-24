extends Control

onready var spin_box : SpinBox = $SpinBox

onready var game_saver : Node = $Node

func _on_Button_pressed():
	game_saver.save(spin_box.value)



func _on_Button2_pressed():
	game_saver.load(spin_box.value)
