extends Control

#11/18/20 Matthew
func _on_Play_pressed():
	get_tree().change_scene("res://scenes/level_select_.tscn") #link Play page here


func _on_Settings_pressed():
	get_tree().change_scene("res://scenes/Menu/settings_screen.tscn") #link Settings page here


func _on_Costumes_pressed():
	get_tree().change_scene("res://scenes/Menu/PlaceHolder Menu.tscn") #link Costumes page here


func _on_Credits_pressed():
	get_tree().change_scene("res://scenes/Menu/PlaceHolder Menu.tscn") #roll credits