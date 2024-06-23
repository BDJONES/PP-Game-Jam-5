extends Area2D

const SPEED = 60

#var mat_type = materialtype.diamond
@onready var player: Node = get_node("../Player")

func _physics_process(delta):
	position.y += SPEED * delta

func _on_body_entered(body):
	print("Increasing number of Diamond")
	if player == null:
		print("Player is null")
	else:
		var playerScript = player.get_node("PlayerInfo").get_script()
		if playerScript == null:
			print("Couldn't get player script")
		else:
			playerScript.increase_diamond_amount()
			queue_free()
