extends Node2D

func _ready() -> void:
	print("died!!?")
	
	await get_tree().create_timer(3.0).timeout
	GameManager.alive = true
	GameManager.oxygen = 100
	get_tree().change_scene_to_file("res://scenes/Level_testing.tscn")
