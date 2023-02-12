extends Control

@export_node_path("Factory") var factory_path : NodePath
@export_node_path("Label") var selected : NodePath
@export_file("*.tscn") var ui_tool_button_prefab : String

var factory : Factory
var label : Label
var tool_buttons : Array[Button] = []

# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_node(selected)
	factory = get_node(factory_path)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_tool_button(tool):
	var start_x : int = 0
	for i in range(0, tool_buttons.size()) :
		if(start_x < tool_buttons[i].position.x):
			start_x = tool_buttons[i].position.x + tool_buttons[i].size.x
	var new_btn = Prefabs.instantiate_prefab(ui_tool_button_prefab)
	new_btn.position = Vector2(start_x,0)
	new_btn.text = tool.
	pass

func _on_tool_button_pressed():
	label.text = "Selected: 1x1"
	pass # Replace with function body.


func _on_tool_button_2_pressed():
	label.text = "Selected: 2x2"
	pass # Replace with function body.


func _on_tool_button_3_pressed():
	label.text = "Selected: 3x3"
	pass # Replace with function body.
