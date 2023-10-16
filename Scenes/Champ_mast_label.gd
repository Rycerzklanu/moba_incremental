extends Label

var champ_mastery = 0
var count = 0
func _on_learn_skill_prog_bar_skill_progbar_full():
	count += 1
	if count in [16,23,35,43,45,49,52,53,60]:
		champ_mastery += 1
		set_text("Champion mastery: " + str(champ_mastery))
