extends Node

var console : RichTextLabel
var console_content = []
@export var ConsoleContentSize : int = 30
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func log(text):
	print(text)
	console_content.push_back(">"+text)
	if(console_content.size() > ConsoleContentSize):
		console_content.remove_at(0)
	if(console != null) :
		var console_text = ""
		for i in range(0, console_content.size()) :
			console_text = console_text + console_content[i] + "\n"
			pass
		console.text = console_text
	pass

func register_UI_console(control): 
	console = control
	Debug.log("Registered "+control.name+" as a UI logger")
	pass

