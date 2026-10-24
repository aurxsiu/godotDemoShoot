extends Node2D

var little=preload("res://子体.tscn")
var bullet=preload("res://bullet.tscn")

func _physics_process(delta):
	if Input.is_action_just_pressed('bo'):
		var pieces=little.instantiate()
		add_child(pieces)
	if Input.is_action_just_pressed('bu'):
		var bullets=bullet.instantiate()
		add_child(bullets)
		bullets.global_position=$CharacterBody2D/Marker2D.global_position
		bullets.velocity=(get_global_mouse_position()-$CharacterBody2D.global_position).normalized()
		bullets.rotation=(get_global_mouse_position()-$CharacterBody2D.global_position).angle()+PI/2
	
		
