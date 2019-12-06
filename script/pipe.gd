# script: pipe

extends StaticBody2D
signal del
onready var right  = get_node("right")
onready var camera = utils.get_main_node().get_node("camera")

func _ready():
	add_to_group(game.GROUP_PIPE)
	set_process(true)
	pass

func _process(delta):
#	if camera == null: return
	
	if right.get_global_position().x <= camera.get_total_position().x:
		queue_free()
		emit_signal("del")
		pass
