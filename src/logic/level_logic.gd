class_name LevelLogic extends Node

var BackgroundLogic = load("res://src/logic/background_logic.gd").new()

func load_level(level_name: String) -> LevelData:

	var level_information = LevelInformation.new()
	var level_dictionary = level_information.get_level_by_name(level_name)
	
	var level_data = LevelData.new()
	level_data.terrain_type = level_dictionary['terrain_type']
	level_data.enemy_array = level_dictionary['enemy_array']
	level_data.reward_experience = level_dictionary['reward_experience']
	level_data.reward_gold = level_dictionary['reward_gold']
	level_data.tilemap = load("res://src/tilemap/tile_map.tscn")
	level_data.background_data = BackgroundLogic.load_background(level_data.terrain_type)
	
	return level_data
