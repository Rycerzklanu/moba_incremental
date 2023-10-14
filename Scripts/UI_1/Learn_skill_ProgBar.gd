extends ProgressBar
signal skill_progbar_full
signal stop_button
var on_control = 0 
func _on_learn_skill_toggled(button_pressed):
	_on_timer_timeout()
	if !button_pressed:
		$Timer.stop()
		
func _on_play_game_toggled(button_pressed):
	if button_pressed:
		$Timer.stop()
		emit_signal("stop_button")
func _process(_delta):
	if value == 100:
		emit_signal("skill_progbar_full")
		value -= 100
		set_value_no_signal(value)
		
func _on_timer_timeout():
	$Timer.start()
	value += 30


