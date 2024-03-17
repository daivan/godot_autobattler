class_name BackgroundInformation extends Node

const BACKGROUND_DATA_ARRAY: Dictionary = {
	"walls": {
		"terrain_type": "walls",
		"background_texture": "res://asset/background/armory.png"
	},
	"woods": {
		"terrain_type": "woods",
		"background_texture": "res://asset/background/armory.png"
	},
	"ruins": {
		"terrain_type": "ruins",
		"background_texture": "res://asset/background/armory.png"
	},
}

func get_background_by_name(benchmark_key: String) -> BackgroundData:
	var background_data = self.convert_to_resource(BACKGROUND_DATA_ARRAY[benchmark_key])
	return background_data


func convert_to_resource(background_dictionary) -> BackgroundData:
	var background_data = BackgroundData.new()
	background_data.terrain = background_dictionary['terrain_type']
	background_data.background_texture = load(background_dictionary['background_texture'])
		
	return background_data
