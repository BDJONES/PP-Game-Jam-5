extends Area2D

const SPEED = 60

#var mat_type = materialtype.diamond
@onready var player: Node = get_node("../Player")

func _physics_process(delta):
	position.y += SPEED * delta
	rotation += -0.05

func _on_body_entered(body):
	print("Increasing number of Diamond")
	if player == null:
		print("Player is null")
	else:
		var playerScript = player.get_node("PlayerInfo").get_script()
		if playerScript == null:
			print("Couldn't get player script")
		else:
			if (body.name == "Player"):
				playerScript.increase_diamond_amount()
				playerScript.updateLabelText()
			queue_free()

func _ready():
	move_diamond()

func move_diamond():
	print("Moving diamond")
	print(transform.x.x)
	
