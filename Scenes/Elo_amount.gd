extends Label

#declare the elo variable
var elo = 1000

#after each loss, take away 25 elo
#if elo is less than 100, reset (this avoids dividing by 0 in the winrate formula)
#and prevents quite the catastrophic crash (maybe I should just add 1 to the formula for safety?)
func _on_tab_1ui_progbar_full_l():
	elo -= 25
	set_text(str(elo))
	if elo < 100:
		elo = 100
		
#after each win, add 25 elo
func _on_tab_1ui_progbar_full_w():
	elo += 25
	set_text(str(elo))
