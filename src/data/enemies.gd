class_name EnemyInformation extends Node

const ENEMY_DATA_ARRAY: Dictionary = {
	"spider": {
		"type": "spider",
		"name": "Spiddy",
		"max_health": 50,
		"current_health": 50,
		"thumbnail_path": "res://asset/character/tile_0086.png"
	},	
	"wolf": {
		"type": "wolf",
		"name": "wolfie",
		"max_health": 100,
		"current_health": 100,
		"thumbnail_path": "res://asset/character/tile_0084.png"
	},
	"skeleton": {
		"type": "skeleton",
		"name": "Skeletooor",
		"max_health": 200,
		"current_health": 200,
		"thumbnail_path": "res://asset/character/tile_0085.png"
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
	enemy_data.thumbnail_path = enemy_dictionary.thumbnail_path
	return enemy_data
