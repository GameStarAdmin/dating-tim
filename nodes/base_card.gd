extends Sprite2D

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

var requirements = {
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




func requires(out_stats)-> bool:
	return stats <= out_stats
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var json = JSON.new()
	var error = json.parse(json_string)
	if error == OK:
		var data_received = json.data
		if typeof(data_received) == TYPE_ARRAY:
			print(data_received) 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func get_stats():
	pass
	
