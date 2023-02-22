class_name Factory
extends Node2D

@export_file("*.tscn") var tile_prefab : String
var tile_map_root : Node2D
var tile_size = Vector2(75,75)
var tile_map = [[]]
var buildings
var currently_selected
var ghost
# Called when the node enters the scene tree for the first time.
func _ready():
	tile_map_root = get_node("TileMap")
	buildings = get_node("../../Buildings")
	generate_tile_set(6, 6)
	pass # Replace with function body.

func clear_ghost():
	if(ghost!=null):
		ghost.free()
	pass

func update_ghost(building, position):
	clear_ghost()
	ghost = building.instantiate()
	ghost.position = position
	ghost.change_highlight(Color(0,1,0))
	pass

func load_level(level_name):
	Debug.log("Loading level : "+level_name)
	
	pass
	
func _on_tile_hover(tile):
	Debug.log("Hovering over "+self.name)
	pass	
	
func on_tile_mouse_entered(tile):
	Debug.log("Entered "+tile.name)

	pass
	
func on_tile_mouse_exited(tile):
	Debug.log("Exited "+tile.name)
	pass

func generate_tile_set(sizex, sizey):
	clean_tile_map()
	var offset = Vector2(get_viewport().get_visible_rect().size.x / 2 - (sizex * tile_size.x)/2, get_viewport().get_visible_rect().size.y / 2 - (sizey * tile_size.y)/2 )
	tile_map = [[]]
	for x in range(0,sizex):
		for y in range(0, sizey):
			var tile_instance : Node2D = Prefabs.instantiate_prefab(tile_prefab, tile_map_root)
			tile_instance.name = "Tile[" + str(x) + "][" + str(y) + "]"
			tile_instance.position = Vector2((x*tile_size.x), (y*tile_size.y))
			tile_instance.setup(self, Vector2(x, y))
	pass

func clean_tile_map() :
	for x in range(0, tile_map.size()) :
		for y in range(0, tile_map[x].size()) :
			if(tile_map[x][y] != null) :
				tile_map[x][y].free()
		tile_map[x].clear()
	tile_map.clear()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
#	for i in range(0, buildings.building_list.size()):
#		var building = get_node(buildings.building_list[i])
		#if(Input.is_action_just_pressed(building.debug_trigger_action)):
		#	currently_selected = building
		#	print("Selected "+currently_selected.building_name)
	pass
