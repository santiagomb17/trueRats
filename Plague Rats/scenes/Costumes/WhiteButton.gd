extends Button

var unlocked = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	if Score.get_chedda_score() == 2:
		unlocked = 1
		return unlocked
	


func _on_WhiteButton_pressed():
	if unlocked == 1:
		Player.set_costume(1)
