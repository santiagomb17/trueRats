extends CollisionShape2D

#NODE GLOSSARY
#   . -> current node    
#   .. -> parent of current node
#   $nodeName -> child of current node
#   ../nodeName -> child of parent node
#   etc, etc

onready var validNodeCollider #this is a gameObject  
onready var validClick = false
onready var pos2D = get_node("../Position2D")   #the ../ works just like a directory in LINUX
onready var playerObject = get_node("../../player")
onready var currNode = get_node("..")
onready var endLevelNode = load("res://scenes/nodes/special nodes/goal node.tscn")
onready var endSpawn = get_node("../../endSpawn")

signal spawnEndLvl
   #happens whenever button is clicked
func _on_Button_pressed():
	if validClick:
		print("VALID CLICK")
		   #pos2D needs to be global otherwise it'll move playerObject by relative position
		playerObject.position = pos2D.global_position
		   #needed to prevent double clicks
		   #double clicks aren't game breaking, but would want to avoid them
		#validClick = false

   #function executes whenever an area2D LEAVES the collider  
func _on_Area2D_area_exited(area):
	   #since this is a generic script it needs to check if each raycast exists as a child
	if area.is_in_group("player"):
		if currNode.has_node("upCast"):
			currNode.get_node("upCast").enabled = false
		if currNode.has_node("rightCast"):
			currNode.get_node("rightCast").enabled = false
		if currNode.has_node("downCast"):
			currNode.get_node("downCast").enabled = false
		if currNode.has_node("leftCast"):
			currNode.get_node("leftCast").enabled = false
			
	#validClick = false
	

   #function executes whenever an area2D ENTERS the collider  
func _on_Area2D_area_entered(area):
	#validClick = false
	   #since this is a generic script it needs to check if each raycast exists as a child
	if area.is_in_group("player"):
		if currNode.has_node("upCast"):
			currNode.get_node("upCast").enabled = true
			
		if currNode.has_node("rightCast"):
			currNode.get_node("rightCast").enabled = true
			
		if currNode.has_node("downCast"):
			currNode.get_node("downCast").enabled = true
			
		if currNode.has_node("leftCast"):
			currNode.get_node("leftCast").enabled = true
			
	if currNode.is_in_group("end level"):
		print("CONGLATURATIONS YOU  ARE WINNAR1")
	elif currNode.is_in_group("goal node") :
		if get_node("../../Level Start Node"):
			get_node("../../Level Start Node").queue_free()
			emit_signal("spawnEndLvl")
			
			
			
			
			
			


