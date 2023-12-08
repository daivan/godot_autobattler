extends Node2D
class_name AttackComponent

@export var animation_player:AnimationPlayer
@export var attackRangeComponent:AttackRangeComponent
@export var targetComponent:TargetComponent


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_attack_timer_timeout():
	if self.targetComponent != null:
		print('Axeman is attacking')
		animation_player.play('attack')
		#if attackRangeComponent.get_nodes_in_range().has(self.targetComponent.get_target()):
		self.targetComponent.get_target().currentHealth -= 10
		
