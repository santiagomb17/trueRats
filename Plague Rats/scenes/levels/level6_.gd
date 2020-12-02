extends Node2D
onready var game_saver : Node = $GameSaver

# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_endSpawn_save_level():
	game_saver.save()
