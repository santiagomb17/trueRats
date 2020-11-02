extends CollisionShape2D

#NODE GLOSSARY
#   . -> current node    
#   .. -> parent of current node
#   $nodeName -> child of current node
#   ../nodeName -> child of parent node
#   etc, etc

#onready var validNodeCollider #this is a gameObject  
#onready var validClick = false
onready var pos2D = get_node("../Position2D")         #getting position for the player to spawn at when clicked
onready var playerObject = get_node("../../player")   #getting the player object
onready var currNode = get_node("..")                 #reference to the current node
#onready var endLevelNode = load("res://scenes/nodes/special nodes/goal node.tscn")
#onready var endSpawn = get_node("../../endSpawn")

signal spawnEndLvl
   #happens whenever button is clicked
func _on_Button_pressed():
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	
	   #if on the same vert/hori level and not diagonal 9/21/2020
	   #changing so you just have to be on the same x/y-axis 10/27/2020
	#if (horiz <= 50 && vert <= 50) && (horiz == 0 || vert == 0):
	if horiz == 0 || vert == 0:
		playerObject.global_position = pos2D.global_position

#   #function executes whenever an area2D LEAVES the collider  
#func _on_Area2D_area_exited(area):
#	   pass

func _on_Move_Node_area_entered(_area):
	   #if end node success state
	if currNode.is_in_group("end level"):
		print("CONGLATURATIONS YOU  ARE WINNAR1")
	   #if goal node then send signal to spawn end node
	elif currNode.is_in_group("goal node") :
		print("ENTERD GOAL")
		if get_node("../../Level Start Node"):
			print("ENTERD LVL")
			get_node("../../Level Start Node").queue_free()
			emit_signal("spawnEndLvl")

#
#func _on_Move_Node_area_exited(area):
#	pass # Replace with function body.
