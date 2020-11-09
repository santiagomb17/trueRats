extends Timer

onready var playerObject = get_node("../player")   #getting the player object
onready var timer = get_node(".")
onready var check = false

   #managing when to send out the get to safety message
   #LAST UPDATED 11/8/2020
func _process(_delta):
	if timer.time_left <= 10 && !check:
		print("GET TO SAFETY")
		check = !check



   #managing player death from off screen threat
   #LAST UPDATED 11/8/2020
func _on_dynamicThreat_timeout():
	if playerObject.isHidden == false && !playerObject.isDead:
		playerObject.isDead = true
	if playerObject.isDead:
		print("YOU ARE DEAD")
	check = !check

