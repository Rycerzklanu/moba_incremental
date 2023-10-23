extends ProgressBar

signal game_over

#define signal that will be emitted when the "Learn skill" button is pressed
#the signal will cause the "Play game" button to unpress and stop the game progress
signal button_stop1

func _on_learn_skill_toggled(button_pressed):
	if button_pressed:
		emit_signal("button_stop1")


func _on_play_game_toggled(button_pressed):
	_on_timer_timeout()
	if !button_pressed:
		$Timer.stop()
		
#the function responsible for the timer restarts
func _on_timer_timeout():
	$Timer.start()
	value += 70


func _process(_delta):
	if value == 100:
		value -= 100
		set_value_no_signal(value)
		emit_signal("game_over")
