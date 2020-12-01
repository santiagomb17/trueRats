extends Node2D

var rngSeed = RandomNumberGenerator.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var player = get_node("player")

# Called when the node enters the scene tree for the first time.
func _ready():
	select_threat()

func select_threat():
	rngSeed.randomize()
	#print(player.state)
	if player.state != player.DEAD:
		$"timer holder".get_child(rngSeed.randi() % $"timer holder".get_child_count()).start()
	if player.state == player.DEAD:
		get_tree().change_scene("res://scenes/level_select_.tscn")

func _on_top_button_pressed():
	var button = get_node("button holder/top button")
	var timer = get_node("timer holder/top timer/top")
	freePress(button, timer)

func _on_right_button_pressed():
	var button = get_node("button holder/right button")
	var timer = get_node("timer holder/right timer/right")
	freePress(button, timer)

func _on_bot_buttton_pressed():
	var button = get_node("button holder/bot button")
	var timer = get_node("timer holder/bot timer/bot")
	freePress(button, timer)

func _on_bot_timeout():
	print("DEAD")
	player.state = player.DEAD
	###spawn menu
	
	###spawn menu

func _on_right_timeout():
	print("DEAD")
	player.state = player.DEAD
	###spawn menu
	#get_tree().change_scene("res://scenes/level_select_.tscn")
	###spawn menu

func _on_top_timeout():
	print("DEAD")
	player.state = player.DEAD
	###spawn menu
	#get_tree().change_scene("res://scenes/level_select_.tscn")
	###spawn menu

func freePress(button, timer):
	button.hide()
	timer.stop()

func _on_winLimit_timeout():
	
	print("SUCCESSFUL CHASE")
	get_tree().change_scene("res://scenes/level_select_.tscn")
