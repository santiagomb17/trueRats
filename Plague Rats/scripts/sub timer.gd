extends Timer


onready var base = get_node("../../..")
onready var player = get_node("../../../player")

onready var button1 = get_node("../../../button holder/top button")
onready var button2 = get_node("../../../button holder/right button")
onready var button3 = get_node("../../../button holder/bot button")
# Called when the node enters the scene tree for the first time.
func _ready():
	button1.hide()
	button2.hide()
	button3.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_top_timer_timeout():
	#print("TOP")
	#var button = get_node("../../../button holder/top button")
	button1.show()
	base.select_threat()
	start(2)


func _on_right_timer_timeout():
	#print("RIGHT")
	#var button = get_node("../../../button holder/right button")
	button2.show()
	base.select_threat()
	start(2)


func _on_bot_timer_timeout():
	#print("BOT")
	#var button = get_node("../../../button holder/bot button")
	button3.show()
	base.select_threat()
	start(2)

