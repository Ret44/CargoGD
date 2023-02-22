extends Node2D

@export_node_path var area2d_path : NodePath
var area2d : Area2D
var factory
var grid_position : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	area2d = get_node(area2d_path)	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_grid_position(new_pos):
	grid_position = new_pos
	pass

func setup(root, new_pos):
	grid_position = new_pos
	factory = root
	pass

func _on_area_2d_mouse_entered():
	factory.on_tile_mouse_entered(self)
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	factory.on_tile_mouse_exited(self)
	pass # Replace with function body.
