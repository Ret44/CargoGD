extends Node2D

@export var building_name : String
@export var button_name : String
@export var debug_trigger_action : String
@export var building_element_positons : Array[Vector2]
@export var building_element_node_paths : Array[NodePath]

var building_element_nodes : Array[Sprite2D]

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Building Prefab : "+building_name+", Debug_trigger: "+debug_trigger_action)
	for i in range(0, building_element_node_paths.size()):
		building_element_nodes.push_back(get_node(building_element_node_paths[i]))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func change_highlight(color):
	for i in range(0, building_element_nodes.size()):
		building_element_nodes[i].modulate = color
	pass
