extends CharacterBody2D

const MAX_SPEED = 200


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized()
	velocity = direction * MAX_SPEED
	move_and_slide()
	

func get_movement_vector():
	var movement_vector = Vector2.ZERO
	
	var x_moment = Input.get_action_raw_strength("move_right") - Input.get_action_raw_strength("move_left")
	var y_moment = Input.get_action_strength("move_down") - Input.get_action_raw_strength("move_up")
			
	return Vector2(x_moment, y_moment)
