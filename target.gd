class_name Target
extends Node

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

func DamageCompute(card : BaseCard):
	var final_rizz = 0
	for stat in mults:
		final_rizz += mults[stat] * card.stats[stat]
	return final_rizz
