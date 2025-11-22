extends Node2D

@export var label : Label

func _ready() -> void:
	label.text = "Player" + str(global_vars.winner) + " is RIZZMAXING!!!"
