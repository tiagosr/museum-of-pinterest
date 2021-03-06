extends KinematicBody

class_name MuseumVisitor

export var speed:float = 10.0
export var acceleration:float = 5.0
export var gravity:float = 0.98
export var jump_power:float = 30.0
export var mouse_sensitivity:float = 0.3
export var camera_pitch_lower_limit:float = -60.0
export var camera_pitch_higher_limit:float = 90.0

export var can_move:bool = true

onready var head:Spatial = $Head
onready var camera:Camera = $Head/Camera

var velocity:Vector3 = Vector3()

var camera_pitch:float = 0

func _ready():
	set_process_input(true)
	if not OS.has_feature("JavaScript"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _input(event):
	if event is InputEventMouseButton:
		if (Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE) and event.pressed:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	elif event is InputEventMouseMotion and Input.get_mouse_mode() != Input.MOUSE_MODE_VISIBLE:
		head.rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		var x_delta:float = -event.relative.y * mouse_sensitivity
		var new_camera_pitch:float = camera_pitch + x_delta
		new_camera_pitch = max(camera_pitch_lower_limit, min(new_camera_pitch, camera_pitch_higher_limit))
		x_delta = new_camera_pitch - camera_pitch
		camera.rotate_x(deg2rad(x_delta))
		camera_pitch = new_camera_pitch

func _physics_process(delta):
	if not can_move:
		return
	var head_basis = head.get_global_transform().basis
	var direction:Vector3 = Vector3()
	if Input.is_action_pressed("move_forward"):
		direction -= head_basis.z
	if Input.is_action_pressed("move_backward"):
		direction += head_basis.z
		
	if Input.is_action_pressed("move_left"):
		direction -= head_basis.x
	if Input.is_action_pressed("move_right"):
		direction += head_basis.x
	
	direction = direction.normalized()
	
	velocity = velocity.linear_interpolate(direction * speed, acceleration * delta)
	
	velocity.y -= gravity
	velocity = move_and_slide(velocity, Vector3.UP)
	
