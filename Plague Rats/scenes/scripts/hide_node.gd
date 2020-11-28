extends CollisionShape2D

onready var playerObject = get_node("../../player")   #getting the player object
onready var pos2D = get_node("../Position2D")         #getting position for the player to spawn at when clicked

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Button_pressed():
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	
	   #if on the same vert/hori level and not diagonal 9/21/2020
	   #changing so you just have to be on the same x/y-axis 10/27/2020
	if horiz == 0 || vert == 0:
		playerObject.global_position = pos2D.global_position



   #hides the player
   #LAST UPDATED 11/8/2020
func _on_hide_node_area_entered(_area):
	playerObject.isHidden = true
	print("Hidden")



   #unhides the player
   #LAST UPDATED 11/8/2020
func _on_hide_node_area_exited(_area):
	playerObject.isHidden = false
	print("Revealed")

