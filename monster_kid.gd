extends CharacterBody2D
"""
const  mons_kid_dialogue = preload("res://dialogues/mons_kid_dialogue.dialogue")

var is_dialogue_active = false

func _ready():
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
	
func interactuar():
	print("interaccion")
	DialogueManager.show_dialogue_balloon(mons_kid_dialogue, "start")

func _on_dialogue_started(dialogue):
	is_dialogue_active = true
	
func _on_dialogue_ended(dialogue):
	await get_tree().create_timer(0.10).timeout
	is_dialogue_active = false
"""
