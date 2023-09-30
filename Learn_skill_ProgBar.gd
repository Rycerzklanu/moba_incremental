extends ProgressBar
signal skill_progbar_full
func _on_learn_skill_toggled(button_pressed):
	_on_timer_timeout()
	if !button_pressed:
		$Timer.stop()
func _process(_delta):
	if value == 100:
		emit_signal("skill_progbar_full")
		value -= 100
		set_value_no_signal(value)

func _on_timer_timeout():
	$Timer.start()
	value += 20
	
	
	



