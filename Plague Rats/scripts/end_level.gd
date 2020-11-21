extends CollisionShape2D



onready var pos2D = get_node("../Position2D")         #getting position for the player to spawn at when clicked
onready var playerObject = get_node("../../player")   #getting the player object


   #this method handles player movement
   #LAST UPDATED 11/8/2020
func _on_Button_pressed():
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	
	   #if on the same vert/hori level and not diagonal 9/21/2020
	   #changing so you just have to be on the same x/y-axis 10/27/2020
	if horiz == 0 || vert == 0:
		playerObject.global_position = pos2D.global_position
		


   #this method will handle the level transition
   #LAST UPDATED 11/8/2020
func _on_Level_End_Node_area_entered(_area):
	playerObject.state = playerObject.FIN
	print("CONGLATURATIONS YOU ARE WINNAR1")
