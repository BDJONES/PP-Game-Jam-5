extends Node

# Add the air tank later
var diamond = preload("res://Scenes/Resource_Scenes/diamond.tscn")
var emerald = preload("res://Scenes/Resource_Scenes/emerald.tscn")
var ruby = preload("res://Scenes/Resource_Scenes/ruby.tscn")

var preloaded_objects = [diamond, emerald, ruby]

func spawn_objects():
	# .pick_random() will pick a random item from my
	# preloaded_objects array
	var object = preloaded_objects.pick_random().instantiate()

	get_parent().add_child(object)
