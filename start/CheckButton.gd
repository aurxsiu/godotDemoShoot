extends CheckButton


# Called when the node enters the scene tree for the first time.
func _ready():
	button_pressed=false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		get_tree().change_scene_to_file("res://本体.tscn")
	
