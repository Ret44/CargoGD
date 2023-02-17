extends Node2D

@export var building_name : String
@export var button_name : String
@export var debug_trigger_action : String
@export var building_element_positons : Array[Vector2]
@export var building_element_nodes : Array[NodePath]
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Building Prefab : "+building_name+", Debug_trigger: "%s",  building_name, " +debug_trigger_action)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
