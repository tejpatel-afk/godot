extends CharacterBody2D


@export var speed = 100.0

var direction = 1
var start_x

func _ready():
	start_x = global_position.x

func _physics_process(delta):
	velocity.x = speed * direction
	move_and_slide()

	if global_position.x < start_x - 100:
		direction = 1

	if global_position.x > start_x + 100:
		direction = -1


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn")
