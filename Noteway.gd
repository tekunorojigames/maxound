extends Spatial

var bar_scn = preload("res://Bar.tscn")
var bars = []
onready var bars_node = $BarsNode
var bar_length_in_m = 32
var curr_location = Vector3 (0,0,-bar_length_in_m)

func _ready():
	for _i in range(8):
		add_bar()
		

func add_bar():
	var bar = bar_scn.instance()
	bars.translation = Vector3(curr_location.x, curr_location.y, curr_location.z)
	bars.append(bar)
	bars_node.add_child(bar)
	curr_location += Vector3(0,0,-bar_length_in_m)
