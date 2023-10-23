extends Control

var fullscreen_val = 0
var wchance = 0.10

signal progbar_full_w
signal progbar_full_l 


#note: WR and stuff should also be hidden but isn't currently
func _ready():
	$Player_exp_ProgBar.hide()
	$Skills_container.hide()
	$"RPG Skills".show()
	
#show the exp container after the first game was played
#note: I want it to come up before einrate container
func _on_player_exp_prog_bar_changed():
	$Player_exp_ProgBar.show()

#show the learn skill nodes after exp level 5 is reached
func _on_label_level_signal():
		$Skills_container.show()

#fullscreen toggle bound to the fullscreen button
#will have to be put somewhere more sensible at some point obviously
func _on_check_button_pressed():
	fullscreen_val += 1
	if fullscreen_val == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		
	if fullscreen_val == 2:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		fullscreen_val = 0 

#calculate the result of the game based on current elo and skills 
func _on_play_game_prog_bar_game_over():
	wchance = 0.1 + (0.1 * $Skills_container.skill_level_check + 1) * 10 / ($Play_game_ProgBar/GridContainer/Elo_amount.elo + 1)
	
	if randf() < wchance:
		emit_signal("progbar_full_w")
	else:
		emit_signal("progbar_full_l")
	

