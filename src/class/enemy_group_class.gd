class_name EnemyGroupClass extends Node

var texture: Texture
var enemy_agent = preload("res://src/actor/enemy_axeman.tscn")

var enemy_array: Array
var enemy_item_array: Array

func _ready():
	pass

func setup(enemy_array: Array) -> void:

	self.setup_enemies(enemy_array)


func setup_enemies(enemy_array: Array):
	
	self.enemy_array = enemy_array
	
	if enemy_array.size() <= 0:
		return
		
	var count = 1
	for enemy in self.enemy_array:
		
		var new_enemy_agent = enemy_agent.instantiate()
		new_enemy_agent.setup(enemy)
		new_enemy_agent.position.x = 700
		new_enemy_agent.position.y = count * 50 + 100
		new_enemy_agent.add_to_group('enemy')
		new_enemy_agent.target_component.target_group = "hero"

		count += 1

func is_all_dead():
	
	for enemy in self.enemy_array:
		
		print(self.enemy_array[0])
