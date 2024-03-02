extends Node2D


var world_map_data: WorldMapData

@onready var selected_mission = $SelectedMission

# Called when the node enters the scene tree for the first time.
func _ready():
	self.selected_mission.visible = false
	
	self.world_map_data = GameManager.get_world_map()
	
	if world_map_data.world_map_node_array.size() > 0:
		draw_army(world_map_data.world_map_node_array)
		
		
func _process(delta):
	pass
		
		
func draw_army(world_map_node_array) -> void:
	var world_map_node = preload("res://src/scene/world_map_node.tscn")
	var column = 0
	var row = 0
	for world_map_node_resource in world_map_node_array:
		
		var WorldMapNode = world_map_node.instantiate()
		WorldMapNode.setup(world_map_node_resource)
		WorldMapNode.position.x = 50 + (column * 100)
		WorldMapNode.position.y = 100 + (row * 80)
		add_child(WorldMapNode)
		row += 1
		if (row == 3):
			column += 1
			row = 0

func _on_button_configure_army_pressed():
	get_tree().change_scene_to_file("res://src/scene/configure_army.tscn")


