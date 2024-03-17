extends Node2D

var LevelLogic = load("res://src/logic/level_logic.gd").new()
var level_data:LevelData

var enemy_array: Array
# Called when the node enters the scene tree for the first time.
func _ready():
									
	# Load corret level
	self.level_data = LevelLogic.load_level("level_1")
	
	#### Which brings correct map
	
	#### Which brings correct enemy army
	
	# Dynamically load army
	
	# Dynamically load enemy army
	

	# Dynamically load a character
	var newCharacter = Character.new()
	# Set the position of the sprite (adjust as needed)
	newCharacter.position = Vector2(100, 100)

	# Add the sprite to the scene
	add_child(newCharacter)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
