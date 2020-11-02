extends CollisionShape2D

   #changeable variable that is accessed
   #in the editor to change distance
   #needed to interact with objects
   #in the environment
export(float) var interDist
export(Array, NodePath) var hidPath
onready var hiddenNode = []# = [get_node(hidPath[0])]
onready var playerObject = get_node("../../player")
onready var pos2D = get_node("../Position2D")


# Called when the node enters the scene tree for the first time.
func _ready():
	#interDist = global_position
	for i in hidPath.size():
		#hiddenNode[i] = get_node(hidPath[i])
		hiddenNode.append(get_node((hidPath[i])))
		pass
	
	for i in hiddenNode.size():
		hiddenNode[i].visible = false
	#print(hidPath)
	pass



func _on_Button_pressed():
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	if (horiz <= interDist && vert <= interDist) && (horiz == 0 || vert == 0):
		for i in hiddenNode.size():
			hiddenNode[i].visible = true
		print("Enterd ReVis")
	pass # Replace with function body.

