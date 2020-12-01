extends ColorRect

signal fade_done

func fade_in():
	$AnimationPlayer.play("Fade")

func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("fade_done")
