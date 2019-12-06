extends Node
signal score_changed

const GROUP_BIRD ="bird"
const GROUP_PIPE ="pipe"
const GROUP_GROUND ="ground"

var score = 0 setget _set_score
var score_best = 0

func _ready() -> void:
	pass

func _set_score(new_value):
	score = new_value
	emit_signal("score_changed")
	pass