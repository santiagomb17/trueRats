extends Node

const SaveGame = preload("res://scenes/scripts/gamesave.gd")
var SAVE_FOLDER : String = "res://save"
var SAVE_NAME_TEMPLATE : String = "save_1.tres"


func save():
	var save_game := SaveGame.new()
	for node in get_tree().get_nodes_in_group('save'):
		node.save(save_game)
	
	var directory : Directory = Directory.new()
	if not directory.dir_exists(SAVE_FOLDER):
		directory.make_dir_recursive(SAVE_FOLDER)
	
	var save_path = SAVE_FOLDER.plus_file(SAVE_NAME_TEMPLATE)
	var error : int = ResourceSaver.save(save_path, save_game)
	if error != OK:
		print('Issue writing save ' % [ save_path])

func load():
	var save_file_path : String = SAVE_FOLDER.plus_file(SAVE_NAME_TEMPLATE )
	var file : File = File.new()
	if not file.file_exists(save_file_path):
		print("Save file %s doesnt exist" % save_file_path)
		return
	var save_game : Resource = load(save_file_path)
	for node in get_tree().get_nodes_in_group('save'):
		node.load(save_game)



func _on_Node_ready():
	pass # Replace with function body.
