class_name BaseCard
extends Sprite3D

var stats = {
  "toxique" : 0,
  "beauf" : 0,
  "nerd" : 0,
  "clown" : 0,
  "simp" : 0,
  "riche" : 0,
  "sympa" : 0,
  "cool" : 0,
  "kinky" : 0,
  "cute" : 0,
  "kawaii" : 0,
  "cringe" : 0,
}

var cards = []

func requires(out_stats)-> bool:
	return stats <= out_stats
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var json = JSON.new()
	var file = FileAccess.open("res://cards/cards.json", FileAccess.READ)
	var content = file.get_as_text()
	var error = json.parse(content)
	if error == OK:
		var data_received = json.data
		print(data_received)
		cards = data_received["cards"]
		var card = cards.pick_random()
		self.stats ={
  			"toxique" : card.toxique,
  			"beauf" : card.beauf,
  			"nerd" : card.nerd,
  			"clown" : card.clown,
 			"simp" : card.simp,
  			"riche" : card.riche,
  			"sympa" : card.sympa,
  			"cool" : card.cool,
  			"kinky" : card.kinky,
  			"cute" : card.cute,
  			"kawaii" : card.kawaii,
  			"cringe" : card.cringe,
		}
		self.texture = load(card.image)
	else:
		print("JSON Parse Error: ", json.get_error_message(), " in ", content, " at line ", json.get_error_line())
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	

func get_stats():
	pass
