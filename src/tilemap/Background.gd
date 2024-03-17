extends Node
class_name Background

var texture: Texture

func _ready():
	pass

func setup(background_data: BackgroundData):

	# Create the full background
	var full_background_texture = Sprite2D.new()
	full_background_texture.texture = background_data.background_texture
	full_background_texture.set_centered(false)
	full_background_texture.position = Vector2(0, 0)
	full_background_texture.z_index = -1
	add_child(full_background_texture)
