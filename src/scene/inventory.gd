extends Node2D

var inventory_item = preload("res://src/scene/inventory_item.tscn")

var inventory_data: Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	#self.inventory_data = GameManager.get_inventory()
	
	if self.inventory_data.size() > 0:
		draw_inventory(self.inventory_data)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func draw_inventory(inventory_data):

	var count = 1
	for item in inventory_data:
		
		var inventory_item_object = self.inventory_item.instantiate()
		inventory_item_object.position.x = count * 75
		inventory_item_object.position.y = 80
		add_child(inventory_item_object)
		count += 1
		pass
