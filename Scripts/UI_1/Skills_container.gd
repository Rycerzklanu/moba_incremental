extends GridContainer
var skill_level_check = 0



func _on_learn_skill_prog_bar_skill_progbar_full():
	skill_level_check += 1
	
	if skill_level_check == 1:
		$Learn_skill.set_text("Turn on your monitor")
	if skill_level_check == 2:
		$Learn_skill.set_text("Plug in your mouse")
	if skill_level_check == 3:
		$Learn_skill.set_text("Learn to left click")
	if skill_level_check == 4:
		$Learn_skill.set_text("Learn to right click")
	if skill_level_check == 5:
		$Learn_skill.set_text("Learn to move your mouse")
	if skill_level_check == 6:
		$Learn_skill.set_text("Learn to press some keys")
	if skill_level_check == 7:
		$Learn_skill.set_text("Learn to press some more keys")
	if skill_level_check == 8:
		$Learn_skill.set_text("Learn what champions do")
	if skill_level_check == 9:
		$Learn_skill.set_text("Study the map layout")
	if skill_level_check == 10:
		$Learn_skill.set_text("Practice last hitting")
	if skill_level_check == 11:
		$Learn_skill.set_text("Practice positioning")
	if skill_level_check == 12:
		$Learn_skill.set_text("Practice kiting")
	if skill_level_check == 13:
		$Learn_skill.set_text("Practice warding")
	if skill_level_check == 14:
		$Learn_skill.set_text("Practice jungle control")
	if skill_level_check == 15:
		$Learn_skill.set_text("Practice roaming")
	if skill_level_check == 16:
		$Learn_skill.set_text("Practice itemization")
	if skill_level_check == 17:
		$Learn_skill.set_text("Practice draft analysis")
	if skill_level_check == 18:
		$Learn_skill.set_text("Practice objective control")
	if skill_level_check == 19:
		$Learn_skill.set_text("Practice vision denial")
	if skill_level_check == 20:
		$Learn_skill.set_text("Practice cooldown management")
	if skill_level_check == 21:
		$Learn_skill.set_text("Practice gank awareness")
	if skill_level_check == 22:
		$Learn_skill.set_text("Practice economy management")
	if skill_level_check == 23:
		$Learn_skill.set_text("Practice counter-building")
	if skill_level_check == 24:
		$Learn_skill.set_text("Practice teamfight coordination")
	if skill_level_check == 25:
		$Learn_skill.set_text("Practice split-Pushing")
	if skill_level_check == 26:
		$Learn_skill.set_text("Practice backdooring")
	if skill_level_check == 27:
		$Learn_skill.set_text("Practice baiting")
	if skill_level_check == 28:
		$Learn_skill.set_text("Practice zoning")
	if skill_level_check == 29:
		$Learn_skill.set_text("Practice flanking")
	if skill_level_check == 30:
		$Learn_skill.set_text("Practice wave management")
	if skill_level_check == 31:
		$Learn_skill.set_text("Practice teleport usage")
	if skill_level_check == 32:
		$Learn_skill.set_text("Practice risk assessment")
	if skill_level_check == 33:
		$Learn_skill.set_text("Practice target prioritization")
	if skill_level_check == 34:
		$Learn_skill.set_text("Practice teamfight execution")
	if skill_level_check == 35:
		$Learn_skill.set_text("Practice ability combos")
	if skill_level_check == 36:
		$Learn_skill.set_text("Practice objective stealing")
	if skill_level_check == 37:
		$Learn_skill.set_text("Practice assessing win conditions")
	if skill_level_check == 38:
		$Learn_skill.set_text("Practice threat evaluation")
	if skill_level_check == 39:
		$Learn_skill.set_text("Practice ambushing")
	if skill_level_check == 40:
		$Learn_skill.set_text("Practice trade mechanics")
	if skill_level_check == 41:
		$Learn_skill.set_text("Practice quick reflexes")
	if skill_level_check == 42:
		$Learn_skill.set_text("Practice psychological warfare")
	if skill_level_check == 43:
		$Learn_skill.set_text("Practice off-meta strategies")
	if skill_level_check == 44:
		$Learn_skill.set_text("Practice adaptation to patch changes")
	if skill_level_check == 45:
		$Learn_skill.set_text("Practice debuff removal timing")
	if skill_level_check == 46:
		$Learn_skill.set_text("Practice ultimate timing")
	if skill_level_check == 47:
		$Learn_skill.set_text("Practice brush control")
	if skill_level_check == 48:
		$Learn_skill.set_text("Practice farm denial")
	if skill_level_check == 49:
		$Learn_skill.set_text("Practice precise skill positioning")
	if skill_level_check == 50:
		$Learn_skill.set_text("Practice cross-Map movement")
	if skill_level_check == 51:
		$Learn_skill.set_text("Practice mind games")
	if skill_level_check == 52:
		$Learn_skill.set_text("Practice team composition expertise")
	if skill_level_check == 53:
		$Learn_skill.set_text("Practice power spiking knowledge")
	if skill_level_check == 54:
		$Learn_skill.set_text("Practice resource sharing")
	if skill_level_check == 55:
		$Learn_skill.set_text("Practice counter-jungling")
	if skill_level_check == 56:
		$Learn_skill.set_text("Practice auto-attack canceling")
	if skill_level_check == 57:
		$Learn_skill.set_text("Practice target tracking")
	if skill_level_check == 58:
		$Learn_skill.set_text("Practice objective timing")
	if skill_level_check == 59:
		$Learn_skill.set_text("Practice predictive movements")
	if skill_level_check == 60:
		$Learn_skill.set_text("Practice mindful item usage")
	if skill_level_check == 61:
		$Learn_skill.set_text("Practice teamfight AOE positioning")
	if skill_level_check == 62:
		$Learn_skill.set_text("Practice quick map scanning")
	if skill_level_check == 63:
		$Learn_skill.set_text("Practice scouting")
	if skill_level_check == 64:
		$Learn_skill.set_text("Practice efficient recall timing")
	# Add more skills and descriptions here...
