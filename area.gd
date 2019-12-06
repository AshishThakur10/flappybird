extends Area2D
signal hit
func _ready() -> void:
	
	pass


func _on_area_body_entered(body: PhysicsBody2D) -> void:
	var bird =$"/root/utils".get_main_node().find_node("bird")
	if bird:
#		emit_signal("hit")
#		sounds.find_node("hit").play()
		pass
	pass # Replace with function body.
