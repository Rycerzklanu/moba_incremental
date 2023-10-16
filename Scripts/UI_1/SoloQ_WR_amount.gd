extends Label
var wins = 0.0
var losses = 0.0
var wr = 0.0
func _ready():
	set_text("0%")

func _on_tab_1ui_progbar_full_l():
	losses += 1
	wr = roundf(wins/(wins+losses) * 100)
	set_text(str(wr)+"%")


func _on_tab_1ui_progbar_full_w():
	wins += 1
	wr = roundf(wins/(wins+losses) * 100)
	set_text(str(wr)+"%")
