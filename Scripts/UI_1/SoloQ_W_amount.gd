extends Label
var value = 0

#if the game is won, increment the amount of wins
func _on_tab_1ui_progbar_full_w():
	value += 1
	set_text(str(value))
