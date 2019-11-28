#ground script
extends StaticBody2D
signal destroyed 
onready var bottom_right = get_node("bottom_right")
onready var camera = utils.get_main_node().get_node("camera")
func _ready():
	pass

func _process(delta):
	if camera == null: return
	if bottom_right.get_global_position().x <= camera.get_total_position().x:
		queue_free()
		emit_signal("destroyed")
	pass