extends RigidBody2D

const Movement = preload("movement.gd")
onready var movement = Movement.new()

func _ready():
	self.set_process(true)

func _process(delta):
	# MOVEMENT
	var anim = ""
	var sideDirection = ""
	
	if (Input.is_action_pressed("move_right")):
		#movement.go_right(self, delta)
		sideDirection = "right"
		anim = "walking"
	if (Input.is_action_pressed("move_left")):
		#movement.go_left(self, delta)
		sideDirection = "left"
		anim = "walking"
		get_node("anim").play("walking")
	if (Input.is_action_pressed("jump")):
		movement.jump(self, delta)
		
	get_node("anim").play(anim)
	movement.side(self, sideDirection)
