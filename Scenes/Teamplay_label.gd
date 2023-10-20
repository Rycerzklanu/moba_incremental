extends Label

var teamplay = 0
var count = 0
func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [14,15,18,21,22,24,25,26,27,28,29,30,31,32,33,34,36,38,56,50,51,54,55,57,58]:
		teamplay += 1
		set_text("Teamplay patterns: " + str(teamplay))
