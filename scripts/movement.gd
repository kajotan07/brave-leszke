
func go_left(player, delta):
	change_position_x(player, delta, -1)

func go_right(player, delta):
	change_position_x(player, delta, 1)
	play_walking_sprite(player, 10)

func jump(player, delta):
	player.set_axis_velocity(Vector2(0, -100))
	player.get_tree().set_input_as_handled()

func change_position_x(player, delta, direction):
	var value = direction * 100
	player.set_axis_velocity(Vector2(value, 00))
	player.get_tree().set_input_as_handled()

func play_walking_sprite(player, frame):
	var sprite = player.get_node('walesa')

func side(player, direction):
	var sprite = player.get_node("playerSprite")
	if (direction == "left"):
		sprite.set_scale(Vector2(-1, 1))
	elif (direction == "right"):
		sprite.set_scale(Vector2(1, 1))
	
	