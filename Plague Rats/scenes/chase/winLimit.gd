extends Timer






func save(save_game : Resource):
	if self.is_in_group("festival_level"):
		Global.levelsAvailable[1] = false
	elif self.is_in_group("level_3"):
		Global.levelsAvailable[2] = false 
		
	
	save_game.data["levels"] = Global.levelsAvailable

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
