extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	print("you died")
	Engine.time_scale = 0.9
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
