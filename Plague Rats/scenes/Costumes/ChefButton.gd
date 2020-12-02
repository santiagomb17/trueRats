extends Button

var chefEnabled

func _on_CostumeButtons_pressed():
	if Score.get_chedda_score() >= 6:
			Chef.chefEnabled = true
			#Player.set_costume(1)
	
