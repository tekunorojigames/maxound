extends Spatial

export(int, 1,6) var Line

var is_pressed = false

func _ready():
	set_process_input(true)

func _input(event):
	match Line:
		1:
			if event.is_action_pressed("lane_1"):
				is_pressed = true
			elif event.is_action_released("lane_1"):
				is_pressed = false
		2: 
			if event.is_action_pressed("lane_2"):
				is_pressed = true
			elif event.is_action_released("lane_2"):
				is_pressed = false
		3: 
			if event.is_action_pressed("lane_3"):
				is_pressed = true
			elif event.is_action_released("lane_3"):
				is_pressed = false
		4: 
			if event.is_action_pressed("lane_4"):
				is_pressed = true
			elif event.is_action_released("lane_4"):
				is_pressed = false
		5: 
			if event.is_action_pressed("lane_5"):
				is_pressed = true
			elif event.is_action_released("lane_5"):
				is_pressed = false
		6: 
			if event.is_action_pressed("lane_6"):
				is_pressed = true
			elif event.is_action_released("lane_6"):
				is_pressed = false
func _process(_delta):
	if is_pressed:
		self.scale = Vector3(1,1,0.5)
	else:
		self.scale = Vector3(1,1,1)
