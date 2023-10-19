extends Label
var value = 0

#if the game is lost, increment the amount of losses
func _on_tab_1ui_progbar_full_l():
	value += 1
	set_text(str(value))
