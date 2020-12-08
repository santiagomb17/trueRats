extends Control




onready var levelAvailable = Global.levelsAvailable 

onready var levelButton = [get_node("VBoxContainer/Button"), get_node("VBoxContainer2/Button2"),get_node("VBoxContainer3/Button3"),get_node("VBoxContainer4/Button4"),get_node("VBoxContainer5/Button5"),get_node("VBoxContainer6/Button9"),get_node("VBoxContainer7/Button6"),get_node("VBoxContainer8/Button7"),get_node("VBoxContainer9/Button8"),get_node("VBoxContainer10/Button10"),get_node("VBoxContainer11/Button11"),get_node("VBoxContainer12/Button12")]

func _ready():
	for i in range(12):
		levelButton[i].set_disabled(levelAvailable[i])
	
	###examples
	###levelUnlockedvar[temp.get_groups()] = true
	####examples
	
#	for i in levelAvailable:
#		levelButton[i].set_disabled(levelAvailable[i])


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/levels/levelone.tscn")

func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/levels/leveltwo.tscn")



func _on_Button3_pressed():
	get_tree().change_scene("res://scenes/levels/levelthree.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://scenes/levels/levelfour.tscn")


func _on_Button5_pressed():
	get_tree().change_scene("res://scenes/levels/levelfive.tscn")


func _on_Button9_pressed():
	get_tree().change_scene("res://scenes/levels/levelnine.tscn")


func _on_Button6_pressed():
	get_tree().change_scene("res://scenes/levels/levelsix.tscn")


func _on_Button7_pressed():
	get_tree().change_scene("res://scenes/levels/levelseven.tscn")


func _on_Button8_pressed():
	get_tree().change_scene("res://scenes/levels/leveleight.tscn")


func _on_Button10_pressed():
	get_tree().change_scene("res://scenes/levels/levelten.tscn")


func _on_Button11_pressed():
	pass


func _on_Button12_pressed():
	pass # Replace with function body.

func _on_BackButton_pressed():
	get_tree().change_scene("res://scenes/Play.tscn")

func save(save_game : Resource):
	save_game.data["level_select"] = levelAvailable


