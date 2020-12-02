extends Timer






func save(save_game : Resource):
	if self.is_in_group("level1"):
		Global.levelsAvailable[1] = false
	elif self.is_in_group("level7"):
		Global.levelsAvailable[7] = false 
		
	
	save_game.data["levels"] = Global.levelsAvailable

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
