class_name WorldMapData extends Resource

@export var world_map_node_array: Array = []

func save() -> void:
	ResourceSaver.save(self, "user://world_map_data.tres")
	
static func load_or_create() -> WorldMapData:
	var res: WorldMapData = load("user://world_map_data.tres") as WorldMapData
	
	if !res:
		res = load_new_world_map()
	
	return res

static func load_new_world_map() -> WorldMapData:
	
	var world_map_data = WorldMapData.new()
	
	var node_data1 = WorldMapNodeData.new()
	world_map_data.world_map_node_array.append(node_data1)
	var node_data2 = WorldMapNodeData.new()
	world_map_data.world_map_node_array.append(node_data2)
	return world_map_data
