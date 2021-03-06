extends Spatial

var bar_scn = preload ("res://Bar.tscn")
var bars = []
onready var bars_node = $BarNode
var bar_length_in_m = 32
var curr_location = Vector3(0,0,-bar_length_in_m)

func _ready():
	for i in range(6):
		add_bar()

func add_bar():
	var bar = bar_scn.instance()
	bar.translation = Vector3(curr_location.x, curr_location.y, curr_location.z)
	bars.append(bar)
	bars_node.add_child(bar)
	curr_location += Vector3(0,0,-bar_length_in_m)
