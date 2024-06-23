extends Area2D

const SPEED = 60

# Probably need the ship here to update the ships health on collisions 
@onready var ship_script = get_node("../Ship/Area2D").get_script()


func _physics_process(delta):
	position.y += SPEED * delta
	rotation += -0.01
	
func _on_body_entered(body):
	# Need to update the ship decrease health function to 
	# not take a number unless we want to specify how much damage 
	# we want the ship to take
	# ship.descrease_health(10)
	ship_script.decrease_health(10)
	queue_free()

func meteor():
	pass
