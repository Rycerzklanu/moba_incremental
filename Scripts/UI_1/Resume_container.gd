extends GridContainer
var skill_level = -1
var resume_contents = ""

func _on_learn_skill_prog_bar_skill_progbar_full():
	resume_contents = $Resume_label.text
	skill_level += 1
	if skill_level == 1:
		$Resume_label.set_text(resume_contents + "
		" + "- Turning the monitor on")
	if skill_level == 2:
		$Resume_label.set_text(resume_contents + "
		" + "- Using the keyboard")
	if skill_level == 5:
		$Resume_label.set_text(resume_contents + "
		" + "- Using the mouse")
	if skill_level == 7:
		$Resume_label.set_text(resume_contents + "
		" + "- EOC")
