extends Control
var fullscreen_val = 0
var wchance = 0.10
signal progbar_full_w
signal progbar_full_l 
func _ready():
	$Player_exp_ProgBar.hide()
	$Skills_container.hide()
	$"RPG Skills".show()
func _on_player_exp_prog_bar_changed():
	$Player_exp_ProgBar.show()


func _on_label_level_signal():
		$Skills_container.show()


func _on_check_button_pressed():
	fullscreen_val += 1
	if fullscreen_val == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		
	if fullscreen_val == 2:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		fullscreen_val = 0 


func _on_play_game_prog_bar_valchanged():
	wchance = (0.1 + 0.2 * ($"RPG Skills/Vision_label".vision + $"RPG Skills/Mechanics_label".mechanics + $"RPG Skills/Knowledge_label".knowledge + $"RPG Skills/Teamplay_label".teamplay + $"RPG Skills/Champ_mast_label".champ_mastery)) * (1000/$Play_game_ProgBar/GridContainer/Elo_amount.elo)
	print(wchance)
	if randf() < wchance:
		emit_signal("progbar_full_w")
	else:
		emit_signal("progbar_full_l")

