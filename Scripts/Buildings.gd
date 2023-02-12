extends Node

@export var building_list : Array[NodePath]
@export_node_path var ui_toolset_path : NodePath
var ui_toolset : UIToolset

# Called when the node enters the scene tree for the first time.
func _ready():
	ui_toolset = get_node(ui_toolset_path)
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
