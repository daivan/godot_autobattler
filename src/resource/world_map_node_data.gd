class_name WorldMapNodeData extends Resource

@export var enemy_array: Array = []
@export var level_name: String = ''
@export var level: int = 0

var reward_experience: int = 0
var reward_gold: int = 0
var enemy_type_array: Array
var level_data: LevelData

func generate_world_map_node(tier: int) -> WorldMapNodeData:
	
	var level_data_object = LevelData.new()
	var node_data = WorldMapNodeData.new()
	node_data.level_name = 'level_' + str(tier)
	node_data.level = tier
	node_data.level_data = level_data_object.load_new_level(node_data.level_name)
	node_data.reward_experience = node_data.level_data.reward_experience
	node_data.reward_gold = node_data.level_data.reward_gold
	for i in range(0, tier):
		node_data.enemy_type_array.append('spider')
		
	return node_data
