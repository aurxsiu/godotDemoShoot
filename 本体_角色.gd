extends CharacterBody2D

func _physics_process(delta):
	
	#改变位置(随鼠标)
	var dir =get_global_mouse_position()
	self.global_position+=(dir-global_position)*delta
	#print(global_position,'xxx',dir)
