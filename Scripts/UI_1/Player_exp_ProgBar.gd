extends ProgressBar

#the two functions increment exp based on the game result, wins give more than losses
func _on_tab_1ui_progbar_full_l():
	value += 100

func _on_tab_1ui_progbar_full_w():
	value += 300
	
#checks every frame for the max value (allows it to go over the limit and overflow into the next exp level)
#then increases the max exp value, slowing down leveling
func _process(_delta):
	if value >= max_value:
		value -= max_value
		max_value *= 1.05
