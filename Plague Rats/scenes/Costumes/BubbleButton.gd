extends Button


var bubEnabled# = false

func _on_CostumeButtons_pressed():
	if Score.get_chedda_score() >= 4:
		Bubble.bubEnabled = true
		#Player.set_costume(1)
