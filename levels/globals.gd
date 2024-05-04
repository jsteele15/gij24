extends Node

var going_right = false
var going_left = false
var going_up = false
var alive = true
var win = false

#the different states will be main or game
var state = "main"
# Called when the node enters the scene tree for the first time.
func _ready():
	print("hello world")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func reset():
	going_right = false
	going_left = false
	going_up = false
	alive = true
	win = false
