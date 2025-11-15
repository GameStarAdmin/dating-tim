extends Node2D

func Start():
	Global.playing = true
	get_tree().change_scene_to_file("res://main.tscn")
