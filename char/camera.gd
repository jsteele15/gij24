extends Camera2D

@onready var globals = get_node("/root/Globals")
@onready var game_buts = [$left_but, $right_but, $jump_but]

var game_change = false
var main_change = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#$left_but.position.y = get_viewport().size[1]- 450
	
	#$right_but.position.y = get_viewport().size[1]- 450
	
	#$jump_but.position.y = get_viewport().size[1]- 500
	#$jump_but.position.x = get_viewport().size[0] - 800

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if globals.state == "main" and main_change == false:
		for i in game_buts:
			i.visible = false
		main_change = true
		
	if globals.state == "game" and game_change == false:
		for i in game_buts:
			i.visible = true
		$start_but.visible = false
		game_change = true
		



func _on_button_button_down():
	globals.state = "game"
	get_tree().change_scene_to_file("res://.godot/exported/133200997/export-619ccfc39272d82250d4e12a78737bfe-lv_1.scn")

#for the jump button
func _on_ts_jump_pressed():
	globals.going_up = true

func _on_ts_jump_released():
	globals.going_up = false

#fpr going right
func _on_ts_right_pressed():
	globals.going_right = true

func _on_ts_right_released():
	globals.going_right = false

#for going left
func _on_ts_left_pressed():
	globals.going_left = true

func _on_ts_left_released():
	globals.going_left = false
