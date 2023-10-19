extends Label

#the variables are declared as floats for the purposes of rounding
var wins = 0.0
var losses = 0.0
var wr = 0.0

#when the node enters the scene, it sets it's text to 0%
#I believe I did this to fix some layouting errors due to the node being blank otherwise
func _ready():
	set_text("0%")

#after each win or loss the two functions recalculate the winrate
#based on the win/loss signal received from the tab_1ui node's script
#(the wchance part)
func _on_tab_1ui_progbar_full_l():
	losses += 1
	wr = roundf(wins/(wins+losses) * 100)
	set_text(str(wr)+"%")

func _on_tab_1ui_progbar_full_w():
	wins += 1
	wr = roundf(wins/(wins+losses) * 100)
	set_text(str(wr)+"%")
