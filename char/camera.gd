extends Camera2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



#for the jump button
func _on_jump_but_button_down():
	globals.going_up = true

func _on_jump_but_button_up():
	globals.going_up = false


#for going left
func _on_left_but_button_down():
	globals.going_left = true

func _on_left_but_button_up():
	globals.going_left = false


func _on_right_but_button_down():
	globals.going_right = true

func _on_right_but_button_up():
	globals.going_right = false
