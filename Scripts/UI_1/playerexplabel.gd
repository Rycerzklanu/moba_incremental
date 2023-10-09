extends Label
var level = 0
signal level_signal()
func _on_player_exp_prog_bar_changed():
	level += 1
	set_text("Level: " + str(level))
	if level == 5:
		emit_signal("level_signal")
