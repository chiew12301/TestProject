extends Node2D

class_name PlayerController

const MOVE_SPEED: float = 1.0
export var speed_multiplier: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta : float) -> void:
	if Input.is_action_pressed("Dash"):
		speed_multiplier = 2
	else:
		speed_multiplier = 1
	
	if Input.is_action_pressed("Move_Left"):
		position.x -= delta + (MOVE_SPEED * speed_multiplier)
	if Input.is_action_pressed("Move_Right"):
		position.x += delta + (MOVE_SPEED * speed_multiplier)
	if Input.is_action_pressed("Move_Up"):
		position.y -= delta + (MOVE_SPEED * speed_multiplier)
	if Input.is_action_pressed("Move_Down"):
		position.y += delta + (MOVE_SPEED * speed_multiplier)
	pass
