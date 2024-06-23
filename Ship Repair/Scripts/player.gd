extends Node
 

static var health: int = 100
static var oxygen: int = 100
static var diamond_amount: int = 0
static var ruby_amount: int = 0
static var emerald_amount: int = 0
static var diamondLabel:Label
static  var rubyLabel:Label
static var emeraldLabel:Label
signal amount_changed

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
	#amount_changed.emit()
	
static func decrease_diamond_amount(amount: int):
	diamond_amount -= amount
	print(str(diamond_amount))
	updateLabelText()
	#amount_changed.emit()
	
static func increase_ruby_amount():
	ruby_amount += 1
	print(str(ruby_amount))
	#amount_changed.emit()

static func decrease_ruby_amount(amount: int):
	ruby_amount -= amount
	print(str(ruby_amount))
	updateLabelText()
	#amount_changed.emit()

static func increase_emerald_amount():
	emerald_amount += 1
	print(str(emerald_amount))
	#amount_changed.emit()

static func  decrease_emerald_amount(amount: int):
	emerald_amount -= amount
	print(str(emerald_amount))
	updateLabelText()
	#amount_changed.emit()

static func updateLabelText():
	print("Updating Text")
	diamondLabel.text = str(diamond_amount)
	rubyLabel.text = str(ruby_amount)
	emeraldLabel.text = str(emerald_amount)
	

func _ready():
	var dLabel = $"../../UILayer/InventoryContainer/DiamondInventoryUI/DiamondContainer/NumberContainer/Count"
	var rLabel = $"../../UILayer/InventoryContainer/RubyInventoryUI/RubyContainer/NumberContainer/Count"
	var eLabel = $"../../UILayer/InventoryContainer/EmeraldInventoryUI/EmeraldContainer/NumberContainer/Count"
	diamondLabel = dLabel
	rubyLabel = rLabel
	emeraldLabel = eLabel
