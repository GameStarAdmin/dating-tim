extends Sprite2D

class Stats:
	var toxic = 0
	var manipulation = 0
	var beauf = 0
	var nerd = 0
	var clown = 0
	var simp = 0
	var riche = 0
	var wholesome = 0
	var sympa = 0

var stats = Stats.new()
var requirements = Stats.new()

func requires(out_stats)-> bool:
	return stats <= out_stats
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func new(toxic, manipulation, beauf, nerd, clown, simp, riche, wholesome, sympa, image) -> void:
	stats.toxic = toxic
	stats.manipulation = manipulation
	stats.beauf = beauf
	stats.nerd = nerd
	stats.clown = clown
	stats.simp = simp
	stats.riche = riche
	stats.wholesome = wholesome
	stats.sympa = sympa
	stats.texture = image
	


func get_stats() -> Stats:
	return stats
	
