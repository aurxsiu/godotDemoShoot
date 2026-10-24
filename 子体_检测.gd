extends Area2D
var group
func _physics_process(delta):
	group=get_overlapping_areas()
	if group:
		for i in range(0,group.size()):
			if group[i].is_in_group('子弹'):
				$"..".queue_free()
