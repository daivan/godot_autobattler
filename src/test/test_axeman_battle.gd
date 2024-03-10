extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
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
