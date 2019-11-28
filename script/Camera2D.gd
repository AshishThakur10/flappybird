#camera script 
extends Camera2D    


onready var bird = utils.get_main_node().get_node("bird")  #entery of bird

func _ready():
	pass

#camera is following the bird
func _physics_process(delta):
	set_position(Vector2(bird.get_position().x,get_position().y))  #bird x position
	pass
func get_total_position():
	return get_position() + get_offset()
	pass