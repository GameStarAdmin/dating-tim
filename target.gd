class_name Target
extends Node
var names = ["Tim"]

#Stats (multipliers)
var mults = {
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

var target_name = ""

func _ready() -> void:
	target_name = names[randi_range(0, names.size())]
	$Sprite3D.texture = preload("res://images/tim2.png")

func DamageCompute(card : BaseCard):
	var final_rizz = 0
	for stat in mults:
		final_rizz += mults[stat] * card.stats[stat]
	
	if final_rizz < -12:
		$Sprite3D.texture = load("res://images/tim0.png")
	elif final_rizz < -6:
		$Sprite3D.texture = load("res://images/tim1.png")
	elif final_rizz < 0:
		$Sprite3D.texture = load("res://images/tim2.png")
	elif final_rizz < 6:
		$Sprite3D.texture = load("res://images/tim3.png")
	else:
		$Sprite3D.texture = load("res://images/tim4.png")
		
	return final_rizz
