extends Position2D



onready var group 
signal save_level

var endLvlLoader = load("res://scenes/nodes/Level End Node.tscn")
var endLevelNode

   #spawns node
func _on_CollisionShape2D_spawnEndLvl():
	   #use call_deferred for memory purposes
	call_deferred("deferredSpawn")
	

func deferredSpawn():
	
	if self.is_in_group("level1"):
		Global.levelsAvailable[1] = false
	elif self.is_in_group("level2"): 
		Global.levelsAvailable[2] = false
	elif self.is_in_group("level3"):
		Global.levelsAvailable[3] = false
	elif self.is_in_group("level4"): 
		Global.levelsAvailable[4] = false
	elif self.is_in_group("level5"):
		Global.levelsAvailable[5] = false
	elif self.is_in_group("level6"): 
		Global.levelsAvailable[6] = false


	emit_signal("save_level")
		
		
	
	endLevelNode = endLvlLoader.instance()
	   #add as child of the root
	get_node("..").add_child(endLevelNode)
	   #set position to endSpawn object
	endLevelNode.position = position
	
func save(save_game : Resource):
	save_game.data["levels"] = Global.levelsAvailable


#func _on_Goal_Node_area_entered(_area):
#	pass
