extends ProgressBar

#define signal for when value is reset to 0
signal valchanged

#define signal that will be emitted when the "Learn skill" button is pressed
#the signal will cause the "Play game" button to unpress and stop the game progress
signal button_stop1

func _on_learn_skill_toggled(button_pressed):
	if button_pressed:
		emit_signal("button_stop1")

#when the "Play_game" button is pressed, starts the timer and keeps on playingg
#the game
func _on_play_game_toggled(button_pressed):
	_on_timer_timeout()
	if !button_pressed:
		$Timer.stop()
		
#the specific function responsible for the timer restarts
func _on_timer_timeout():
	$Timer.start()
	value += 70

#every frame check if the value is equal to 100 (max, no excess value
#is transferred over to the next game)
#if value equal to 100 is detected - reset it and emit the valchanged signal
#that means the game has ended - this signal should be renamed as it's
#name is misleading
func _process(_delta):
	if value == 100:
		value -= 100
		set_value_no_signal(value)
		emit_signal("valchanged")
