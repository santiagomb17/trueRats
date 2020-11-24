extends CollisionShape2D

   #changeable variable that is accessed
   #in the editor to change distance
   #needed to interact with objects
   #in the environment
export(float) var interDist           #minimum distance the player can be from
									  #the interact node to use it
export(Array, NodePath) var hidPath   #array of NodePaths
onready var hiddenNode = []           #array of Objects
onready var playerObject = get_node("../../../player")
onready var pos2D = get_node("../Position2D")


   #populates and hides nodes from editor
   #LAST UPDATED 11/8/2020
func _ready():
	   #for all the objects in hidPath append to hiddenNode and hide from player
	for i in hidPath.size():
		hiddenNode.append(get_node((hidPath[i])))
		hiddenNode[i].visible = false



   #this method handles unhiding nodes
   #LAST UPDATED 11/8/2020
func _on_Button_pressed():
	   #getting horizontal distance 
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	   #getting vertical distance 
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	   #if the player is in interDist (from editor) AND on parallel
	if (horiz <= interDist && vert <= interDist) && (horiz == 0 || vert == 0):
		   #show every hidden node
		for i in hiddenNode.size():
			hiddenNode[i].visible = true

