extends Label


var vision = 0
var count = 0
func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [1,2,13,19,47,62,63]:
		vision += 1
		set_text("Vision: " + str(vision))
