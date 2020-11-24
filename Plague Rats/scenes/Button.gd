extends Button

var butt = false

# Called when the node enters the scene tree for the first time
func save(save_game : Resource):
	save_game.data["pls"] = butt

func load(save_game : Resource):
	butt = save_game.data["pls"]
