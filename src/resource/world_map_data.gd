class_name WorldMapData extends Resource

@export var world_map_node_array: Array = []

func save() -> void:
	ResourceSaver.save(self, "user://world_map_data.tres")
	
static func load_or_create() -> WorldMapData:
	var res = load_new_world_map()
	
	#var res: WorldMapData = load("user://world_map_data.tres") as WorldMapData
	
	if !res:
		res = load_new_world_map()
	
	return res

static func load_new_world_map() -> WorldMapData:
	
	var world_map_node_data_object = WorldMapNodeData.new()
	
	var world_map_data = WorldMapData.new()
	
	var node_data1 = world_map_node_data_object.generate_world_map_node(1)
	world_map_data.world_map_node_array.append(node_data1)
	
	var node_data2 = world_map_node_data_object.generate_world_map_node(1)
	world_map_data.world_map_node_array.append(node_data2)
	
	var node_data3 = world_map_node_data_object.generate_world_map_node(1)
	world_map_data.world_map_node_array.append(node_data3)
	
	var node_data4 = world_map_node_data_object.generate_world_map_node(2)
	world_map_data.world_map_node_array.append(node_data4)
	
	var node_data5 = world_map_node_data_object.generate_world_map_node(2)
	world_map_data.world_map_node_array.append(node_data5)
	
	var node_data6 = world_map_node_data_object.generate_world_map_node(2)
	world_map_data.world_map_node_array.append(node_data6)
	
	var node_data7 = world_map_node_data_object.generate_world_map_node(3)
	world_map_data.world_map_node_array.append(node_data7)

	var node_data8 = world_map_node_data_object.generate_world_map_node(3)
	world_map_data.world_map_node_array.append(node_data8)
	
	var node_data9 = world_map_node_data_object.generate_world_map_node(3)
	world_map_data.world_map_node_array.append(node_data9)
	
	var node_data10 = world_map_node_data_object.generate_world_map_node(4)
	world_map_data.world_map_node_array.append(node_data10)
	
	var node_data11 = world_map_node_data_object.generate_world_map_node(4)
	world_map_data.world_map_node_array.append(node_data11)
	
	var node_data12 = world_map_node_data_object.generate_world_map_node(4)
	world_map_data.world_map_node_array.append(node_data12)
	
	var node_data13 = world_map_node_data_object.generate_world_map_node(5)
	world_map_data.world_map_node_array.append(node_data13)
	
	var node_data14 = world_map_node_data_object.generate_world_map_node(5)
	world_map_data.world_map_node_array.append(node_data14)
	
	var node_data15 = world_map_node_data_object.generate_world_map_node(5)
	world_map_data.world_map_node_array.append(node_data15)
	
	var node_data16 = world_map_node_data_object.generate_world_map_node(6)
	world_map_data.world_map_node_array.append(node_data16)
	
	var node_data17 = world_map_node_data_object.generate_world_map_node(6)
	world_map_data.world_map_node_array.append(node_data17)
	
	var node_data18 = world_map_node_data_object.generate_world_map_node(6)
	world_map_data.world_map_node_array.append(node_data18)
	
	var node_data19 = world_map_node_data_object.generate_world_map_node(7)
	world_map_data.world_map_node_array.append(node_data19)
	
	var node_data20 = world_map_node_data_object.generate_world_map_node(7)
	world_map_data.world_map_node_array.append(node_data20)
	
	var node_data21 = world_map_node_data_object.generate_world_map_node(7)
	world_map_data.world_map_node_array.append(node_data21)
	
	return world_map_data

static func get_world_map_data() -> WorldMapData:
	return load_or_create()
