extends CharacterBody2D
class_name Character

var current_health: int = 100

@export var target_component: TargetComponent
@export var health_component: HealthComponent

@onready var sprite_tile_map = $SpriteTileMap

func _ready():
 
	var newSprite = Sprite2D.new()
	var texture = load("res://asset/character/tile_0084.png")
	newSprite.texture = texture

	# Set the position of the sprite (adjust as needed)
	newSprite.position = Vector2(0, 0)

	# Add the sprite to the scene
	add_child(newSprite)
	
	pass

func setup(unit_data):
	#self.add_to_group('hero')
	pass

