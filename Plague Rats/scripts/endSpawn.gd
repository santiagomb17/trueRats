extends Position2D


var endLvlLoader = load("res://scenes/nodes/special nodes/Level End Node.tscn")
var endLevelNode


func _on_CollisionShape2D_spawnEndLvl():
	call_deferred("deferredSpawn")
	print("hit spawnEndLvl")
	
	
func deferredSpawn():
	endLevelNode = endLvlLoader.instance()
	get_node("..").add_child(endLevelNode)
	endLevelNode.position = position
	print("hit deferredSpawn")


