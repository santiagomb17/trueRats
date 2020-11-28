extends Control

#11/28/2020 -Matthew

func _on_New_Game_pressed():
	pass # Wipe save, and start a new save file.

func _on_Continue_pressed():
	pass # Replace with Load Function
	
func _on_Level_Select_pressed():
	get_tree().change_scene("res://scenes/level_select_.tscn")

func _on_Return_pressed():
	get_tree().change_scene("res://scenes/Menu/Main Menu.tscn")
