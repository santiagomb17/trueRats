extends Control

#11/18/20 Matthew
func _on_Play_pressed():
	get_tree().change_scene("res://scenes/Play.tscn") #link Play page here


func _on_Settings_pressed():
	get_tree().change_scene("res://scenes/Menu/settings_screen.tscn") #link Settings page here


func _on_Costumes_pressed():
	get_tree().change_scene("res://scenes/Costumes/Costumes.tscn") #link Costumes page here


func _on_Credits_pressed():
	get_tree().change_scene("res://scenes/Menu/Credits.tscn") #roll credits
