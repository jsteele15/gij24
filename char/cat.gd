extends CharacterBody2D

@onready var globals = get_node("/root/Globals")

const SPEED = 300.0 
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor() or globals.going_up == true and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	#if the cat dies its ghost form will fly into the air
	if globals.alive == false and globals.win == false:
		velocity.y = -700
		$Sox.visible = false
		$Ghost.visible = true
	
	#if the ghost is dead 
	if globals.alive == false and globals.win == true:
		print("winning")
		$Sox.visible = false
		$Ghost.visible = false
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if globals.going_left:
		velocity.x = -1 * SPEED
	
	if globals.going_right:
		velocity.x = 1 * SPEED
	
	move_and_slide()
