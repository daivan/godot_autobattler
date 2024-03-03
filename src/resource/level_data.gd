class_name LevelData extends Resource

var terrain_type: String = "ruins"
var enemy_array: Array = []
var reward_gold: int = 0
var reward_experience: int = 0

static func load() -> LevelData:
	var level_data = load_new_level('level_1')
	return level_data

static func load_new_level(level_name: String) -> LevelData:
	
	var level_information = LevelInformation.new()
	var level_dictionary = level_information.get_level_by_name(level_name)
	
	var level_data = LevelData.new()
	level_data.terrain_type = level_dictionary['terrain_type']
	level_data.enemy_array = level_dictionary['enemy_array']
	level_data.reward_experience = level_dictionary['reward_experience']
	level_data.reward_gold = level_dictionary['reward_gold']
	return level_data
