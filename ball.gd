extends CharacterBody2D

var direction = Vector2.ZERO
const SPEED = 500.0

func _ready():
	await get_tree().create_timer(3.0).timeout
	queue_free()

func _physics_process(delta):
	var collision = move_and_collide(direction * SPEED * delta)

	if collision:
		direction = direction.bounce(collision.get_normal())
