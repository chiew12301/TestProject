extends Camera2D

class_name CameraController

var player

func _ready():
	player= get_node("/root/Scene/Player")
	

func _process(delta : float) -> void:
	position.x=player.position.x
	position.y=player.position.y
