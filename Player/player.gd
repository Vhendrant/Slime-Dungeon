extends Node2D
var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Direction Input
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	position += direction * speed * delta
	
	# Fire Input
	if Input.is_action_pressed("Primary Action"):
		print("FIRE")
