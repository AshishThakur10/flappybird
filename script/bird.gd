extends RigidBody2D
signal hit

var st = true
func _ready():
	set_linear_velocity(Vector2(25,get_linear_velocity().y)) #constant forward velocity in x axis
	add_to_group(game.GROUP_BIRD)  
	connect("body_entered", self, "_on_body_enter")
	pass

func _process(delta):
	if rad2deg(get_rotation()) < -30: # rotation of the bird
		set_rotation(deg2rad(-30))   
		set_angular_velocity(0)
	if get_linear_velocity().y > 0:
		set_angular_velocity(1.5)
	pass

func _input(event):
	if Input.is_action_just_pressed("flap") and st == true:
		sounds.find_node("wing").play()   #input event
		flap()                            # calling  of flap function
	pass

func flap():
	set_linear_velocity(Vector2(get_linear_velocity().x,-110)) #velocity for y axis in upward direction
	set_angular_velocity(-3)
	$animsprite.play("flap")                                  #velocity for rotation
	pass

func _on_body_enter(body):
	if body.is_in_group(game.GROUP_PIPE):
		hit()
	elif body.is_in_group(game.GROUP_GROUND):
		hit()
		sounds.find_node("hit").play()
		pass
	pass

func hit():
	emit_signal("hit")
	st = false
	set_linear_velocity(Vector2(0,0))
	set_angular_velocity(0)

	print("hhhit")
	pass
