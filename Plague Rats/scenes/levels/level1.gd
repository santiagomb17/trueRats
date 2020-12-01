extends Node2D

onready var game_saver : Node = $GameSaver
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	Global.connect("level_save", self, "save_ready")
#	save_ready()
	
#func save_ready():
	#game_saver.save()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_endSpawn_save_level():
	game_saver.save()
