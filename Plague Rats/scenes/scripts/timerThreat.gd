extends Node2D

onready var playerObject = get_node("../player")   #getting the player object
onready var timer = get_node("dynamicThreat")
onready var warnSprite = get_node("warning sprite")
onready var anim = get_node("animator")

onready var check = false

   #managing when to send out the get to safety message
   #LAST UPDATED 11/25/2020
func _process(_delta):
	if timer.time_left <= 5.5 && !check && playerObject.state != playerObject.FIN:
		anim.play("flicker")
		#print("GET TO SAFETY")
		check = !check

   #managing player death from off screen threat
   #LAST UPDATED 11/25/2020
func _on_dynamicThreat_timeout():
	   #if player isn't hidden, kill them
	if playerObject.state != playerObject.HIDDEN && playerObject.state != playerObject.FIN:
		warnSprite.visible = false
		playerObject.state = playerObject.DEAD
	   #placeholder for the death menu prompt
	if playerObject.state == playerObject.DEAD:
		get_tree().change_scene("res://scenes/Level Transition/Game Over.tscn")
	check = !check

