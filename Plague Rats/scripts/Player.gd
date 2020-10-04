extends Area2D

onready var childArray

func ready():
	childArray = get_node("..").get_children()
	pass
