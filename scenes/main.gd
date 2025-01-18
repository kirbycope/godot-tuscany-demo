extends Node3D


## Called when the node enters the scene tree for the first time.
func _ready() -> void:

	# Disable the mouse pointer and capture the motion
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	# Make sure the game is unpaused
	Globals.game_paused = false

	# Put the player in first-person perspective
	$Player.perspective = 1

	# Set camera's position
	$Player/CameraMount/Camera3D.position = Vector3(0.0, 0.0, 0.0)

	# Set the camera's raycast position to match the camera's position
	$Player/CameraMount/Camera3D/RayCast3D.position = Vector3.ZERO

	# Align visuals with the camera
	$Player/Visuals.rotation = Vector3(0.0, 0.0, $Player/CameraMount.rotation.z)
