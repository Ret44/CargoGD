extends Node

@export var building_list : Array[NodePath]
@export_node_path var ui_toolset_path : NodePath
#var ui_toolset : UIToolset

# Called when the node enters the scene tree for the first time.
func _ready():
#   
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	for i in range(0, building_list.size()):
		var building : Building = get_node(building_list[i]) as Building
		if(Input.is_action_just_pressed(building.debug_trigger_action)):
			print("Selected "+building.building_name)
	pass
