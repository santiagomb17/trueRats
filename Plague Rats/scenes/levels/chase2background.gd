extends Sprite

const VELOCITY: float = -4.5
var g_texture_width: float = 0

func _ready():
	g_texture_width = texture.get_size().x * scale.x

func _process(delta: float) -> void:
	position.x += VELOCITY
	_attempt_reposition()
	
func _attempt_reposition() -> void:
	if position.x < -g_texture_width:
		# Don't just reset position to texture width, otherwise there will be a gap
		position.x += 2 * g_texture_width
