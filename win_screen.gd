extends Node2D

@export var label : Label

func _ready() -> void:
	if(global_vars.win_by_max_rizz):
		label.text = "Player" + str(global_vars.winner) + " is RIZZMAXING!!!"
	else:
		label.text = "Player" + str(global_vars.winner) + " is the least bad of you two with " + str(int(round(global_vars.rizz_amount))) + " rizz."
