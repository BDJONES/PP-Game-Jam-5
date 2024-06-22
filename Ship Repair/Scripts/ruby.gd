extends Area2D

#var mat_type = materialtype.ruby
@onready var player: Node = get_node("../Player")

func _on_body_entered(body):
	print("Increasing number of Ruby")
	if player == null:
		print("Player is null")
	else:
		var playerScript = player.get_node("PlayerInfo").get_script()
		if playerScript == null:
			print("Couldn't get player script")
		else:
			playerScript.increase_ruby_amount()
			queue_free()
