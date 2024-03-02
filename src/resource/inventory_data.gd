class_name InventoryData extends Resource

@export var item_array: Array = []

func save() -> void:
	ResourceSaver.save(self, "user://inventory_data.tres")
	
static func load_or_create() -> InventoryData:
	var res: InventoryData = load("user://inventory_data.tres") as InventoryData
	
	if !res:
		res = load_new_inventory()
	
	return res

static func load_new_inventory() -> InventoryData:
	var army_data = InventoryData.new()
	var unit_data1 = UnitData.new()
	unit_data1.item_slot_1 = 'Longsword'
	army_data.unit_array.append(unit_data1)
	var unit_data2 = UnitData.new()
	army_data.unit_array.append(unit_data2)
	var unit_data3 = UnitData.new()
	army_data.unit_array.append(unit_data3)
	var unit_data4 = UnitData.new()
	army_data.unit_array.append(unit_data4)
	return army_data