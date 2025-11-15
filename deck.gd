class_name Deck
extends Node

const DECK_SIZE = 60
var deck = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(DECK_SIZE):
		deck.append(get_node("BaseCard"))
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func draw(x): 
	var give = deck.slice(0, x)
	deck = deck.slice(x)
	return give
