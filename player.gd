class_name Player 
extends Area2D

signal hit
signal healthChanged

@export var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.

@export var maxHealth = 3
@onready var currentHealth: int = maxHealth

var dead = false

func _ready():
	screen_size = get_viewport_rect().size
	hide()

func _process(delta):
	if dead == false:
		var velocity = Vector2.ZERO # The player's movement vector.
		if Input.is_action_pressed("move_right"):
			velocity.x += 1
		if Input.is_action_pressed("move_left"):
			velocity.x -= 1
		if Input.is_action_pressed("move_down"):
			velocity.y += 1
		if Input.is_action_pressed("move_up"):
			velocity.y -= 1

		if velocity.length() > 0:
			velocity = velocity.normalized() * speed
			$AnimatedSprite2D.play() # $ is shorthand for get_node()
		else:
			$AnimatedSprite2D.stop()

		position += velocity * delta
		position = position.clamp(Vector2.ZERO, screen_size)

		if velocity.x != 0:
			if velocity.x > 0:
				$AnimatedSprite2D.animation = "right"
			else:
				$AnimatedSprite2D.animation = "left"
			
		elif velocity.y != 0:
			if velocity.y > 0:
				$AnimatedSprite2D.animation = "down"
			else:
				$AnimatedSprite2D.animation = "up"

func start(pos):
	dead = false
	position = pos
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

func _on_body_entered(_body):
	# Must be deferred as we can't change physics properties on a physics callback.
	currentHealth -= 1
	healthChanged.emit(currentHealth)
	
	if currentHealth == 0:
		currentHealth = maxHealth
		death()
	

#https://forum.godotengine.org/t/death-in-my-game/56488
func _on_death_timer_timeout() -> void:
	hide()
