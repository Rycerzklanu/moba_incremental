extends Control
var resume_container = 0
var fullscreen_val = 0
func _ready():
	$Player_exp_ProgBar.hide()
	$Skills_container.hide()
	$ScrollContainer/Resume_container.hide()
	$"RPG Skills".show()
func _on_player_exp_prog_bar_changed():
	$Player_exp_ProgBar.show()


func _on_label_level_signal():
		$Skills_container.show()


func _on_learn_skill_prog_bar_skill_progbar_full():
	resume_container += 1
	if resume_container == 2:
		$ScrollContainer/Resume_container.show()


func _on_check_button_pressed():
	fullscreen_val += 1
	if fullscreen_val == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		
	if fullscreen_val == 2:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		fullscreen_val = 0 
