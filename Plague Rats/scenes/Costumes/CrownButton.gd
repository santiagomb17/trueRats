extends Button

var crownFallen


func _on_CostumeButtons_pressed():
	if Score.get_chedda_score() >= 10:
			King.crownFallen = false
			#Player.set_costume(1)
	
