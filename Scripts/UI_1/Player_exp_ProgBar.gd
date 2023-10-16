extends ProgressBar

func _on_tab_1ui_progbar_full_l():
	value += 100


func _on_tab_1ui_progbar_full_w():
	value += 300
	
func _process(_delta):
	if value >= max_value:
		value -= max_value
		max_value *= 1.05
