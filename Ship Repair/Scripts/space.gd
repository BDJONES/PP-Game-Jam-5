extends Node2D

const SPEED = 60
# @onready var animations_resource = $Animations_Resource

# Add the air tank later
var diamond = preload("res://Scenes/Resource_Scenes/diamond.tscn")
var emerald = preload("res://Scenes/Resource_Scenes/emerald.tscn")
var ruby = preload("res://Scenes/Resource_Scenes/ruby.tscn")
var meteor = preload("res://Scenes/meteor.tscn")

var preloaded_objects = [diamond, emerald, ruby, meteor]
var rand_x
var rand_y

# The problem with generating the objects is if we use physics process
# we generate too many objects too fast, maybe we can use a timer to generate them slower

# The problem with animating the objects is instead of the objects moving multiple
# times, they are each only moving once

func _on_timer_timeout():
	
	var object = preloaded_objects.pick_random().instantiate()
	
	rand_x = randf_range(-1600, 800)
	rand_y = -1114
	
	object.global_position = Vector2(rand_x, rand_y)
	
	add_child(object)
	
	# randomize()
	
	#var object = preloaded_objects.pick_random().instantiate()
		#
	## Now we can decide which direction we want the object to fly in from
	## using an array cause maybe we want to add more directions later
	#var directions = ["left", "top"]
	#var direction = directions.pick_random()
	#
	## Need to change the range of the rand_x and rand_y 
	## numbers to whatever the limit of the world is
	#if direction == "left":
		#rand_x = -585 
		#rand_y = randf_range(-324, 324)
	#if direction == "top":
		#rand_x = randf_range(-576, 576)
		#rand_y = -330
#
	#object.global_position = Vector2(rand_x, rand_y)
	#add_child(object)
	#
	## add animation here
	#if direction == "left":
		#object.position.x += 100
	#if direction == "top":
		#object.position.y += 100
