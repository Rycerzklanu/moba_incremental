extends Label

var mechanics = 0
var count = 0
func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [3,4,5,6,7,10,11,12,20,36,40,41,56]:
		mechanics += 1
		set_text("Mechanics: " + str(mechanics))
