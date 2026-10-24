extends Marker2D

func _physics_process(delta):
	global_position=(get_global_mouse_position()-$"..".global_position).normalized()*40+$"..".global_position
