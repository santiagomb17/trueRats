extends Button

var unlocked = 0

var ytEnabled# = false

func _on_WhiteButton_pressed():

	if Score.get_chedda_score() >= 2:
		White.ytEnabled = true
		print("YUP")
