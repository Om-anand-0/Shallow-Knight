extends Node

var score = 0
@onready var score_label: Label = $score_label

func add_points():
	score += 1
	score_label.text = "you have " + str(score) + " coins."
