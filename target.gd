class_name Target
extends Node
var names = ["Tim"]

#Stats (multipliers)
var mults = {
	"toxique" : -4,
	"beauf" : 2,
	"nerd" : 5,
	"clown" : 3,
	"simp" : -5,
	"riche" : 3,
	"sympa" : 3,
	"cool" : -3,
	"kinky" : -2,
	"cute" : -1,
	"kawaii" : -6,
	"cringe" : 1,
}

var target_name = ""

func _ready() -> void:
	target_name = names[randi_range(0, names.size() - 1)]
	$Sprite3D.texture = preload("res://images/tim2.png")

func DamageCompute(card : BaseCard):
	var final_rizz = 0
	for stat in mults:
		final_rizz += mults[stat] * card.stats[stat]
	
	if final_rizz < -9:
		$Sprite3D.texture = load("res://images/tim0.png")
	elif final_rizz < -3:
		$Sprite3D.texture = load("res://images/tim1.png")
	elif final_rizz < 3:
		$Sprite3D.texture = load("res://images/tim2.png")
	elif final_rizz < 9:
		$Sprite3D.texture = load("res://images/tim3.png")
	else:
		$Sprite3D.texture = load("res://images/tim4.png")
		
	return final_rizz
