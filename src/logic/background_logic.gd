extends Node


func load_background(background_name: String) -> BackgroundData:
	
	var background_information = BackgroundInformation.new()
	var background_data = background_information.get_background_by_name(background_name)
	
	return background_data
