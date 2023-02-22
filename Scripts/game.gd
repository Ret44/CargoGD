class_name Game
extends Node

@export_file("*.tscn") var prefab_main_menu : String
@export_file("*.tscn") var prefab_factory : String
@export_file("*.tscn") var prefab_UI_debug : String

var main_camera : Camera2D

var UI_canvas : Control
var Gameplay_Area : Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	UI_canvas = get_node("UICanvas")
	main_camera = get_node("MainCamera")
#	var UI_console = Prefabs.instantiate_prefab(prefab_UI_debug, UI_canvas)# instantiate_prefab(prefab_UI_debug,UI_canvas)
	
	Gameplay_Area = get_node("GameplayArea")
	var factory : Factory = Prefabs.instantiate_prefab(prefab_factory, Gameplay_Area)
	factory.load_level("test")
	
	center_camera()
	pass # Replace with function body.

func center_camera():
	var nodes = []
	nodes = get_array_of_nodes(nodes, Gameplay_Area)
	var x = 0
	var y = 0
	for i in range(0, nodes.size()):
		x = x + nodes[i].x
		y = y + nodes[i].y
	x = x/nodes.size()
	y = y/nodes.size()
	main_camera.position = Vector2(x, y)
	pass

func get_array_of_nodes(arr, root):
	if(root.get_child_count() == 0):
		arr.push_back(root.global_position)
	else:
		for c in range(0, root.get_child_count()):
			arr = get_array_of_nodes(arr, root.get_child(c))
	return arr
	
func load_level():
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
