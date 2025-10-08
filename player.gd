class_name Player 
extends Area2D

signal hit
signal healthChanged

@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.

@export var maxHealth = 3
@onready var currentHealth: int = maxHealth

var velocity = Vector2.ZERO

var dead = false
var vicinity = false

var knock_back: Vector2 = Vector2.ZERO
var knock_timer: float = 0.0 

func _ready():
	screen_size = get_viewport_rect().size
	#hide()
	start()

func _process(delta):
	if dead == false:
		var input_velocity = Vector2.ZERO
		
		 # The player's movement vector.
		if Input.is_action_pressed("move_right"):
			input_velocity.x += 1
		if Input.is_action_pressed("move_left"):
			input_velocity.x -= 1
		if Input.is_action_pressed("move_down"):
			input_velocity.y += 1
		if Input.is_action_pressed("move_up"):
			input_velocity.y -= 1

		input_velocity = input_velocity.normalized()

		if knock_timer > 0.0:
			position += knock_back * delta
			knock_timer -= delta
			if knock_timer <= 0.0:
				knock_back = Vector2.ZERO
		else:
			velocity = input_velocity * speed
			position += velocity * delta

		position = position.clamp(Vector2.ZERO, screen_size)
		
		if input_velocity.length() > 0:
			input_velocity = input_velocity.normalized() * speed
			$AnimatedSprite2D.play() # $ is shorthand for get_node()
		else:
			$AnimatedSprite2D.stop()	
			
		if input_velocity.x != 0:
			if input_velocity.x > 0:
				$AnimatedSprite2D.animation = "right"
			else:
				$AnimatedSprite2D.animation = "left"
			
		elif input_velocity.y != 0:
			if input_velocity.y > 0:
				$AnimatedSprite2D.animation = "down"
			else:
				$AnimatedSprite2D.animation = "up"
	
func start():
	dead = false
	#position = pos
	show()
	$AnimatedSprite2D.animation = "new"
	$CollisionShape2D.disabled = false
	
func death():
	var velocity = Vector2()
	dead = true
	velocity = Vector2(0,0)
	$CollisionShape2D.set_deferred("disabled", true)
	emit_signal("hit")
	$AnimatedSprite2D.play("death")
	$DeathTimer.start()
	
#Got help from this beautiful person 
#https://forum.godotengine.org/t/how-to-add-a-death-animation-for-dodge-the-creeps-tutorial-solved/8689/5

func take_damage():
	currentHealth -= 1
	healthChanged.emit(currentHealth)
	
	if currentHealth == 0:
		currentHealth = maxHealth
		death()
	
func _on_body_exited(_body):
	take_damage()

func knockback(direction:Vector2, force: float, duration: float):
	knock_back = direction * force
	knock_timer = duration
	
#https://forum.godotengine.org/t/death-in-my-game/56488
func _on_death_timer_timeout() -> void:
	hide()
