extends Area2D

var health: int = 100

func increase_health(amount: int):
	health += amount

func decrease_health(amount: int):
	health -= amount
