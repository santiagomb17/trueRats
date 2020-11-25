extends Control


onready var G2 = Global.level2_unlocked
onready var G3 = Global.level3_unlocked
onready var G4 = Global.level4_unlocked
onready var G5 = Global.level5_unlocked
onready var G6 = Global.level6_unlocked
onready var G7 = Global.level7_unlocked
onready var G8 = Global.level8_unlocked
onready var G9 = Global.level9_unlocked
onready var G10 = Global.level10_unlocked
onready var G11 = Global.level11_unlocked
onready var G12 = Global.level12_unlocked

####examples
###onready var temp = get_tree().get_root()
###examples

onready var button = get_node("VBoxContainer/Button")
onready var button2 = get_node("VBoxContainer2/Button2")
onready var button3 = get_node("VBoxContainer3/Button3")
onready var button4 = get_node("VBoxContainer4/Button4")
onready var button5 = get_node("VBoxContainer5/Button5")
onready var button9 = get_node("VBoxContainer6/Button9")
onready var button6 = get_node("VBoxContainer7/Button6")
onready var button7 = get_node("VBoxContainer8/Button7")
onready var button8 = get_node("VBoxContainer9/Button8")
onready var button10 = get_node("VBoxContainer10/Button10")
onready var button11 = get_node("VBoxContainer11/Button11")
onready var button12 = get_node("VBoxContainer12/Button12")

func _ready():
	
	###examples
	###levelUnlockedvar[temp.get_groups()] = true
	####examples
	if G2:
		button2.set_disabled(false)
	else:
		button2.set_disabled(true)
	if G3:
		button3.set_disabled(false)
	else:
		button3.set_disabled(true)
	if G4:
		button4.set_disabled(false)
	else:
		button4.set_disabled(true)
	if G5:
		button5.set_disabled(false)
	else:
		button5.set_disabled(true)
	if G6:
		button6.set_disabled(false)
	else:
		button6.set_disabled(true)
	if G7:
		button7.set_disabled(false)
	else:
		button7.set_disabled(true)
	if G8:
		button8.set_disabled(false)
	else:
		button8.set_disabled(true)
	if G9:
		button9.set_disabled(false)
	else:
		button9.set_disabled(true)
	if G10:
		button10.set_disabled(false)
	else:
		button10.set_disabled(true)
	if G11:
		button11.set_disabled(false)
	else:
		button11.set_disabled(true)
	if G12:
		button12.set_disabled(false)
	else:
		button12.set_disabled(true)
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
	save_game.data["level_select_G2"] = G2
	save_game.data["level_select_G3"] = G3
	save_game.data["level_select_G4"] = G4
	save_game.data["level_select_G5"] = G5
	save_game.data["level_select_G6"] = G6
	save_game.data["level_select_G7"] = G7
	save_game.data["level_select_G8"] = G8
	save_game.data["level_select_G9"] = G9
	save_game.data["level_select_G10"] = G10
	save_game.data["level_select_G11"] = G11
	save_game.data["level_select_G12"] = G12

