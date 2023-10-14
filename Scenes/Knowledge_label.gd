extends Label

var knowledge = 0
var count = 0
func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [10,11]:
		knowledge += 1
		set_text("Knowledge: " + str(knowledge))
