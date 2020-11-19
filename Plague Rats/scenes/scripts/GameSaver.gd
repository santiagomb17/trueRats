extends Node

const SaveGame = preload("res://gamesave.gd")
var SAVE_FOLDER : String = "user://debug/save"
var SAVE_NAME_TEMPLATE : String = "save_%03d.tres"

func save(id : int):
	var save_game := SaveGame.new()
	for node in get_tree().get_nodes_in_group('save'):
		node.save(save_game)
	
	var directory : Directory = Directory.new()
	if not directory.dir_exist(SAVE_FOLDER):
		directory.make_dir_recursive(SAVE_FOLDER)
	
	var save_path = SAVE_FOLDER.plus_file(SAVE_NAME_TEMPLATE % id)
	var error : int = Resource.save(save_path, save_game)
	if error != OK:
		print('Issue writing save ' % [id, save_path])

