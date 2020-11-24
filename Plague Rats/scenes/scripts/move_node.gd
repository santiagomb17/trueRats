extends CollisionShape2D

#NODE GLOSSARY
#   . -> current node    
#   .. -> parent of current node
#   $nodeName -> child of current node
#   ../nodeName -> child of parent node
#   etc, etc


onready var pos2D = get_node("../Position2D")         #getting position for the player to spawn at when clicked
onready var playerObject = get_node("../../../player")   #getting the player object
onready var currNode = get_node("..")                 #reference to the current node

   #button press handles player postion
   #LAST UPDATED 10/27/2020
func _on_Button_pressed():
	if playerObject.state == playerObject.MOVING || playerObject.state == playerObject.HIDDEN:
		var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
		var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	
	   #if on the same vert/hori level and not diagonal 9/21/2020
	   #changing so you just have to be on the same x/y-axis 10/27/2020
	#if (horiz <= 50 && vert <= 50) && (horiz == 0 || vert == 0):
		if horiz == 0 || vert == 0:
			playerObject.global_position = pos2D.global_position


