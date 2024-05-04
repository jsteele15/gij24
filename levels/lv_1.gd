extends Node2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	globals.win = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
