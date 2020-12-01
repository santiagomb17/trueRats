extends Control

onready var game_saver : Node = $GameSaver
onready var continueb = get_node("Continue")
onready var sprite = get_node("Continue/Sprite")


func _on_New_Game_pressed():
	 Global.levelsAvailable = [false, true, true, true, true, true, true, true, true, true, true, true]
	 game_saver.save() 
	 get_tree().change_scene("res://scenes/level_select_.tscn")
func _on_Continue_pressed():
	game_saver.load()
	get_tree().change_scene("res://scenes/level_select_.tscn")
	
func _on_Level_Select_pressed():
	get_tree().change_scene("res://scenes/level_select_.tscn")

func _on_Return_pressed():
	get_tree().change_scene("res://scenes/Menu/Main Menu.tscn")
