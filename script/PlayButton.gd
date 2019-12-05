extends Button

func _on_PlayButton_pressed() -> void:  # Replace with function body.
	sounds.find_node("swooshing").play()
	stg_manager.change_stage(stg_manager.Game_stage)
	pass 
