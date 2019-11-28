#healper
extends Node


func get_main_node():     #Getting the main node
	var root_node = get_tree().get_root()
	return root_node.get_child(root_node.get_child_count()-1)
	pass