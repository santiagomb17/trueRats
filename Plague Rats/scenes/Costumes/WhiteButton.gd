extends Button

var unlocked = 0



func _on_WhiteButton_pressed():
	if Score.get_chedda_score() == 2:
		Player.set_costume(1)
