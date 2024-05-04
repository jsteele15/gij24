extends Node2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	globals.win = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#when the cat becomes a ghost it flies into the air, when it gets so far itll reset the scene
	if $cat.position.y <= -1000:
		globals.reset()
		get_tree().reload_current_scene()
