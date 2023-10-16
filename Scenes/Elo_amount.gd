extends Label
var elo = 1000


func _on_tab_1ui_progbar_full_l():
	elo -= 25
	set_text(str(elo))
	if elo < 100:
		elo = 100
func _on_tab_1ui_progbar_full_w():
	elo += 25
	set_text(str(elo))
