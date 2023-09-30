extends Control
var resume_container = 0
func _ready():
	$Player_exp_ProgBar.hide()
	$Skills_container.hide()
	$Skills_label.hide()
	$Resume_container.hide()

func _on_player_exp_prog_bar_changed():
	$Player_exp_ProgBar.show()


func _on_label_level_signal():
		$Skills_container.show()
		$Skills_label.show()


func _on_learn_skill_prog_bar_skill_progbar_full():
	resume_container += 1
	if resume_container == 2:
		$Resume_container.show()
