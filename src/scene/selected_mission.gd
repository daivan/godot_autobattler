extends Node2D

@onready var button_cancel = $ButtonCancel
@onready var button_start_mission = $ButtonStartMission
@onready var level_name_label = $LevelNameLabel
@onready var reward_gold_label = $RewardGoldLabel
@onready var reward_experience_label = $RewardExperienceLabel

var enemy_array: Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	self.button_cancel.pressed.connect(_on_button_cancel_pressed)
	self.button_start_mission.pressed.connect(_on_button_start_mission_pressed)
	WorldMapSignals.connect("WORLD_MAP_NODE_CHANGED", _on_world_map_node_changed)

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_world_map_node_changed(world_map_node: WorldMapNodeData):
	self.level_name_label.text = world_map_node.level_name
	self.reward_experience_label.text = str(world_map_node.reward_experience) + ' Exp'
	self.reward_gold_label.text = str(world_map_node.reward_gold) + ' Gold'
	self.visible = true

	self.enemy_array = world_map_node.enemy_type_array
	
	self.display_enemy_list(self.enemy_array)
	
func display_enemy_list(enemy_array: Array) -> void:
	
	var enemy_information = EnemyInformation.new()

	var count = 0
	for enemy_name in enemy_array:
		var enemy_object = enemy_information.get_enemy_by_name(enemy_name)
		var newSprite = Sprite2D.new()
		var texture = load(enemy_object.thumbnail_path)
		newSprite.texture = texture

		# Set the position of the sprite (adjust as needed)
		newSprite.position = Vector2((count * 20) + 25, 115)

		# Add the sprite to the scene
		add_child(newSprite)
		count = count + 1
		pass

func _on_button_start_mission_pressed():
	get_tree().change_scene_to_file("res://src/scene/dynamic_battlefield.tscn")

func _on_button_cancel_pressed():
	GameManager.clear_world_map_node()
	set_visible(false)
