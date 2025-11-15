class_name Player
extends Node

# Stats modifiers
# None for now

# Visuals
@export var progress_bar : ProgressBar
@export var cards : Array[Sprite2D]

# :3
var canSelect = false
var selected = 1

var rizz = 0
var card : BaseCard
var hand : Array[BaseCard]
@export var game_controller : GameController

func _input(event):
	if canSelect:
		if event.is_action_pressed("ui_accept"):
			card = hand[selected]
			game_controller.player_selected = true
		
		elif event.is_action("ui_right"):
			if selected < hand.size() - 1:
				selected += 1
		
		elif event.is_action("ui_left"):
			if selected > 0:
				selected -= 1

func _ready() -> void:
	progress_bar.max_value = game_controller.WIN_RIZZ
	progress_bar.min_value = game_controller.MIN_RIZZ

func _process(delta: float) -> void:
	progress_bar.value = rizz
	for i in range(cards.size()):
		cards[i].texture = hand[i].texture
