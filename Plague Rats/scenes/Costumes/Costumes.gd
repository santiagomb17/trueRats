extends Control

onready var chedda_score: Label = get_node("Label")

func _ready() -> void:
	Score.connect("chedda_score_updated", self,"update_chedda_score")
	update_chedda_score()


func update_chedda_score() -> void:
	chedda_score.text = "x %s" % Score.chedda_score
