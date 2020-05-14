extends Spatial

var note_scn = preload("res://note.tscn")

var notes_data = [
	{
		"pos": 0 # 0
		#"len": 100
	},
	{
		"pos": 400 #400*0.001 = 0,8 units in Godot
		#"len": 100
	},
	{
		"pos": 800 #800*0.001 = 1,6 units in Godot
		#"len": 100
	},
	{
		"pos": 1200 #1200*0.001 = 3,2 units in Godot
		#"len": 100
	},
]

var note_scale = 0.002

func _ready():
	add_notes()

func add_notes():
	for note_data in notes_data:
		randomize()
		var note = note_scn.instance()
		note.Line = (randi() %6) +1
		note.position = int(note_data.pos)*note_scale
		add_child(note)
