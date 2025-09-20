class_name  Enemy
extends CharacterBody2D

@export var speed = 10
@export var limit = 0.5

@onready var endPoint = $Marker2D
@onready var animations = $AnimatedSprite2D

var score = 0

var startPosition
var endPosition
var target: Player = null


var active = false
var following = false

func _ready():
	print("Marker2D:", $Marker2D)
	print("Children:", get_children())

	hide()
	active = false
	score = 0
	
	startPosition = position
	endPosition = endPoint.global_position

func start():
	show()
	active = true
	$AnimatedSprite2D.animation = "walkDown"
	$CollisionShape2D.disabled = false
	
func death():
	$CollisionShape2D.set_deferred("disabled", true)
	$AnimatedSprite2D.play("death")
	
func game_over():
	hide()
	active = false
	
func changeDirection():
	var tempEnd = endPosition
	endPosition = startPosition
	startPosition = tempEnd
	
func patrol():
	var moveDirection = endPosition - position
	if moveDirection.length() < limit:
		changeDirection()
		velocity = Vector2.ZERO
	velocity = moveDirection.normalized() * speed

func follow():
	speed = 50
	var direction = target.global_position - position
	velocity = direction.normalized() * speed
		
func updateAnimation():
	var animationString 
	if following:
		if velocity.y < 0:
			animationString = "attackUp"
		elif velocity.y > 0:
			animationString = "attackDown"
		elif velocity.x > 0:
			animationString = "attackRight"
		else:
			animationString = "attackLeft"
	else:
		if velocity.y < 0:
			animationString = "walkUp"
		elif velocity.y > 0:
			animationString = "walkDown"
		elif velocity.x > 0:
			animationString = "walkRight"
		else:
			animationString = "walkLeft"
			
	animations.play(animationString)
	
func _physics_process(_delta):
	if active == true:
		if target:
			following = true
			follow()
		else:
			following = false
			patrol()
		move_and_slide()
		updateAnimation()

func _on_follow_area_area_entered(area: Area2D) -> void:
	if area is Player:
		target = area

func _on_follow_area_area_exited(area: Area2D) -> void:
	if area == target:
		target = null
