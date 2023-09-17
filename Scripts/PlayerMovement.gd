extends KinematicBody2D

class_name PlayerMovement

export(int) var speed = 80.0

func _physics_process(delta):
	var velocity =  Vector2.ZERO
	if Input.is_action_pressed("Move_Right"):
		velocity.x += 1.0
	if Input.is_action_pressed("Move_Left"):
		velocity.x -= 1.0
	if Input.is_action_pressed("Move_Down"):
		velocity.y += 1.0
	if Input.is_action_pressed("Move_Up"):
		velocity.y -= 1.0
	
	velocity = velocity.normalized()
	
	if velocity == Vector2.ZERO:
		$AnimationTree.get("parameters/playback").travel("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Walk")		
		$AnimationTree.set("parameters/Idle/blend_position", velocity)
		$AnimationTree.set("parameters/Walk/blend_position", velocity)
		move_and_slide(velocity * speed)
	
	#OnScreenKeyboard.set_on_screen_input_vector(velocity)

