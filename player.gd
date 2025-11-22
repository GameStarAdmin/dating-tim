class_name Player
extends Node

# Stats modifiers
# None for now

# Visuals
@export var progress_bar : ProgressBar
@export var cards : Array[Sprite2D]
@export var player_number : int
var cards_default_scale

#Sounds
@export var stream_player : AudioStreamPlayer2D
@export var select_sound : AudioStreamMP3
@export var rizz_sound : AudioStreamMP3

# :3
var canSelect = false
var selected = 1

var rizz = 0
var card : BaseCard
var hand : Array[BaseCard]
@export var game_controller : GameController

var keyDown = false

func CheckInput():
	if canSelect:
		if Input.is_action_just_pressed("ui_accept"):
			card = hand[selected]
			game_controller.player_selected = true
			PlayRizz()
			print("Selected card " + str(selected))
		
		if Input.is_action_just_pressed("ui_right"):
			if selected < hand.size() - 1:
				selected += 1
				PlaySelectCardSound()
				print(selected)
		
		if Input.is_action_just_pressed("ui_left"):
			if selected > 0:
				selected -= 1
				PlaySelectCardSound()
				print(selected)

func _ready() -> void:
	progress_bar.max_value = game_controller.WIN_RIZZ
	progress_bar.min_value = game_controller.MIN_RIZZ
	assert(player_number != 0)
	
	cards_default_scale = cards[0].scale

func _process(delta: float) -> void:
	CheckInput()
	progress_bar.value = rizz
	
	if(game_controller.currentPlayer == player_number):
		for i in range(hand.size()):
			cards[i].texture = hand[i].texture
			if i == selected:
				cards[i].z_index = 1
				cards[i].scale = cards_default_scale * 1.1
			else:
				cards[i].z_index = 0
				cards[i].scale = cards_default_scale
	else:
		for i in range(cards.size()):
			cards[i].texture = null

func PlaySelectCardSound():
	stream_player.stream = select_sound
	stream_player.play()

func PlayRizz():
	stream_player.stream = rizz_sound
	stream_player.play()
