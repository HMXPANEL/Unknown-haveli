extends CharacterBody3D

const SPEED := 3.0
const LOOK_SENS := 0.005
const JOY_RADIUS := 60.0

@onready var camera: Camera3D = $Camera3D
@onready var flashlight: SpotLight3D = $Camera3D/SpotLight3D

func _ready() -> void:
	print("MAIN SCENE LOADED")
	print("PLAYER GLOBAL POS = ", global_position)
	print("CAMERA GLOBAL POS = ", camera.global_position)
	print("CAMERA ROTATION = ", camera.rotation)
	print("CAMERA IS CURRENT = ", camera.is_current())
	var floor_node = get_node_or_null("Floor/MeshInstance3D")
	print("FLOOR NODE NULL = ", floor_node == null)
	if floor_node != null:
		print("FLOOR VISIBLE = ", floor_node.visible)
		print("FLOOR MESH = ", floor_node.mesh)
	var dl = get_node_or_null("DirectionalLight3D")
	print("DIRECTIONAL LIGHT NULL = ", dl == null)
	if dl != null:
		print("DIRECTIONAL LIGHT ENERGY = ", dl.light_energy)

var joy_active := false
var joy_origin := Vector2.ZERO
var move_dir := Vector2.ZERO
var look_delta := Vector2.ZERO
var look_yaw := 0.0
var look_pitch := 0.0

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		var touch := event as InputEventScreenTouch
		if touch.pressed:
			if touch.position.x < get_viewport().size.x * 0.5:
				joy_active = true
				joy_origin = touch.position
				move_dir = Vector2.ZERO
			else:
				flashlight.visible = not flashlight.visible
		else:
			if joy_active:
				joy_active = false
				move_dir = Vector2.ZERO
	elif event is InputEventScreenDrag:
		var drag := event as InputEventScreenDrag
		if joy_active and drag.position.x < get_viewport().size.x * 0.5:
			var v := drag.position - joy_origin
			if v.length() > JOY_RADIUS:
				v = v.normalized() * JOY_RADIUS
			move_dir = v / JOY_RADIUS
		else:
			look_delta += drag.relative

func _physics_process(_delta: float) -> void:
	look_yaw -= look_delta.x * LOOK_SENS
	look_pitch -= look_delta.y * LOOK_SENS
	look_pitch = clampf(look_pitch, -1.2, 1.2)
	look_delta = Vector2.ZERO
	rotation = Vector3(0.0, look_yaw, 0.0)
	camera.rotation = Vector3(look_pitch, 0.0, 0.0)

	var forward := -camera.global_transform.basis.z
	var right := camera.global_transform.basis.x
	var vel := Vector3.ZERO
	vel += forward * -move_dir.y
	vel += right * move_dir.x
	vel.y = 0.0
	if vel.length_squared() > 0.0:
		vel = vel.normalized() * SPEED
	velocity = vel
	move_and_slide()
