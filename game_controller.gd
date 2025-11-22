class_name GameController
extends Node

# Constants
const WIN_RIZZ = 100
const MIN_RIZZ = 0
const HAND_SIZE = 3

@export var p1 : Player
@export var p2 : Player
@export var target : Target
@export var deck : Deck
var currentPlayer = 1

var player_selected = false
var player_drawn = false

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if (currentPlayer == 1):
		PlayTurn(p1)
	else:
		PlayTurn(p2)

func PlayTurn(player: Player):
	if(!player_drawn):
		player.hand = deck.draw(HAND_SIZE)
		player_drawn = true
		player.canSelect = true
		
	elif(player_selected):
		player.rizz += target.DamageCompute(player.card)
		if player.rizz < 0:
			player.rizz = 0
		print("Did " + str(target.DamageCompute(player.card)) + " rizz.")
		print("[Player" + str(currentPlayer) + "] Total rizz: " + str(player.rizz))
		player.canSelect = false
		CheckWin()
		NextTurn()

func CheckWin():
	if deck.deck.size() < HAND_SIZE:
		if(p1.rizz < p2.rizz):
			global_vars.winner = 2
			global_vars.rizz_amount = p2.rizz
			get_tree().change_scene_to_file("res://win.tscn")
		elif(p1.rizz == p2.rizz):
			global_vars.winner = 3
			global_vars.rizz_amount = 100000
			get_tree().change_scene_to_file("res://win.tscn")
		else:
			global_vars.winner = 1
			global_vars.rizz_amount = p1.rizz
			get_tree().change_scene_to_file("res://win.tscn")
			
	if p1.rizz >= WIN_RIZZ:
		global_vars.winner = 1
		global_vars.win_by_max_rizz = true
		get_tree().change_scene_to_file("res://win.tscn")
	if p2.rizz >= WIN_RIZZ:
		global_vars.winner = 2
		global_vars.win_by_max_rizz = true
		get_tree().change_scene_to_file("res://win.tscn")

func NextTurn():
	player_selected = false
	player_drawn = false
	if currentPlayer == 1:
		currentPlayer = 2
	else:
		currentPlayer = 1
