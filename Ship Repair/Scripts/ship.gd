extends Area2D

static var health: int = 100
static var healthbar: TextureProgressBar
@onready var timer:Timer = $Timer

func increase_health(amount: int):
	health += amount

func decrease_health(amount: int):
	health -= amount

func _ready():
	var hTPB: TextureProgressBar = $"../UILayer/ShipHealthBar"
	healthbar = hTPB

func _on_body_entered(body):
	if health < 100:
		increase_health(10)
