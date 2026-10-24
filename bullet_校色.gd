extends Area2D
var velocity:Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_to_group('子弹')
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _physics_process(delta):
	position+=velocity*10
	if position.x>1000 or position.y>1000 or position.x<-1000 or position.y<-1000:
		queue_free()
	if get_overlapping_areas():
		queue_free()
