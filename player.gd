extends Area2D
@export var speed = _process


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var Velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		Velocity.x += 150
	if Input.is_action_pressed("move_left"):
		Velocity.x -= 150
	if Input.is_action_pressed("move_up"):
		Velocity.y -= 150
	if Input.is_action_pressed("move_down"):
		Velocity.y += 150
	
	if Velocity.length() > 0:
		position += Velocity * delta
	


func _on_body_entered(body):
	hide()
