class_name Game
extends Node

@export_file("*.tscn") var MainMenuPrefab : String
@export_file("*.tscn") var UIDebug : String

# Called when the node enters the scene tree for the first time.
func _ready():
	Debug.log("Lorem Ipsum")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
