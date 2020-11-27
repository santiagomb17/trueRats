extends Control



#	make singleton ^^^
##
# match group
#	festival
#		lvlAva[2] = true
#	graveyard
#		lvlAva[5] = true
##



####examples
###onready var temp = get_tree().get_root()
###examples

onready var levelAvailable = Global.levelsAvailable 

onready var levelButton = [get_node("VBoxContainer/Button"), get_node("VBoxContainer2/Button2"),get_node("VBoxContainer3/Button3"),get_node("VBoxContainer4/Button4"),get_node("VBoxContainer5/Button5"),get_node("VBoxContainer6/Button9"),get_node("VBoxContainer7/Button6"),get_node("VBoxContainer8/Button7"),get_node("VBoxContainer9/Button8"),get_node("VBoxContainer10/Button10"),get_node("VBoxContainer11/Button11"),get_node("VBoxContainer12/Button12")]

#onready var button = get_node("VBoxContainer/Button")
#onready var button2 = get_node("VBoxContainer2/Button2")
#onready var button3 = get_node("VBoxContainer3/Button3")
#onready var button4 = get_node("VBoxContainer4/Button4")
#onready var button5 = get_node("VBoxContainer5/Button5")
#onready var button9 = get_node("VBoxContainer6/Button9")
#onready var button6 = get_node("VBoxContainer7/Button6")
#onready var button7 = get_node("VBoxContainer8/Button7")
#onready var button8 = get_node("VBoxContainer9/Button8")
#onready var button10 = get_node("VBoxContainer10/Button10")
#onready var button11 = get_node("VBoxContainer11/Button11")
#onready var button12 = get_node("VBoxContainer12/Button12")

#onready var boo = levelAvailable[0]

func _ready():
	for i in range(12):
		levelButton[i].set_disabled(levelAvailable[i])
	
	###examples
	###levelUnlockedvar[temp.get_groups()] = true
	####examples
	
#	for i in levelAvailable:
#		levelButton[i].set_disabled(levelAvailable[i])


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/levels/festival_level.tscn")

func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/Base Scene.tscn")



func _on_Button3_pressed():
	pass


func _on_Button4_pressed():
	pass # Replace with function body.


func _on_Button5_pressed():
	pass # Replace with function body.


func _on_Button9_pressed():
	pass # Replace with function body.


func _on_Button6_pressed():
	pass # Replace with function body.


func _on_Button7_pressed():
	pass # Replace with function body.


func _on_Button8_pressed():
	pass # Replace with function body.


func _on_Button10_pressed():
	pass # Replace with function body.


func _on_Button11_pressed():
	pass # Replace with function body.


func _on_Button12_pressed():
	pass # Replace with function body.

func _on_BackButton_pressed():
	get_tree().change_scene("res://scenes/Menu/Main Menu.tscn")

func save(save_game : Resource):
	save_game.data["level_select"] = levelAvailable


