extends Node

@onready var save_menu = $SaveMenu
@onready var player = $Player
# Called when the node enters the scene tree for the first time.
func _ready():
	save_menu.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func saveMenu():
	if player.saveInProgress():
		save_menu.visible = true
		Engine.time_scale = 0
	else:
		save_menu.visible = false
		Engine.time_scale = 1 
		
	player.setSaveInProgress()


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "save":
		saveMenu()
		print("game saved")
	else:
		pass
	
func resumeGame(from):
	if from == "save":
		$AnimationPlayer.play("resume_from_save", 1.0)
