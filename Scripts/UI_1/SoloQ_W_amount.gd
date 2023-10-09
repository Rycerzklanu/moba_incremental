extends Label
var value = 0


func _on_play_game_prog_bar_progbar_full_w():
	value += 1
	set_text(str(value))
