#coin gd
extends Area2D


func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	pass


func _on_coin_body_entered(body: PhysicsBody2D) -> void:
	if body.is_in_group(game.GROUP_BIRD):
		game.score +=1     # increase score
		pass
	pass 
