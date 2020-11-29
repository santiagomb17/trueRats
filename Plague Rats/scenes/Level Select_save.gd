extends Button

#onready var Levels = Global.levelsAvailable

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func save(save_game : Resource):
	save_game.data["levels"] = Global.levelsAvailable

func load(save_game : Resource):
	Global.levelsAvailable = save_game.data["levels"]



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
