extends Timer

onready var playerObject = get_node("../player")   #getting the player object
onready var timer = get_node(".")
onready var check = false

   #managing when to send out the get to safety message
   #LAST UPDATED 11/8/2020
func _process(_delta):
	if timer.time_left <= 10 && !check && playerObject.state != playerObject.FIN:
		print("GET TO SAFETY")
		check = !check



   #managing player death from off screen threat
   #LAST UPDATED 11/19/2020
func _on_dynamicThreat_timeout():
	   #if player isn't hidden, kill them
	if playerObject.state != playerObject.HIDDEN && playerObject.state != playerObject.FIN:
		playerObject.state = playerObject.DEAD
	   #placeholder for the death menu prompt
	if playerObject.state == playerObject.DEAD:
		print("YOU ARE DEAD")
	check = !check

