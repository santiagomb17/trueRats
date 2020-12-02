extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




func _on_scene_wait_timeout():
	$anime.play("ending")
	$credit_start.start()

func _on_credit_start_timeout():
	$anime.play("prog_fade")
	$Programmer.start()


func _on_Programmer_timeout():
	$anime.play("art_fade")
	$Art.start()
	pass 

func _on_Art_timeout():
	$anime.play("sound_fade")
	$Sound.start()

func _on_Sound_timeout():
	var button = get_node("credit holder/return")
	button.visible = true;



func _on_return_pressed():
	pass # Replace with function body.
