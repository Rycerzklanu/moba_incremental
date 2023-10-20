extends Label

var count = 0

#after a skill is learned, set the flavor text to the appropiate label
#based on the number in the if statement in the Skills_container node
func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [1,2,13,19,47,62,63]:
		set_text("Vision++")
	if count in [3,4,5,6,7,10,11,12,20,36,40,41,56]:
		set_text("Mechanics++")
	if count in [8,9,17,37,44]:
		set_text("Knowledge++")
	if count in [16,23,35,43,45,49,52,53,60]:
		set_text("Champion mastery++")
	if count in [14,15,18,21,22,24,25,26,27,28,29,30,31,32,33,34,36,38,56,50,51,54,55,57,58]:
		set_text("Teamplay patterns++")
