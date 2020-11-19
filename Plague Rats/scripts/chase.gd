extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var player = get_node("player")

# Called when the node enters the scene tree for the first time.
func _ready():
	select_threat()




func select_threat():
	print(player.state)
	if player.state != player.DEAD:
		$"timer holder".get_child(randi() % $"timer holder".get_child_count()).start()
	if player.state == player.DEAD:
		print("DISPLAY DEATH MENU")


func _on_top_button_pressed():
	var button = get_node("button holder/top button")
	var timer = get_node("timer holder/top timer/top")
	button.hide()
	timer.stop()
	


func _on_right_button_pressed():
	var button = get_node("button holder/right button")
	var timer = get_node("timer holder/right timer/right")
	button.hide()
	timer.stop()


func _on_bot_buttton_pressed():
	var button = get_node("button holder/bot button")
	var timer = get_node("timer holder/bot timer/bot")
	button.hide()
	timer.stop()
	


func _on_bot_timeout():
	print("DEAD")
	player.state = player.DEAD
	pass # Replace with function body.


func _on_right_timeout():
	print("DEAD")
	player.state = player.DEAD
	pass # Replace with function body.


func _on_top_timeout():
	print("DEAD")
	player.state = player.DEAD
	pass # Replace with function body.
