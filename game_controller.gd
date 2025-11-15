class_name GameController
extends Node

# Constants
const WIN_RIZZ = 100

@export var p1 : Player
@export var p2 : Player
#@export var target : Target
#@export var deck : Deck
#@export var sceneManager : SceneManager
var currentPlayer = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if currentPlayer == 1:
		PlayTurn(p1)
	else:
		PlayTurn(p2)

func PlayTurn(player: Player):
	#player.hand = deck.draw()
	#wait for playerSelection
	#player.rizz = target.computeDamage(player.card)
	CheckWin()
	NextTurn()

func CheckWin():
	if p1.rizz >= WIN_RIZZ:
		pass #replace by win anim idk
	elif p2.rizz >= WIN_RIZZ:
		pass #idem

func NextTurn():
	if currentPlayer == 1:
		currentPlayer = 2
	else:
		currentPlayer = 1
