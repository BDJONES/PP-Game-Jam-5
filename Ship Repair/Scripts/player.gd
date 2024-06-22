extends CharacterBody2D
 
var health: int = 100
var oxygen: int = 100
var resource1_amount: int = 0
var resource2_amount: int = 0
var resource3_amount: int = 0

func increase_health(amount: int):
	health += amount

func decrease_health(amount: int):
	health -= amount

func increase_oxygen(amount: int):
	oxygen += amount

func decrease_oxygen(amount: int):
	oxygen -= amount

func increase_resource1_amount(amount: int):
	resource1_amount += amount

func decrease_resource1_amount(amount: int):
	resource1_amount -= amount

func increase_resource2_amount(amount: int):
	resource2_amount += amount

func decrease_resource2_amount(amount: int):
	resource2_amount -= amount

func increase_resource3_amount(amount: int):
	resource3_amount += amount

func decrease_resource3_amount(amount: int):
	resource3_amount -= amount
