extends Node2D

#var user_preferences: UserPreferences
@onready var label_experience_value = $LabelExperienceValue
@onready var label_gold_value = $LabelGoldValue

var enemy_array: Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var world_map_node = GameManager.get_world_map_node()
	self.label_experience_value.text = str(world_map_node.reward_experience)
	self.label_gold_value.text = str(world_map_node.reward_gold)
	self.enemy_array = world_map_node.enemy_type_array
	
	self.display_enemy_slain(self.enemy_array)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func display_enemy_slain(enemy_array: Array) -> void:
	
	var enemy_information = EnemyInformation.new()

	var count = 0
	for enemy_name in enemy_array:
		var enemy_object = enemy_information.get_enemy_by_name(enemy_name)
		var newSprite = Sprite2D.new()
		var texture = load(enemy_object.thumbnail_path)
		newSprite.texture = texture

		# Set the position of the sprite (adjust as needed)
		newSprite.position = Vector2((count * 20) + 100, 100)

		# Add the sprite to the scene
		add_child(newSprite)
		count = count + 1
		pass

	
func _on_button_pressed():
	GameManager.win_battlefield()

	if GameManager.has_beat_last_level():
		get_tree().change_scene_to_file("res://src/scene/the_end.tscn")
		return
	else:
		get_tree().change_scene_to_file("res://src/scene/reward_after_battle.tscn")
