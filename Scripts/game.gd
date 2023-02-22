class_name Game
extends Node

@export_file("*.tscn") var prefab_main_menu : String
@export_file("*.tscn") var prefab_factory : String
@export_file("*.tscn") var prefab_UI_debug : String

var UI_canvas : Control
var Gameplay_Area : Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	UI_canvas = get_node("UICanvas")
#	var UI_console = Prefabs.instantiate_prefab(prefab_UI_debug, UI_canvas)# instantiate_prefab(prefab_UI_debug,UI_canvas)
	
	Gameplay_Area = get_node("GameplayArea")
	var factory : Factory = Prefabs.instantiate_prefab(prefab_factory, Gameplay_Area)
	factory.load_level("test")
	pass # Replace with function body.

func load_level():
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
