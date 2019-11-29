extends Node

const GROUP_BIRD ="bird"

var score = 0 setget _set_score
var score_best = 0

signal score_changed

func _ready() -> void:
	pass

func _set_score(new_value):
	score = new_value
	emit_signal("score_changed")
	pass