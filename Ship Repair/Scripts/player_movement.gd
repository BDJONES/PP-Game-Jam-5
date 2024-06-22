extends CharacterBody2D

const SPEED = 400.0
var player_state = "idle"

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	# Gets User Input Direction
	var direction = Input.get_vector("Move left", "Move right", "Move up", "Move down")
	
	# We want to flip our player depending on the direction
	if direction.x > 0: # If the user is moving right
		animated_sprite.flip_h = true
	if direction.x < 0: # If the user is moving left
		animated_sprite.flip_h = false
	
	if direction.x == 0 and direction.y == 0: # if the player isn't moving
		player_state = "idle"
	else: # if the player is moving
		player_state = "moving"

	# handles all the moving in specific directions
	velocity = direction * SPEED
	
	# allows the character to move
	move_and_slide()
	
	# helper function to play specific animation
	play_animation(direction)

func play_animation(direction):
	if player_state == "idle":
		animated_sprite.play("idle")
	if player_state == "moving":
		if direction.x == 1 or direction.x == -1:
			# moving right or left
			animated_sprite.play("fly")
		if direction.y == -1:
			# moving up
			animated_sprite.play("fly_up")
		if direction.y == 1:
			# moving down
			animated_sprite.play("idle")
