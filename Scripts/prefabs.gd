extends Node

var asset_dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func instantiate_prefab(prefab, parent):
	if(!asset_dictionary.has(prefab)):
		asset_dictionary[prefab] = load(prefab)
		Debug.log("Loaded "+prefab+" into AssetDictionary")
	
	var new_object = asset_dictionary[prefab].instantiate()
	if(parent!=null):
		parent.add_child(new_object)
	return new_object
