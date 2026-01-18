extends CharacterBody2D



var velocidad = 100
var animacion = ""


@onready var animaciones = $AnimatedSprite2D
@onready var mira = $RayCast2D

func _ready() -> void:
	add_to_group("player")

func _physics_process(delta):
	velocity = Vector2.ZERO
	
	
	#--------ARRIBA
	if Input.is_action_pressed("ui_up"):
		velocity.y = -velocidad
		mira.target_position = Vector2(0, -50)
		animacion = "kris_u"
		
	elif mira.target_position == Vector2(0, -50):
		animacion = "kris_u_idle"
		
	#--------ABAJO
	if Input.is_action_pressed("ui_down"):
		velocity.y = velocidad
		mira.target_position = Vector2(0, 50)
		animacion = "kris_d"
		
	elif mira.target_position == Vector2(0, 50):
		animacion = "kris_d_idle"
		
	#--------IZQUIERDA
	if Input.is_action_pressed("ui_left"):
		velocity.x = -velocidad
		mira.target_position = Vector2(-50, 0)
		animacion = "kris_l"
		
	elif mira.target_position == Vector2(-50, 0):
		animacion = "kris_l_idle"
		
	#--------DERECHA
	if Input.is_action_pressed("ui_right"):
		velocity.x = velocidad
		mira.target_position = Vector2(50, 0)
		animacion = "kris_r"
		
	elif mira.target_position == Vector2(50, 0):
		animacion = "kris_r_idle"
		
	move_and_slide()
	animaciones.play(animacion)
	
