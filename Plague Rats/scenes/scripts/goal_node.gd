extends CollisionShape2D

export(bool) var isGoal
export(bool) var isCheese

onready var pos2D = get_node("../Position2D")         #getting position for the player to spawn at when clicked
onready var playerObject = get_node("../../player")   #getting the player object

signal spawnEndLvl

   #handles movement
   #LAST UPDATED 11/8/2020
func _on_Button_pressed():
	var horiz = abs(playerObject.global_position.x - pos2D.global_position.x)
	var vert = abs(playerObject.global_position.y - pos2D.global_position.y)
	
	   #if on the same vert/hori level and not diagonal 9/21/2020
	   #changing so you just have to be on the same x/y-axis 10/27/2020
	if horiz == 0 || vert == 0:
		playerObject.startpos = playerObject.global_position
		playerObject.nextpos = pos2D.global_position


   #this method handles spawning the end level
   #LAST UPDATED 11/8/2020
func _on_Goal_Node_area_entered(_area):
	if isGoal:
		if get_node("../../Level Start Node"):
			get_node("../../Level Start Node").queue_free()
			emit_signal("spawnEndLvl")
	elif isCheese:
		print("Got Cheese!")   #replace this with the code that manages cheese
