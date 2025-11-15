extends Node

# Stats modifiers
# None for now

# :3
var canSelect = false
var hasSelected = false
var selected = 1

var rizz = 0
var card = null
var hand = [1, 2, 3]
@export var gameController : Node2D #temp type to avoid errors

func _input(event):
	if event.is_action_pressed("ui_accept"):
		hasSelected = !hasSelected
		
	elif event.is_action("ui_right"):
		if selected < hand.size() - 1:
			selected += 1
		
	elif event.is_action("ui_left"):
		if selected > 0:
			selected -= 1
