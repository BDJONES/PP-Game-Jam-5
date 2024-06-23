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
