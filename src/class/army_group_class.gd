class_name ArmyGroupClass extends Node

var texture: Texture
var axeman_unit = preload("res://src/actor/axeman.tscn")
var worker_unit = preload("res://src/actor/worker.tscn")
var peasant_unit = preload("res://src/actor/peasant.tscn")

func _ready():
	pass

func setup(army_data: Array) -> void:

	self.setup_army(army_data)

		
func setup_army(unit_array) -> void:
	
	if unit_array.size() <= 0:
		return
		
	var count = 1
	for unit in unit_array:
		var unit_agent = null
		if unit.unit_type == 'axeman':
			unit_agent = axeman_unit.instantiate()
		elif unit.unit_type == 'worker':
			unit_agent = worker_unit.instantiate()
		elif unit.unit_type == 'peasant':
			unit_agent = peasant_unit.instantiate()
			
						
		unit_agent.setup(unit)
		unit_agent.position.x = 50
		unit_agent.position.y = count * 50 + 100
		
		unit_agent.add_to_group('hero')
		unit_agent.target_component.target_group = "enemy"
			
		add_child(unit_agent)
		count += 1
		
