extends Node2D

onready var game_saver : Node = $GameSaver

func _ready():
	pass # Replace with function body.

func _on_endSpawn_save_level():
	game_saver.save()
