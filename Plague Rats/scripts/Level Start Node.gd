extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var playerLoad = load("res://scenes/Player.tscn")
	var playerNode 
	playerNode = playerLoad.instance()
	get_node("..").add_child(playerNode)
	playerNode.global_position = self.global_position

