extends Area2D


onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

export var chedda_score: = 1

func _on_Chedda_area_entered(area):
	anim_player.play("eat")
	Score.chedda_score += chedda_score
