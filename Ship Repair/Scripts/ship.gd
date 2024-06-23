extends Area2D

static var health: int = 100
static var healthbar: TextureProgressBar
static var diamonds_needed_amount: int = 0
static var rubies_needed_amount: int = 0
static var emeralds_needed_amount: int = 0

static var diamond_inventory_ui: Label
static var ruby_inventory_ui: Label
static var emerald_inventory_ui: Label

static func updateRepairUI():
	diamond_inventory_ui.text = str(diamonds_needed_amount)
	ruby_inventory_ui.text = str(rubies_needed_amount)
	emerald_inventory_ui.text = str(emeralds_needed_amount)

static func increase_health(amount: int):
	health += amount
	healthbar.value = health
	print("Health is now " + str(health))

static func decrease_health(amount: int):
	print("Decreasing Ship HP")
	health -= amount
	healthbar.value = health
	print("Health is now " + str(health))
	
	randomize()
	for i in range(3):
		var material_quantity = randf_range(1,3)
		if i == 0:
			diamonds_needed_amount += material_quantity
		if i == 1:
			rubies_needed_amount += material_quantity
		if i == 2:
			emeralds_needed_amount += material_quantity
	updateRepairUI()


func _ready():
	var hTPB: TextureProgressBar = $"../../UILayer/ShipHealthBar"
	var dUI: Label = $"../../UILayer/RequiredMaterials/DiamondInventoryUI/DiamondContainer/NumberContainer/Count"
	var rUI: Label = $"../../UILayer/RequiredMaterials/RubyInventoryUI/RubyContainer/NumberContainer/Count"
	var eUI: Label = $"../../UILayer/RequiredMaterials/EmeraldInventoryUI/EmeraldContainer/NumberContainer/Count"
	healthbar = hTPB
	diamond_inventory_ui = dUI
	ruby_inventory_ui = rUI
	emerald_inventory_ui = eUI


func _on_body_entered(body):
	var player_script = $"../../Player/PlayerInfo".get_script()

	if diamonds_needed_amount > 0 and rubies_needed_amount > 0 and emeralds_needed_amount > 0:
		print("We need something from you")
		if player_script.diamond_amount >= diamonds_needed_amount and player_script.ruby_amount >= rubies_needed_amount and player_script.emerald_amount >= emeralds_needed_amount:
			print("You have the resources")
			if health < 100 and health > 0:
				print("You need health")
				increase_health(25)
				player_script.decrease_diamond_amount(diamonds_needed_amount)
				player_script.decrease_ruby_amount(rubies_needed_amount)
				player_script.decrease_emerald_amount(emeralds_needed_amount)
				diamonds_needed_amount = 0
				rubies_needed_amount = 0
				emeralds_needed_amount = 0
				updateRepairUI()

func _process(delta):
	if health == 0:
		health = 100
		print("You died!")
		get_tree().change_scene_to_file("res://Scenes/gameover.tscn")
