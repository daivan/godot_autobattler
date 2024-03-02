extends Node2D

@onready var button_cancel = $ButtonCancel
@onready var button_start_mission = $ButtonStartMission
@onready var level_name_label = $LevelNameLabel
@onready var reward_gold_label = $RewardGoldLabel
@onready var reward_experience_label = $RewardExperienceLabel

@onready var sprite_enemy_type_1 = $SpriteEnemyType1
@onready var sprite_enemy_type_2 = $SpriteEnemyType2
@onready var sprite_enemy_type_3 = $SpriteEnemyType3

const BAT_SPRITE = preload("res://asset/character/tile_0120.png")
const GHOST_SPRITE = preload("res://asset/character/tile_0121.png")
const SPIDER_SPRITE = preload("res://asset/character/tile_0122.png")

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
	self.sprite_enemy_type_1.texture = BAT_SPRITE
	self.sprite_enemy_type_2.texture = BAT_SPRITE
	self.sprite_enemy_type_3.texture = BAT_SPRITE
	self.visible = true
	

func _on_button_start_mission_pressed():
	get_tree().change_scene_to_file("res://src/scene/dynamic_battlefield.tscn")

func _on_button_cancel_pressed():
	GameManager.clear_world_map_node()
	set_visible(false)
