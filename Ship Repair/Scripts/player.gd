extends Node
 
static var health: int = 100
static var oxygen: int = 100
static var diamond_amount: int = 0
static var ruby_amount: int = 0
static var emerald_amount: int = 0

static func increase_health(amount: int):
	health += amount

static func decrease_health(amount: int):
	health -= amount

static func increase_oxygen(amount: int):
	oxygen += amount

static func decrease_oxygen(amount: int):
	oxygen -= amount

static func increase_diamond_amount():
	diamond_amount += 1
	print(str(diamond_amount))

static func decrease_diamond_amount(amount: int):
	diamond_amount -= amount
	print(str(diamond_amount))
	
static func increase_ruby_amount():
	ruby_amount += 1
	print(str(ruby_amount))

static func decrease_ruby_amount(amount: int):
	ruby_amount -= amount
	print(str(ruby_amount))

static func increase_emerald_amount():
	emerald_amount += 1
	print(str(emerald_amount))

static func  decrease_emerald_amount(amount: int):
	emerald_amount -= amount
	print(str(emerald_amount))
