extends Button


var sombEnabled

func _on_CostumeButtons_pressed():
	if Score.get_chedda_score() >= 2:
			Somb.sombEnabled = true
			#Player.set_costume(1)
