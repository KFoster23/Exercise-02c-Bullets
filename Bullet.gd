extends Area2D

onready var VP = get_viewport().size
onready var Explosions = get_node("/root/Game/Explosions")
var Explosion = load("res://Explosions/Explosion.tscn")

export var Velocity = Vector2(0,-1)
export var Acceleration = Vector2(0,-1)


func _physics_process(_delta):
	position += Velocity
	Velocity += Acceleration
	if global_position.x < -10 or global_position.x > VP.x + 10 or global_position.y < -10 or global_position.y > VP.y + 10:
		queue_free()




func _on_Bullet_body_entered(body):
	pass # Replace with function body.
