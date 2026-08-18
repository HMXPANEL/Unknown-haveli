extends CharacterBody3D

const WALK_SPEED := 3.5
const ACCEL := 12.0
const GRAVITY := 20.0
const LOOK_SENS := 0.005
const JOY_RADIUS := 60.0
const PITCH_LIMIT := 1.35

@onready var camera: Camera3D = $Camera3D

var joy_active := false
var joy_origin := Vector2.ZERO
var move_input := Vector2.ZERO
var look_delta := Vector2.ZERO
var look_yaw := 0.0
var look_pitch := 0.0
var cur_vel := Vector3.ZERO

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		var touch := event as InputEventScreenTouch
		if touch.pressed:
			if touch.position.x < get_viewport().size.x * 0.5:
				joy_active = true
				joy_origin = touch.position
				move_input = Vector2.ZERO
		else:
			if joy_active:
				joy_active = false
				move_input = Vector2.ZERO
	elif event is InputEventScreenDrag:
		var drag := event as InputEventScreenDrag
		if drag.position.x < get_viewport().size.x * 0.5:
			if joy_active:
				var v := drag.position - joy_origin
				if v.length() > JOY_RADIUS:
					v = v.normalized() * JOY_RADIUS
				move_input = v / JOY_RADIUS
		else:
			look_delta += drag.relative

func _physics_process(delta: float) -> void:
	look_yaw -= look_delta.x * LOOK_SENS
	look_pitch -= look_delta.y * LOOK_SENS
	look_pitch = clampf(look_pitch, -PITCH_LIMIT, PITCH_LIMIT)
	look_delta = Vector2.ZERO
	rotation = Vector3(0.0, look_yaw, 0.0)
	camera.rotation = Vector3(look_pitch, 0.0, 0.0)

	var forward := -global_transform.basis.z
	var right := global_transform.basis.x
	var wish := Vector3.ZERO
	wish += forward * -move_input.y
	wish += right * move_input.x
	if wish.length_squared() > 1.0:
		wish = wish.normalized()

	var target := wish * WALK_SPEED
	cur_vel.x = move_toward(cur_vel.x, target.x, ACCEL * delta)
	cur_vel.z = move_toward(cur_vel.z, target.z, ACCEL * delta)

	if is_on_floor():
		cur_vel.y = 0.0
	else:
		cur_vel.y -= GRAVITY * delta

	velocity = cur_vel
	move_and_slide()