class_name Target
extends Node

#Stats (multipliers)
var mults = {
	"toxique" : 1,
	"beauf" : 1,
	"nerd" : 1,
	"clown" : 1,
	"simp" : 1,
	"riche" : 1,
	"sympa" : -1,
	"cool" : -1,
	"kinky" : -1,
	"cute" : -1,
	"kawaii" : -1,
	"cringe" : -1,
}

func DamageCompute(card : BaseCard):
	var final_rizz = 0
	for stat in mults:
		final_rizz += mults[stat] * card.stats[stat]
	return final_rizz
