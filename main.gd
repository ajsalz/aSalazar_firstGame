extends Node

@export var spawn_object = preload("res://commonEnemy.tscn")

@onready var heartContainer = $CanvasLayer/heartContainer
@onready var player = $Player

var score
	
func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()
	$HUD.show_game_over()
	$Music.stop()
	$DeathSound.play()


func new_game():
	#get_tree().call_group("mobs", "queue_free")
	score = 0
	
	heartContainer.setMaxHearts(player.maxHealth)
	heartContainer.updateHearts(player.currentHealth)
	player.healthChanged.connect(heartContainer.updateHearts)
	
	$Player.start($StartPosition.position)
	$commonEnemies.start()
	$StartTimer.start()
	
	$HUD.update_score(score)
	$HUD.show_message("they hunger...")
	
	#$Music.play()
	


func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()
