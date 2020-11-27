extends Position2D


onready var group 

var endLvlLoader = load("res://scenes/nodes/Level End Node.tscn")
var endLevelNode

   #spawns node
func _on_CollisionShape2D_spawnEndLvl():
	   #use call_deferred for memory purposes
	call_deferred("deferredSpawn")
	

func deferredSpawn():
	
	if self.is_in_group("festival_level"):
		Global.levelsAvailable[1] = false
	elif self.is_in_group("Yes"): 
		pass
	
		
		
	endLevelNode = endLvlLoader.instance()
	   #add as child of the root
	get_node("..").add_child(endLevelNode)
	   #set position to endSpawn object
	endLevelNode.position = position
	



func _on_Goal_Node_area_entered(_area):
	pass
