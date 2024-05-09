extends CharacterBody2D

signal spawning

@onready var animation_player = $"Animation Player"

const SPEED = 200.0
const JUMP_VELOCITY = -330.0


@onready var respawn_point = $"../Trap/Spawn1"

# Get the gravity from the project settings to be synced with RigidBody nodes.
var default_gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var gravity = default_gravity


var alive = true

func _physics_process(delta):
	# Add the gravity.
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		animation_player.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		animation_player.flip_h = true
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
	else:
		velocity = Vector2(0 , 0)
		animation_player.play("idle")
	#$Animation.play("ui_right")
	
	if alive:
		if is_on_floor():
				animation_player.play("ui_right")
	
	
	move_and_slide()
