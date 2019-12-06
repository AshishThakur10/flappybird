extends CanvasLayer
const Game_stage="res://stages/game_stage.tscn"

func _ready() -> void:
	pass

func change_stage(stage_path):
	#strat anim fade_in
	
	get_node("anim").play("fade_in")
	yield(get_node("anim"),"animation_finished")
	
	get_tree().change_scene(stage_path)  #change scene
	
	#strat anim fade_out
	
	get_node("anim").play("fade_out")
	yield(get_node("anim"),"animation_finished")
	pass