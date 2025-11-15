class_name Deck
extends Sprite3D

const DECK_SIZE = 60
var deck = []

# Called when the node enters the scene tree for the first time.
func _init() -> void:
	print("cc")
	for i in range(DECK_SIZE):
		print("start")
		var newcard = BaseCard.new()
		print(newcard)
		deck.append(newcard)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func draw(x): 
	print(deck.size())
	assert(deck.size() >= x )
	var give = deck.slice(0, x)
	deck = deck.slice(x)
	return give
