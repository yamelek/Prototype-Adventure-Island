extends CharacterBody2D

@export var speed := 90.0
@export var jump_force := -220.0
@export var gravity := 600.0

func _physics_process(delta: float) -> void:
	# Gravedad
	velocity.y += gravity * delta
	
	# Movimiento automático a la derecha
	velocity.x = speed
	
	# Salto único
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_force
	
	move_and_slide()
	
