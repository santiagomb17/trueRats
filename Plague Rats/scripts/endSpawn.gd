extends Position2D


var endLvlLoader = load("res://scenes/nodes/Level End Node.tscn")
var endLevelNode

   #spawns node
func _on_CollisionShape2D_spawnEndLvl():
	   #use call_deferred for memory purposes
	call_deferred("deferredSpawn")
	

func deferredSpawn():
	   #instance node
	endLevelNode = endLvlLoader.instance()
	   #add as child of the root
	get_node("..").add_child(endLevelNode)
	   #set position to endSpawn object
	endLevelNode.position = position




func _on_Goal_Node_area_entered(area):
	pass # Replace with function body.
