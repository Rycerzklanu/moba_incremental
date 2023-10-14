extends Label

var count = 0



func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [1,2]:
		set_text("Vision++")
	if count in [3,4,5,6,7,8,9]:
		set_text("Mechanics++")
	if count in [9,10,11]:
		set_text("Knowledge++")
	
