extends Control

@onready var animation = $".."

func _on_resume_button_up():
	animation.saveMenu()
	animation.resumeGame("save")

func _on_exit_button_up():
	get_tree().quit()
