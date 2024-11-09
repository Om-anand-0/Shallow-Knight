extends Node2D
const SPPED = 50
var direction = 1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $killzone/CollisionShape2D/RayCastRight
@onready var ray_cast_left: RayCast2D = $killzone/CollisionShape2D/RayCastLeft


func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * SPPED * delta
