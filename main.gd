extends Node

@export var mob_scene: PackedScene
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
	$Player.start($StartPosition.position)
	$commonEnemies.start()
	$StartTimer.start()
	
	$HUD.update_score(score)
	$HUD.show_message("they hunger...")
	
	#$Music.play()

func _on_mob_timer_timeout():
	return


func _on_score_timer_timeout():
	score += 1
	$HUD.update_score(score)


func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()
