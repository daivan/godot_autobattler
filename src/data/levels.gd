class_name LevelInformation extends Node

enum Terrain_types {
	RUINS
}

const LEVEL_DATA_ARRAY: Dictionary = {
	"level_1": {
		"terrain_type": "ruins",
		"reward_experience": 100,
		"reward_gold": 50,
		"enemy_array": ["wolf"]
	},
	"level_2": {
		"terrain_type": "ruins",
		"reward_experience": 200,
		"reward_gold": 100,
		"enemy_array": ["wolf","skeleton"]
	},
	"level_3": {
		"terrain_type": "ruins",
		"reward_experience": 300,
		"reward_gold": 150,
		"enemy_array": ["wolf","skeleton","skeleton"]
	},
	"level_4": {
		"terrain_type": "ruins",
		"reward_experience": 400,
		"reward_gold": 200,
		"enemy_array": ["wolf","skeleton","skeleton","skeleton"]
	},
	"level_5": {
		"terrain_type": "ruins",
		"reward_experience": 400,
		"reward_gold": 250,
		"enemy_array": ["wolf","skeleton","skeleton","skeleton","skeleton"]
	},
	"level_6": {
		"terrain_type": "ruins",
		"reward_experience": 500,
		"reward_gold": 300,
		"enemy_array": ["wolf","skeleton","skeleton","skeleton","skeleton","skeleton"]
	},
	"level_7": {
		"terrain_type": "ruins",
		"reward_experience": 600,
		"reward_gold": 400,
		"enemy_array": ["wolf","skeleton","skeleton","skeleton","skeleton","skeleton","skeleton"]
	},		
}

func get_level_by_name(level_key: String) -> LevelData:
	#var level_dictionary = self.generate_random_level('easy')
	#var level_data = self.convert_to_resource(level_dictionary)
	var level_data = self.convert_to_resource(LEVEL_DATA_ARRAY[level_key])
	return level_data


func convert_to_resource(level_dictionary) -> LevelData:
	var level_data = LevelData.new()
	level_data.terrain_type = level_dictionary['terrain_type']
	level_data.reward_experience = level_dictionary['reward_experience']
	level_data.reward_gold = level_dictionary['reward_gold']
	
	var enemy_array = []
	var enemy_information = EnemyInformation.new()
	for enemy_string in level_dictionary['enemy_array']:
		var enemy_data = enemy_information.get_enemy_by_name(enemy_string)
		enemy_array.append(enemy_data)
		
	level_data.enemy_array = enemy_array
	return level_data

func generate_random_level(difficulty: String) -> Dictionary:
	
	var terrain_type = self.randomize_terrain_type()
	var enemy_array = self.randomize_enemies()
	
	var random_level = {
		"terrain_type": terrain_type,
		"enemy_array": enemy_array
	}
	return random_level

func randomize_terrain_type() -> String:
	var terrain_type = 'ruins'
	return terrain_type
	
func randomize_enemies() -> Array:
	var enemy_array = ["wolf", "skeleton"]
	return enemy_array
