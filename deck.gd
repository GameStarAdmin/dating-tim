extends Sprite2D

const DECK_SIZE = 60
var deck = []
var card_types = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(DECK_SIZE):
		deck.append(get_node("BaseCard"))
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func draw(x): 
	deck.slice(0, x)
