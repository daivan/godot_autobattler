extends Node2D

var level_data:LevelData
var army_data: ArmyData
var enemy_group_class = EnemyGroupClass.new()
var enemy_array: Array


var timer = 0.0
var interval = 1.0 # Interval in seconds

func _ready():

	# Load corret level
	var level_logic = LevelLogic.new()
	self.level_data = level_logic.load_level("level_1")
	
	#### Which brings correct enemy army
	self.enemy_group_class.setup(self.level_data.enemy_array)
	add_child(self.enemy_group_class)
	
	# Dynamically load army
	self.army_data = ArmyData.new_game_army("army_1")
	var army_group_class = ArmyGroupClass.new()
	army_group_class.setup(self.army_data.unit_array)
	add_child(army_group_class)
	
	#### Which brings correct map
	var background = Background.new()
	background.setup(self.level_data.background_data)
	add_child(background)

func _process(delta):
	timer += delta
	if timer >= interval:
		timer -= interval
		enemy_group_class.is_all_dead()
		print('Varje sekund')
		
	pass
