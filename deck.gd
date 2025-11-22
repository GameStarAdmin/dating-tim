class_name Deck
extends Node

const DECK_SIZE = 60
var deck : Array[BaseCard] = []

@export var label : Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(DECK_SIZE):
		deck.append(BaseCard.new())
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	label.text = str(deck.size())

func draw(x):
	assert(deck.size() >= x )
	var give = deck.slice(0, x)
	deck = deck.slice(x)
	return give
