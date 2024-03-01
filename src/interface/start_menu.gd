extends Node2D

@onready var button_settings = $ButtonSettings
@onready var button_arena = $ButtonArena


func _ready():
	button_arena.pressed.connect(_on_button_arena_pressed)
	if GameManager.is_game_in_progress() == true:
		var button_continue = $ButtonContinue
		button_continue.disabled = false

func _on_button_pressed():
	get_tree().change_scene_to_file("res://src/interface/create_army.tscn")

func _on_button_arena_pressed():
	print('hej')
	
