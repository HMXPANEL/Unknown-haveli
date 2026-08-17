extends CharacterBody3D

const SPEED := 3.0
const LOOK_SENS := 0.005
const JOY_RADIUS := 60.0

@onready var camera: Camera3D = $Camera3D
@onready var flashlight: SpotLight3D = $Camera3D/SpotLight3D

var joy_active := false
var joy_origin := Vector2.ZERO
var move_dir := Vector2.ZERO
var look_delta := Vector2.ZERO
var look_yaw := 0.0
var look_pitch := 0.0

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.pressed:
			if event.position.x < get_viewport().size.x * 0.5:
				joy_active = true
				joy_origin = event.position
				move_dir = Vector2.ZERO
			else:
				flashlight.visible = not flashlight.visible
		else:
			if joy_active:
				joy_active = false
				move_dir = Vector2.ZERO
	elif event is InputEventScreenDrag:
		if joy_active and event.position.x < get_viewport().size.x * 0.5:
			var v := event.position - joy_origin
			if v.length() > JOY_RADIUS:
				v = v.normalized() * JOY_RADIUS
			move_dir = v / JOY_RADIUS
		else:
			look_delta += event.relative

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
