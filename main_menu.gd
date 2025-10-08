class_name MainMenu
extends Control

@onready var start_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button
@onready var quit_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Quit_Button
@onready var credits_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Credits_Button
@onready var options_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Options_Button
@onready var start_level = preload("res://main.tscn") as PackedScene

func _ready():
	start_button.button_down.connect(on_start_pressed)
	quit_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
	
func on_exit_pressed() -> void:
	get_tree().quit()
