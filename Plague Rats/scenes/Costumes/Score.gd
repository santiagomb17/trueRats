extends Node

signal chedda_score_updated


var chedda_score = 0 setget set_chedda_score

func set_chedda_score(value: int) -> void:
	chedda_score = value
	emit_signal("chedda_score_updated")
