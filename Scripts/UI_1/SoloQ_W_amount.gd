extends Label
var value = 0


func _on_tab_1ui_progbar_full_w():
	value += 1
	set_text(str(value))
