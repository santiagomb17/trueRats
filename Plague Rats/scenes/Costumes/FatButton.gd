extends Button


var fatEnabled# = false

func _on_CostumeButtons_pressed():
	if Score.get_chedda_score() >= 8:
			Fat.fatEnabled = true
			#Player.set_costume(1)
