extends RigidBody2D

var speed = 50

func _ready():
	set_linear_velocity(Vector2(25,get_linear_velocity().y)) #constant forward velocity in x axis
	add_to_group(game.GROUP_BIRD)  
	connect("body_enter", self, "_on_body_enter")
	pass

func _process(delta):
	if rad2deg(get_rotation()) < -30: # rotation of the bird
		set_rotation(deg2rad(-30))   
		set_angular_velocity(0)
	if get_linear_velocity().y > 0:
		set_angular_velocity(1.5)
	pass

func _input(event):
	if Input.is_action_just_pressed("flap"):   #input event
		flap()                                 # calling  of flap function
	pass

func flap():
	set_linear_velocity(Vector2(get_linear_velocity().x,-110)) #velocity for y axis in upward direction
	set_angular_velocity(-3)                                   #velocity for rotation
	pass

func _on_body_exited(body):
	pass # Replace with function body.
