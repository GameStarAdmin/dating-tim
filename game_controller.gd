class_name GameController
extends Node

# Constants
const WIN_RIZZ = 100
const MIN_RIZZ = -100

@export var p1 : Player
@export var p2 : Player
@export var target : Target
@export var deck : Deck
var currentPlayer = 1
var winner = 0

var player_selected = false

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if currentPlayer == 1:
		if(!player_selected):
			PlayTurn(p1)
		else:
			FinishTurn(p1)
	else:
		if(!player_selected):
			PlayTurn(p2)
		else:
			FinishTurn(p2)

func PlayTurn(player: Player):
	player.hand = deck.draw(3)
	player.canSelect = true

func FinishTurn(player : Player):
	player.rizz = target.DamageCompute(player.card)
	player_selected = false
	player.canSelect = false
	CheckWin()
	NextTurn()

func CheckWin():
	if p1.rizz >= WIN_RIZZ:
		winner = 1
		get_tree().change_scene_to_file("res://win.tscn")
	if p2.rizz >= WIN_RIZZ:
		winner = 2
		get_tree().change_scene_to_file("res://win.tscn")

func NextTurn():
	if currentPlayer == 1:
		currentPlayer = 2
	else:
		currentPlayer = 1
