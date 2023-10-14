extends ProgressBar
signal progbar_full_w
signal progbar_full_l 
signal button_stop1
var wchance = 0.10
func _on_play_game_toggled(button_pressed):
	_on_timer_timeout()
	if !button_pressed:
		$Timer.stop()
func _process(_delta):
	if value == 100:
		value -= 100
		set_value_no_signal(value)
		if randf() < wchance:
			emit_signal("progbar_full_w")
		else:
			emit_signal("progbar_full_l")

func _on_timer_timeout():
	$Timer.start()
	value += 70
	
func _on_learn_skill_toggled(button_pressed):
	if button_pressed:
		emit_signal("button_stop1")
