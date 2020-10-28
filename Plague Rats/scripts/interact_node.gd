extends CollisionShape2D

   #changeable variable that is accessed
   #in the editor to change distance
   #needed to interact with objects
   #in the environment
export(float) var interDist
onready var hiddenNode = get_node("../../Move Node")
onready var playerObject = get_node("../../player")
onready var pos2D = get_node("../Position2D")


# Called when the node enters the scene tree for the first time.
func _ready():
	#interDist = global_position
	hiddenNode.visible = false
	pass # Replace with function body.



func _on_Button_pressed():
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	if (horiz <= interDist && vert <= interDist) && (horiz == 0 || vert == 0):
		hiddenNode.visible = true
		print("Enterd ReVis")
	pass # Replace with function body.


func _on_Interact_Node_area_entered(area):
	pass # Replace with function body.


func _on_Interact_Node_area_exited(area):
	pass # Replace with function body.
