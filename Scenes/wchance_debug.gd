extends Label


func _process(_delta):
	set_text(str(get_parent().wchance))
