extends Control

@export var UILog : RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	UILog = get_node("DebugLog")
	Debug.register_UI_console(UILog);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
