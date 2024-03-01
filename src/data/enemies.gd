class_name EnemyInformation extends Node

const ENEMY_DATA_ARRAY: Dictionary = {
	"wolf": {
		"type": "wolf",
		"name": "wolfie",
		"max_health": 100,
		"current_health": 100,
	},
	"skeleton": {
		"type": "skeleton",
		"name": "Skeletooor",
		"max_health": 200,
		"current_health": 200,
	}
}

func get_enemy_by_name(enemy_key: String) -> EnemyData:
	var enemy_data = convert_to_resource(ENEMY_DATA_ARRAY[enemy_key])
	return enemy_data

func convert_to_resource(enemy_dictionary) -> EnemyData:
	var enemy_data = EnemyData.new()
	enemy_data.name = enemy_dictionary.name
	enemy_data.max_health = enemy_dictionary.max_health
	enemy_data.current_health = enemy_dictionary.current_health
	enemy_data.type = enemy_dictionary.type
	return enemy_data
