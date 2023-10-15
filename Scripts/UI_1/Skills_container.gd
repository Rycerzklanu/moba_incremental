extends GridContainer
var skill_level_check = 2



func _on_learn_skill_prog_bar_skill_progbar_full():
	skill_level_check += 1
	
	if skill_level_check == 3:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Turn on your monitor")
	if skill_level_check == 4:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Plug in your mouse")
	if skill_level_check == 5:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Learn to left click")
	if skill_level_check == 6:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Learn to right click")
	if skill_level_check == 7:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Learn to move your mouse")
	if skill_level_check == 8:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Learn to press some keys")
	if skill_level_check == 9:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Learn to press some more keys")
	if skill_level_check == 10:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Learn champions")
	if skill_level_check == 11:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("Study the map layout")
	if skill_level_check == 12:
		$Learn_skill.button_pressed = false
		$Learn_skill.set_text("End of content")
