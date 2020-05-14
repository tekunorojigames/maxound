extends Spatial

export (int, 1,6) var Line
var position = 0

func _ready():
	set_position()

func set_position():
	var x
	match Line:
		1:
			x = -2.5
		2:
			x = -1.5
		3:
			x = -0.5
		4:
			x = 0.5
		5:
			x = 1.5
		6:
			x = 2.5
	self.translation = Vector3 (x,0,-position)
