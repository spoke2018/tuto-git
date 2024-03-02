extends Node2D


@export var speed = 400.0

@onready var direction := Vector2.RIGHT.rotated(rotation)

func _physics_process(delta: float) -> void:
	var velocity = direction * speed * delta
	global_position += velocity 
	


func _on_area_entered(area: Area2D) -> void:
	#push_warning("colision asteroid et tir")
	if area is Asteroid:
		area.destroy()
		queue_free()
