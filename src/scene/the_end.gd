extends Node2D

@onready var button_continue = $ButtonContinue

# Called when the node enters the scene tree for the first time.
func _ready():
	self.button_continue.pressed.connect(_on_button_continue_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_button_continue_pressed():
	get_tree().change_scene_to_file("res://src/scene/start_menu.tscn")
