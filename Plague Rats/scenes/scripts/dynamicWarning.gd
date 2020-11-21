extends Timer

onready var timer = get_node(".")

func _on_dynamicWarning_timeout():
	print("GET TO SAFETY")
	timer


func _on_dynamicThreat_timeout():
	timer.start()
