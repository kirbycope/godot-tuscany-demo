extends Node3D

@onready var player = $Player


## Called when the node enters the scene tree for the first time.
func _ready() -> void:

	# Put the player in first-person perspective
	$Player.camera.switch_to_first_person()
