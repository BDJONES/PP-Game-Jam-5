extends Area2D

const SPEED = 60

#var mat_type = materialtype.emerald
@onready var player: Node = get_node("../Player")

func _physics_process(delta):
	position.y += SPEED * delta
	rotation += -0.05

func _on_body_entered(body):
	print("Increasing number of Emerald")
	if player == null:
		print("Player is null")
	else:
		var playerScript = player.get_node("PlayerInfo").get_script()
		if playerScript == null:
			print("Couldn't get player script")
		else:
			playerScript.increase_emerald_amount()
			playerScript.updateLabelText()
			queue_free()
