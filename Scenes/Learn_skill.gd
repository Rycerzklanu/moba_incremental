extends Button

#after receiving the signal to unpress from the skill Progbar, unpress
func _on_learn_skill_prog_bar_stop_button():
	button_pressed = false
