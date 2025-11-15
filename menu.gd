extends Node2D

@export var game_controller : GameController

func Start():
	get_tree().change_scene_to_file("res://main.tscn")
