extends Sprite2D

var velocidad = 300
var anguloVelocidad = PI

func _process(delta):
	print("Hello, class CUCEI")
	var direccion = 0
	if Input.is_action_pressed("ui_left"):
		direccion = -1
	if Input.is_action_pressed("ui_right"):
		direccion = 1
	rotation += anguloVelocidad * direccion * delta
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * velocidad
	position += velocity * delta
	
