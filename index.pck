GDPC                �                                                                      *   T   res://.godot/exported/133200997/export-03ace8ec62696c994a26b08f00a50623-spike.scn   �      �      \�K7����X    P   res://.godot/exported/133200997/export-46339cfc876de426022a7fde78e090b6-main.scn �     �      	��Z���+f|a�    P   res://.godot/exported/133200997/export-619ccfc39272d82250d4e12a78737bfe-lv_1.scn��     i      �=��CО6p��߇4    P   res://.godot/exported/133200997/export-64ab26dabdd60ce38fc2265837fd6dd0-cat.scn       �      ֜�Y���f�2    \   res://.godot/exported/133200997/export-8ce014383d74eec877e5193cec6fbb80-test_tile_set.scn   �"      I�     �F��!C,^7��_��K    T   res://.godot/exported/133200997/export-9f330184d302f963210401f366fac9a7-camera.scn  �             ���d�X����>g��'    T   res://.godot/exported/133200997/export-e3bb96a559a93b8955a8bf42513505e8-portal.scn  �      i      a�
U������~S2"    ,   res://.godot/global_script_class_cache.cfg  �<            ��Р�8���8~$}P�    H   res://.godot/imported/ghost.png-bdd09babe42000e97c59abe75c1d72f9.ctex   ��     �       ��h�aή�m�(v��    D   res://.godot/imported/icon.svg-60a93a01b332c0a9192782f1380f6837.ctex@�           ：Qt�E�cO���    X   res://.godot/imported/index.apple-touch-icon.png-8085a11cc297d91deb55511843765958.ctex  p�     �      ꛲���� ��ܶ�    L   res://.godot/imported/index.icon.png-5665fad188e88d1e882500a4376bfe02.ctex  0�           ：Qt�E�cO���    H   res://.godot/imported/index.png-5122033cac747157decad52589e2295c.ctex    
     -      �%�$����<�׿�+    H   res://.godot/imported/portal.png-2293740231ed86093ecf43d7ac121768.ctex  0     �      *�n ��ٍ�y)|    D   res://.godot/imported/sox.png-7a0f4b52fb5b502006906fbcd3af5ce7.ctex �     �       ���|��y�y��x��    H   res://.godot/imported/spike.png-d070d466fc4b19388d9d4c9869d2383e.ctex   @     
      ؗ'Sx�	��&��'��    L   res://.godot/imported/temp image.jpg-0bacba6fe06845af68816dc1a9478098.ctex   
     v�     ?�i �S�q�/Ur�g��       res://.godot/uid_cache.bin  �@     =      z&�A�w-������za       res://char/camera.gd        �      ����1̡v�u
F.�       res://char/camera.tscn.remap�9     c       u��אf����C�x	z�       res://char/cat.gd   �      W      �v�j�E���`�-       res://char/cat.tscn.remap   :     `       �ԇ�u(�p.Y�7ϫ�       res://char/portal.tscn.remapp:     c       M�o�TD�?����       res://char/spike.gd 0      �      �˯�Yq�%����6��       res://char/spike.tscn.remap �:     b       Q�v �vJ�:͙&��    $   res://char/test_tile_set.tscn.remap P;     j       �L��K%٫X'6s�2    (   res://index.apple-touch-icon.png.import P�     �       �^��5rİ�����       res://index.icon.png.import P	     �       I�Z:P��n���ӹ       res://index.png.import  @7     �       �n�ELL�*�g��O       res://levels/globals.gd ��     �      Yʏ�/����^       res://levels/lv_1.gd��     �      /s[y�����6%X�9�       res://levels/lv_1.tscn.remap�;     a       �q![=u��d�9�       res://levels/main.tscn.remap0<     a       ��k��l͎4�P!�X�       res://portal.gd 8     �      /��G.��{�'�L0�       res://project.binary�B     
      �[��?B)J��΍f]n        res://resources/ghost.png.importp�     �       D�u����EL[�Tǅ       res://resources/icon.svg�<     �      k����X3Y���f        res://resources/icon.svg.import `     �       Z�p׮Mwi1�2&�    $   res://resources/portal.png.import   �     �       �9��Ot`Ex�,հ�T5        res://resources/sox.png.import  �     �       �� @8!��1[�[m}�        res://resources/spike.png.importP	     �       P7*�X�	C3oR��3�    (   res://resources/temp image.jpg.import   ��     �       ��i��lPc�$[B��%                extends Camera2D

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
   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://char/camera.gd ��������      local://RectangleShape2D_xtx68 W         local://PackedScene_4hxtv x         RectangleShape2D             PackedScene          	         names "         Camera    script 	   Camera2D 	   left_but    offset_left    offset_top    offset_right    offset_bottom    text    Button    ts_left 	   position    scale    shape    TouchScreenButton 
   right_but 	   ts_right 	   jump_but    ts_jump 
   start_but    _on_ts_left_pressed    pressed    _on_ts_left_released 	   released    _on_ts_right_pressed    _on_ts_right_released    _on_ts_jump_pressed    _on_ts_jump_released    _on_button_button_down    button_down    	   variants                     ���      C     ��     dC   	   left But 
     4B  B
     �@  �@               ��     &C     c�     fC   
   right But 
     $B  �A    ��C     �B    ��C     �C   	   Jump But 
     �B  �B
      A   A     L�     a�     YC     x�      START BUTTON       node_count             nodes     t   ��������       ����                      	      ����                                               
   ����                                 	      ����      	      
                                      ����                                 	      ����                                                  ����                                 	      ����                                           conn_count             conns     1                                                                                                                                                                                 node_paths              editable_instances              version             RSRCextends CharacterBody2D

@onready var globals = get_node("/root/Globals")

const SPEED = 300.0 
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor() or globals.going_up == true and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	#if the cat dies its ghost form will fly into the air
	if globals.alive == false and globals.win == false:
		velocity.y = -700
		$Sox.visible = false
		$Ghost.visible = true
	
	#if the ghost is dead 
	if globals.alive == false and globals.win == true:
		print("winning")
		$Sox.visible = false
		$Ghost.visible = false
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var direction = Input.get_axis("left", "right")
	if globals.alive == true:
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		
		if globals.going_left:
			velocity.x = -1 * SPEED
		
		if globals.going_right:
			velocity.x = 1 * SPEED
	
	if globals.alive == false:
		velocity.x = 0
	
	move_and_slide()
         RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    height    script 	   _bundled       Script    res://char/cat.gd ��������
   Texture2D    res://resources/sox.png �����C 
   Texture2D    res://resources/ghost.png ?G���g`      local://CapsuleShape2D_eh8dc �         local://PackedScene_6scs5 �         CapsuleShape2D            �A         B         PackedScene          	         names "         cat    script    CharacterBody2D    Sox 	   position    texture 	   Sprite2D    CollisionShape2D    shape    Ghost    visible    	   variants                 
     ��  ��         
      �  ��                 
     ��  ��               node_count             nodes     ,   ��������       ����                            ����                                 ����                              	   ����   
                            conn_count              conns               node_paths              editable_instances              version             RSRC           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://portal.gd ��������
   Texture2D    res://resources/portal.png Ͽ��҉]6      local://CircleShape2D_dlb1s �         local://PackedScene_4sbp6 �         CircleShape2D          ���B         PackedScene          	         names "         portal    script    Node2D    Portal 	   position    texture 	   Sprite2D    Area2D    CollisionShape2D    shape    _on_area_2d_body_shape_entered    body_shape_entered    	   variants                 
      �             
      @   �                node_count             nodes     &   ��������       ����                            ����                                ����                     ����         	                conn_count             conns                  
                    node_paths              editable_instances              version             RSRC       extends Sprite2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	globals.alive = false
          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://resources/spike.png �ګݩ�M   Script    res://char/spike.gd ��������      local://RectangleShape2D_1n7ro �         local://PackedScene_mig2r �         RectangleShape2D       
     �B  �B         PackedScene          	         names "         Spike 	   position    texture    script 	   Sprite2D    Area2D    CollisionShape2D    shape    Spike2    _on_area_2d_body_shape_entered    body_shape_entered    	   variants       
     �?   �                   
          @          
     ��  �?
     B          node_count             nodes     5   ��������       ����                                        ����                     ����                                  ����                                 ����                         conn_count             conns               
   	                    node_paths              editable_instances              version             RSRC    RSRC                    PackedScene            ��������                                            
     resource_local_to_scene    resource_name    texture    margins    separation    texture_region_size    use_texture_padding    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity    0:0/0/script    1:0/0 &   1:0/0/physics_layer_0/linear_velocity '   1:0/0/physics_layer_0/angular_velocity    1:0/0/script    2:0/0 &   2:0/0/physics_layer_0/linear_velocity '   2:0/0/physics_layer_0/angular_velocity    2:0/0/script    3:0/0 &   3:0/0/physics_layer_0/linear_velocity '   3:0/0/physics_layer_0/angular_velocity    3:0/0/script    4:0/0 &   4:0/0/physics_layer_0/linear_velocity '   4:0/0/physics_layer_0/angular_velocity    4:0/0/script    5:0/0 &   5:0/0/physics_layer_0/linear_velocity '   5:0/0/physics_layer_0/angular_velocity    5:0/0/script    6:0/0 &   6:0/0/physics_layer_0/linear_velocity '   6:0/0/physics_layer_0/angular_velocity    6:0/0/script    7:0/0 &   7:0/0/physics_layer_0/linear_velocity '   7:0/0/physics_layer_0/angular_velocity    7:0/0/script    8:0/0 &   8:0/0/physics_layer_0/linear_velocity '   8:0/0/physics_layer_0/angular_velocity    8:0/0/script    9:0/0 &   9:0/0/physics_layer_0/linear_velocity '   9:0/0/physics_layer_0/angular_velocity    9:0/0/script    10:0/0 '   10:0/0/physics_layer_0/linear_velocity (   10:0/0/physics_layer_0/angular_velocity    10:0/0/script    11:0/0 '   11:0/0/physics_layer_0/linear_velocity (   11:0/0/physics_layer_0/angular_velocity    11:0/0/script    12:0/0 '   12:0/0/physics_layer_0/linear_velocity (   12:0/0/physics_layer_0/angular_velocity    12:0/0/script    13:0/0 '   13:0/0/physics_layer_0/linear_velocity (   13:0/0/physics_layer_0/angular_velocity    13:0/0/script    14:0/0 '   14:0/0/physics_layer_0/linear_velocity (   14:0/0/physics_layer_0/angular_velocity    14:0/0/script    15:0/0 '   15:0/0/physics_layer_0/linear_velocity (   15:0/0/physics_layer_0/angular_velocity    15:0/0/script    16:0/0 '   16:0/0/physics_layer_0/linear_velocity (   16:0/0/physics_layer_0/angular_velocity    16:0/0/script    17:0/0 '   17:0/0/physics_layer_0/linear_velocity (   17:0/0/physics_layer_0/angular_velocity    17:0/0/script    18:0/0 '   18:0/0/physics_layer_0/linear_velocity (   18:0/0/physics_layer_0/angular_velocity    18:0/0/script    19:0/0 '   19:0/0/physics_layer_0/linear_velocity (   19:0/0/physics_layer_0/angular_velocity    19:0/0/script    20:0/0 '   20:0/0/physics_layer_0/linear_velocity (   20:0/0/physics_layer_0/angular_velocity    20:0/0/script    21:0/0 '   21:0/0/physics_layer_0/linear_velocity (   21:0/0/physics_layer_0/angular_velocity    21:0/0/script    22:0/0 '   22:0/0/physics_layer_0/linear_velocity (   22:0/0/physics_layer_0/angular_velocity    22:0/0/script    23:0/0 '   23:0/0/physics_layer_0/linear_velocity (   23:0/0/physics_layer_0/angular_velocity    23:0/0/script    24:0/0 '   24:0/0/physics_layer_0/linear_velocity (   24:0/0/physics_layer_0/angular_velocity    24:0/0/script    25:0/0 '   25:0/0/physics_layer_0/linear_velocity (   25:0/0/physics_layer_0/angular_velocity    25:0/0/script    26:0/0 '   26:0/0/physics_layer_0/linear_velocity (   26:0/0/physics_layer_0/angular_velocity    26:0/0/script    27:0/0 '   27:0/0/physics_layer_0/linear_velocity (   27:0/0/physics_layer_0/angular_velocity    27:0/0/script    28:0/0 '   28:0/0/physics_layer_0/linear_velocity (   28:0/0/physics_layer_0/angular_velocity    28:0/0/script    29:0/0 '   29:0/0/physics_layer_0/linear_velocity (   29:0/0/physics_layer_0/angular_velocity    29:0/0/script    30:0/0 '   30:0/0/physics_layer_0/linear_velocity (   30:0/0/physics_layer_0/angular_velocity    30:0/0/script    31:0/0 '   31:0/0/physics_layer_0/linear_velocity (   31:0/0/physics_layer_0/angular_velocity    31:0/0/script    32:0/0 '   32:0/0/physics_layer_0/linear_velocity (   32:0/0/physics_layer_0/angular_velocity    32:0/0/script    33:0/0 '   33:0/0/physics_layer_0/linear_velocity (   33:0/0/physics_layer_0/angular_velocity    33:0/0/script    34:0/0 '   34:0/0/physics_layer_0/linear_velocity (   34:0/0/physics_layer_0/angular_velocity    34:0/0/script    35:0/0 '   35:0/0/physics_layer_0/linear_velocity (   35:0/0/physics_layer_0/angular_velocity    35:0/0/script    36:0/0 '   36:0/0/physics_layer_0/linear_velocity (   36:0/0/physics_layer_0/angular_velocity    36:0/0/script    37:0/0 '   37:0/0/physics_layer_0/linear_velocity (   37:0/0/physics_layer_0/angular_velocity    37:0/0/script    38:0/0 '   38:0/0/physics_layer_0/linear_velocity (   38:0/0/physics_layer_0/angular_velocity    38:0/0/script    39:0/0 '   39:0/0/physics_layer_0/linear_velocity (   39:0/0/physics_layer_0/angular_velocity    39:0/0/script    0:1/0 &   0:1/0/physics_layer_0/linear_velocity '   0:1/0/physics_layer_0/angular_velocity    0:1/0/script    1:1/0 &   1:1/0/physics_layer_0/linear_velocity '   1:1/0/physics_layer_0/angular_velocity    1:1/0/script    2:1/0 &   2:1/0/physics_layer_0/linear_velocity '   2:1/0/physics_layer_0/angular_velocity    2:1/0/script    3:1/0 &   3:1/0/physics_layer_0/linear_velocity '   3:1/0/physics_layer_0/angular_velocity    3:1/0/script    4:1/0 &   4:1/0/physics_layer_0/linear_velocity '   4:1/0/physics_layer_0/angular_velocity    4:1/0/script    5:1/0 &   5:1/0/physics_layer_0/linear_velocity '   5:1/0/physics_layer_0/angular_velocity    5:1/0/script    6:1/0 &   6:1/0/physics_layer_0/linear_velocity '   6:1/0/physics_layer_0/angular_velocity    6:1/0/script    7:1/0 &   7:1/0/physics_layer_0/linear_velocity '   7:1/0/physics_layer_0/angular_velocity    7:1/0/script    8:1/0 &   8:1/0/physics_layer_0/linear_velocity '   8:1/0/physics_layer_0/angular_velocity    8:1/0/script    9:1/0 &   9:1/0/physics_layer_0/linear_velocity '   9:1/0/physics_layer_0/angular_velocity    9:1/0/script    10:1/0 '   10:1/0/physics_layer_0/linear_velocity (   10:1/0/physics_layer_0/angular_velocity    10:1/0/script    11:1/0 '   11:1/0/physics_layer_0/linear_velocity (   11:1/0/physics_layer_0/angular_velocity    11:1/0/script    12:1/0 '   12:1/0/physics_layer_0/linear_velocity (   12:1/0/physics_layer_0/angular_velocity    12:1/0/script    13:1/0 '   13:1/0/physics_layer_0/linear_velocity (   13:1/0/physics_layer_0/angular_velocity    13:1/0/script    14:1/0 '   14:1/0/physics_layer_0/linear_velocity (   14:1/0/physics_layer_0/angular_velocity    14:1/0/script    15:1/0 '   15:1/0/physics_layer_0/linear_velocity (   15:1/0/physics_layer_0/angular_velocity    15:1/0/script    16:1/0 '   16:1/0/physics_layer_0/linear_velocity (   16:1/0/physics_layer_0/angular_velocity    16:1/0/script    17:1/0 '   17:1/0/physics_layer_0/linear_velocity (   17:1/0/physics_layer_0/angular_velocity    17:1/0/script    18:1/0 '   18:1/0/physics_layer_0/linear_velocity (   18:1/0/physics_layer_0/angular_velocity    18:1/0/script    19:1/0 '   19:1/0/physics_layer_0/linear_velocity (   19:1/0/physics_layer_0/angular_velocity    19:1/0/script    20:1/0 '   20:1/0/physics_layer_0/linear_velocity (   20:1/0/physics_layer_0/angular_velocity    20:1/0/script    21:1/0 '   21:1/0/physics_layer_0/linear_velocity (   21:1/0/physics_layer_0/angular_velocity    21:1/0/script    22:1/0 '   22:1/0/physics_layer_0/linear_velocity (   22:1/0/physics_layer_0/angular_velocity    22:1/0/script    23:1/0 '   23:1/0/physics_layer_0/linear_velocity (   23:1/0/physics_layer_0/angular_velocity    23:1/0/script    24:1/0 '   24:1/0/physics_layer_0/linear_velocity (   24:1/0/physics_layer_0/angular_velocity    24:1/0/script    25:1/0 '   25:1/0/physics_layer_0/linear_velocity (   25:1/0/physics_layer_0/angular_velocity    25:1/0/script    26:1/0 '   26:1/0/physics_layer_0/linear_velocity (   26:1/0/physics_layer_0/angular_velocity    26:1/0/script    27:1/0 '   27:1/0/physics_layer_0/linear_velocity (   27:1/0/physics_layer_0/angular_velocity    27:1/0/script    28:1/0 '   28:1/0/physics_layer_0/linear_velocity (   28:1/0/physics_layer_0/angular_velocity    28:1/0/script    29:1/0 '   29:1/0/physics_layer_0/linear_velocity (   29:1/0/physics_layer_0/angular_velocity    29:1/0/script    30:1/0 '   30:1/0/physics_layer_0/linear_velocity (   30:1/0/physics_layer_0/angular_velocity    30:1/0/script    31:1/0 '   31:1/0/physics_layer_0/linear_velocity (   31:1/0/physics_layer_0/angular_velocity    31:1/0/script    32:1/0 '   32:1/0/physics_layer_0/linear_velocity (   32:1/0/physics_layer_0/angular_velocity    32:1/0/script    33:1/0 '   33:1/0/physics_layer_0/linear_velocity (   33:1/0/physics_layer_0/angular_velocity    33:1/0/script    34:1/0 '   34:1/0/physics_layer_0/linear_velocity (   34:1/0/physics_layer_0/angular_velocity    34:1/0/script    35:1/0 '   35:1/0/physics_layer_0/linear_velocity (   35:1/0/physics_layer_0/angular_velocity    35:1/0/script    36:1/0 '   36:1/0/physics_layer_0/linear_velocity (   36:1/0/physics_layer_0/angular_velocity    36:1/0/script    37:1/0 '   37:1/0/physics_layer_0/linear_velocity (   37:1/0/physics_layer_0/angular_velocity    37:1/0/script    38:1/0 '   38:1/0/physics_layer_0/linear_velocity (   38:1/0/physics_layer_0/angular_velocity    38:1/0/script    39:1/0 '   39:1/0/physics_layer_0/linear_velocity (   39:1/0/physics_layer_0/angular_velocity    39:1/0/script    0:2/0 &   0:2/0/physics_layer_0/linear_velocity '   0:2/0/physics_layer_0/angular_velocity    0:2/0/script    1:2/0 &   1:2/0/physics_layer_0/linear_velocity '   1:2/0/physics_layer_0/angular_velocity    1:2/0/script    2:2/0 &   2:2/0/physics_layer_0/linear_velocity '   2:2/0/physics_layer_0/angular_velocity    2:2/0/script    3:2/0 &   3:2/0/physics_layer_0/linear_velocity '   3:2/0/physics_layer_0/angular_velocity    3:2/0/script    4:2/0 &   4:2/0/physics_layer_0/linear_velocity '   4:2/0/physics_layer_0/angular_velocity    4:2/0/script    5:2/0 &   5:2/0/physics_layer_0/linear_velocity '   5:2/0/physics_layer_0/angular_velocity    5:2/0/script    6:2/0 &   6:2/0/physics_layer_0/linear_velocity '   6:2/0/physics_layer_0/angular_velocity    6:2/0/script    7:2/0 &   7:2/0/physics_layer_0/linear_velocity '   7:2/0/physics_layer_0/angular_velocity    7:2/0/script    8:2/0 &   8:2/0/physics_layer_0/linear_velocity '   8:2/0/physics_layer_0/angular_velocity    8:2/0/script    9:2/0 &   9:2/0/physics_layer_0/linear_velocity '   9:2/0/physics_layer_0/angular_velocity    9:2/0/script    10:2/0 '   10:2/0/physics_layer_0/linear_velocity (   10:2/0/physics_layer_0/angular_velocity    10:2/0/script    11:2/0 '   11:2/0/physics_layer_0/linear_velocity (   11:2/0/physics_layer_0/angular_velocity    11:2/0/script    12:2/0 '   12:2/0/physics_layer_0/linear_velocity (   12:2/0/physics_layer_0/angular_velocity    12:2/0/script    13:2/0 '   13:2/0/physics_layer_0/linear_velocity (   13:2/0/physics_layer_0/angular_velocity    13:2/0/script    14:2/0 '   14:2/0/physics_layer_0/linear_velocity (   14:2/0/physics_layer_0/angular_velocity    14:2/0/script    15:2/0 '   15:2/0/physics_layer_0/linear_velocity (   15:2/0/physics_layer_0/angular_velocity    15:2/0/script    16:2/0 '   16:2/0/physics_layer_0/linear_velocity (   16:2/0/physics_layer_0/angular_velocity    16:2/0/script    17:2/0 '   17:2/0/physics_layer_0/linear_velocity (   17:2/0/physics_layer_0/angular_velocity    17:2/0/script    18:2/0 '   18:2/0/physics_layer_0/linear_velocity (   18:2/0/physics_layer_0/angular_velocity    18:2/0/script    19:2/0 '   19:2/0/physics_layer_0/linear_velocity (   19:2/0/physics_layer_0/angular_velocity    19:2/0/script    20:2/0 '   20:2/0/physics_layer_0/linear_velocity (   20:2/0/physics_layer_0/angular_velocity    20:2/0/script    21:2/0 '   21:2/0/physics_layer_0/linear_velocity (   21:2/0/physics_layer_0/angular_velocity    21:2/0/script    22:2/0 '   22:2/0/physics_layer_0/linear_velocity (   22:2/0/physics_layer_0/angular_velocity    22:2/0/script    23:2/0 '   23:2/0/physics_layer_0/linear_velocity (   23:2/0/physics_layer_0/angular_velocity    23:2/0/script    24:2/0 '   24:2/0/physics_layer_0/linear_velocity (   24:2/0/physics_layer_0/angular_velocity    24:2/0/script    25:2/0 '   25:2/0/physics_layer_0/linear_velocity (   25:2/0/physics_layer_0/angular_velocity    25:2/0/script    26:2/0 '   26:2/0/physics_layer_0/linear_velocity (   26:2/0/physics_layer_0/angular_velocity    26:2/0/script    27:2/0 '   27:2/0/physics_layer_0/linear_velocity (   27:2/0/physics_layer_0/angular_velocity    27:2/0/script    28:2/0 '   28:2/0/physics_layer_0/linear_velocity (   28:2/0/physics_layer_0/angular_velocity    28:2/0/script    29:2/0 '   29:2/0/physics_layer_0/linear_velocity (   29:2/0/physics_layer_0/angular_velocity    29:2/0/script    30:2/0 '   30:2/0/physics_layer_0/linear_velocity (   30:2/0/physics_layer_0/angular_velocity    30:2/0/script    31:2/0 '   31:2/0/physics_layer_0/linear_velocity (   31:2/0/physics_layer_0/angular_velocity    31:2/0/script    32:2/0 '   32:2/0/physics_layer_0/linear_velocity (   32:2/0/physics_layer_0/angular_velocity    32:2/0/script    33:2/0 '   33:2/0/physics_layer_0/linear_velocity (   33:2/0/physics_layer_0/angular_velocity    33:2/0/script    34:2/0 '   34:2/0/physics_layer_0/linear_velocity (   34:2/0/physics_layer_0/angular_velocity    34:2/0/script    35:2/0 '   35:2/0/physics_layer_0/linear_velocity (   35:2/0/physics_layer_0/angular_velocity    35:2/0/script    36:2/0 '   36:2/0/physics_layer_0/linear_velocity (   36:2/0/physics_layer_0/angular_velocity    36:2/0/script    37:2/0 '   37:2/0/physics_layer_0/linear_velocity (   37:2/0/physics_layer_0/angular_velocity    37:2/0/script    38:2/0 '   38:2/0/physics_layer_0/linear_velocity (   38:2/0/physics_layer_0/angular_velocity    38:2/0/script    39:2/0 '   39:2/0/physics_layer_0/linear_velocity (   39:2/0/physics_layer_0/angular_velocity    39:2/0/script    0:3/0 &   0:3/0/physics_layer_0/linear_velocity '   0:3/0/physics_layer_0/angular_velocity    0:3/0/script    1:3/0 &   1:3/0/physics_layer_0/linear_velocity '   1:3/0/physics_layer_0/angular_velocity    1:3/0/script    2:3/0 &   2:3/0/physics_layer_0/linear_velocity '   2:3/0/physics_layer_0/angular_velocity    2:3/0/script    3:3/0 &   3:3/0/physics_layer_0/linear_velocity '   3:3/0/physics_layer_0/angular_velocity    3:3/0/script    4:3/0 &   4:3/0/physics_layer_0/linear_velocity '   4:3/0/physics_layer_0/angular_velocity    4:3/0/script    5:3/0 &   5:3/0/physics_layer_0/linear_velocity '   5:3/0/physics_layer_0/angular_velocity    5:3/0/script    6:3/0 &   6:3/0/physics_layer_0/linear_velocity '   6:3/0/physics_layer_0/angular_velocity    6:3/0/script    7:3/0 &   7:3/0/physics_layer_0/linear_velocity '   7:3/0/physics_layer_0/angular_velocity    7:3/0/script    8:3/0 &   8:3/0/physics_layer_0/linear_velocity '   8:3/0/physics_layer_0/angular_velocity    8:3/0/script    9:3/0 &   9:3/0/physics_layer_0/linear_velocity '   9:3/0/physics_layer_0/angular_velocity    9:3/0/script    10:3/0 '   10:3/0/physics_layer_0/linear_velocity (   10:3/0/physics_layer_0/angular_velocity    10:3/0/script    11:3/0 '   11:3/0/physics_layer_0/linear_velocity (   11:3/0/physics_layer_0/angular_velocity    11:3/0/script    12:3/0 '   12:3/0/physics_layer_0/linear_velocity (   12:3/0/physics_layer_0/angular_velocity    12:3/0/script    13:3/0 '   13:3/0/physics_layer_0/linear_velocity (   13:3/0/physics_layer_0/angular_velocity    13:3/0/script    14:3/0 '   14:3/0/physics_layer_0/linear_velocity (   14:3/0/physics_layer_0/angular_velocity    14:3/0/script    15:3/0 '   15:3/0/physics_layer_0/linear_velocity (   15:3/0/physics_layer_0/angular_velocity    15:3/0/script    16:3/0 '   16:3/0/physics_layer_0/linear_velocity (   16:3/0/physics_layer_0/angular_velocity    16:3/0/script    17:3/0 '   17:3/0/physics_layer_0/linear_velocity (   17:3/0/physics_layer_0/angular_velocity    17:3/0/script    18:3/0 '   18:3/0/physics_layer_0/linear_velocity (   18:3/0/physics_layer_0/angular_velocity    18:3/0/script    19:3/0 '   19:3/0/physics_layer_0/linear_velocity (   19:3/0/physics_layer_0/angular_velocity    19:3/0/script    20:3/0 '   20:3/0/physics_layer_0/linear_velocity (   20:3/0/physics_layer_0/angular_velocity    20:3/0/script    21:3/0 '   21:3/0/physics_layer_0/linear_velocity (   21:3/0/physics_layer_0/angular_velocity    21:3/0/script    22:3/0 '   22:3/0/physics_layer_0/linear_velocity (   22:3/0/physics_layer_0/angular_velocity    22:3/0/script    23:3/0 '   23:3/0/physics_layer_0/linear_velocity (   23:3/0/physics_layer_0/angular_velocity    23:3/0/script    24:3/0 '   24:3/0/physics_layer_0/linear_velocity (   24:3/0/physics_layer_0/angular_velocity    24:3/0/script    25:3/0 '   25:3/0/physics_layer_0/linear_velocity (   25:3/0/physics_layer_0/angular_velocity    25:3/0/script    26:3/0 '   26:3/0/physics_layer_0/linear_velocity (   26:3/0/physics_layer_0/angular_velocity    26:3/0/script    27:3/0 '   27:3/0/physics_layer_0/linear_velocity (   27:3/0/physics_layer_0/angular_velocity    27:3/0/script    28:3/0 '   28:3/0/physics_layer_0/linear_velocity (   28:3/0/physics_layer_0/angular_velocity    28:3/0/script    29:3/0 '   29:3/0/physics_layer_0/linear_velocity (   29:3/0/physics_layer_0/angular_velocity    29:3/0/script    30:3/0 '   30:3/0/physics_layer_0/linear_velocity (   30:3/0/physics_layer_0/angular_velocity    30:3/0/script    31:3/0 '   31:3/0/physics_layer_0/linear_velocity (   31:3/0/physics_layer_0/angular_velocity    31:3/0/script    32:3/0 '   32:3/0/physics_layer_0/linear_velocity (   32:3/0/physics_layer_0/angular_velocity    32:3/0/script    33:3/0 '   33:3/0/physics_layer_0/linear_velocity (   33:3/0/physics_layer_0/angular_velocity    33:3/0/script    34:3/0 '   34:3/0/physics_layer_0/linear_velocity (   34:3/0/physics_layer_0/angular_velocity    34:3/0/script    35:3/0 '   35:3/0/physics_layer_0/linear_velocity (   35:3/0/physics_layer_0/angular_velocity    35:3/0/script    36:3/0 '   36:3/0/physics_layer_0/linear_velocity (   36:3/0/physics_layer_0/angular_velocity    36:3/0/script    37:3/0 '   37:3/0/physics_layer_0/linear_velocity (   37:3/0/physics_layer_0/angular_velocity    37:3/0/script    38:3/0 '   38:3/0/physics_layer_0/linear_velocity (   38:3/0/physics_layer_0/angular_velocity    38:3/0/script    39:3/0 '   39:3/0/physics_layer_0/linear_velocity (   39:3/0/physics_layer_0/angular_velocity    39:3/0/script    0:4/0 &   0:4/0/physics_layer_0/linear_velocity '   0:4/0/physics_layer_0/angular_velocity    0:4/0/script    1:4/0 &   1:4/0/physics_layer_0/linear_velocity '   1:4/0/physics_layer_0/angular_velocity    1:4/0/script    2:4/0 &   2:4/0/physics_layer_0/linear_velocity '   2:4/0/physics_layer_0/angular_velocity    2:4/0/script    3:4/0 &   3:4/0/physics_layer_0/linear_velocity '   3:4/0/physics_layer_0/angular_velocity    3:4/0/script    4:4/0 &   4:4/0/physics_layer_0/linear_velocity '   4:4/0/physics_layer_0/angular_velocity    4:4/0/script    5:4/0 &   5:4/0/physics_layer_0/linear_velocity '   5:4/0/physics_layer_0/angular_velocity    5:4/0/script    6:4/0 &   6:4/0/physics_layer_0/linear_velocity '   6:4/0/physics_layer_0/angular_velocity    6:4/0/script    7:4/0 &   7:4/0/physics_layer_0/linear_velocity '   7:4/0/physics_layer_0/angular_velocity    7:4/0/script    8:4/0 &   8:4/0/physics_layer_0/linear_velocity '   8:4/0/physics_layer_0/angular_velocity    8:4/0/script    9:4/0 &   9:4/0/physics_layer_0/linear_velocity '   9:4/0/physics_layer_0/angular_velocity    9:4/0/script    10:4/0 '   10:4/0/physics_layer_0/linear_velocity (   10:4/0/physics_layer_0/angular_velocity    10:4/0/script    11:4/0 '   11:4/0/physics_layer_0/linear_velocity (   11:4/0/physics_layer_0/angular_velocity    11:4/0/script    12:4/0 '   12:4/0/physics_layer_0/linear_velocity (   12:4/0/physics_layer_0/angular_velocity    12:4/0/script    13:4/0 '   13:4/0/physics_layer_0/linear_velocity (   13:4/0/physics_layer_0/angular_velocity    13:4/0/script    14:4/0 '   14:4/0/physics_layer_0/linear_velocity (   14:4/0/physics_layer_0/angular_velocity    14:4/0/script    15:4/0 '   15:4/0/physics_layer_0/linear_velocity (   15:4/0/physics_layer_0/angular_velocity    15:4/0/script    16:4/0 '   16:4/0/physics_layer_0/linear_velocity (   16:4/0/physics_layer_0/angular_velocity    16:4/0/script    17:4/0 '   17:4/0/physics_layer_0/linear_velocity (   17:4/0/physics_layer_0/angular_velocity    17:4/0/script    18:4/0 '   18:4/0/physics_layer_0/linear_velocity (   18:4/0/physics_layer_0/angular_velocity    18:4/0/script    19:4/0 '   19:4/0/physics_layer_0/linear_velocity (   19:4/0/physics_layer_0/angular_velocity    19:4/0/script    20:4/0 '   20:4/0/physics_layer_0/linear_velocity (   20:4/0/physics_layer_0/angular_velocity    20:4/0/script    21:4/0 '   21:4/0/physics_layer_0/linear_velocity (   21:4/0/physics_layer_0/angular_velocity    21:4/0/script    22:4/0 '   22:4/0/physics_layer_0/linear_velocity (   22:4/0/physics_layer_0/angular_velocity    22:4/0/script    23:4/0 '   23:4/0/physics_layer_0/linear_velocity (   23:4/0/physics_layer_0/angular_velocity    23:4/0/script    24:4/0 '   24:4/0/physics_layer_0/linear_velocity (   24:4/0/physics_layer_0/angular_velocity    24:4/0/script    25:4/0 '   25:4/0/physics_layer_0/linear_velocity (   25:4/0/physics_layer_0/angular_velocity    25:4/0/script    26:4/0 '   26:4/0/physics_layer_0/linear_velocity (   26:4/0/physics_layer_0/angular_velocity    26:4/0/script    27:4/0 '   27:4/0/physics_layer_0/linear_velocity (   27:4/0/physics_layer_0/angular_velocity    27:4/0/script    28:4/0 '   28:4/0/physics_layer_0/linear_velocity (   28:4/0/physics_layer_0/angular_velocity    28:4/0/script    29:4/0 '   29:4/0/physics_layer_0/linear_velocity (   29:4/0/physics_layer_0/angular_velocity    29:4/0/script    30:4/0 '   30:4/0/physics_layer_0/linear_velocity (   30:4/0/physics_layer_0/angular_velocity    30:4/0/script    31:4/0 '   31:4/0/physics_layer_0/linear_velocity (   31:4/0/physics_layer_0/angular_velocity    31:4/0/script    32:4/0 '   32:4/0/physics_layer_0/linear_velocity (   32:4/0/physics_layer_0/angular_velocity    32:4/0/script    33:4/0 '   33:4/0/physics_layer_0/linear_velocity (   33:4/0/physics_layer_0/angular_velocity    33:4/0/script    34:4/0 '   34:4/0/physics_layer_0/linear_velocity (   34:4/0/physics_layer_0/angular_velocity    34:4/0/script    35:4/0 '   35:4/0/physics_layer_0/linear_velocity (   35:4/0/physics_layer_0/angular_velocity    35:4/0/script    36:4/0 '   36:4/0/physics_layer_0/linear_velocity (   36:4/0/physics_layer_0/angular_velocity    36:4/0/script    37:4/0 '   37:4/0/physics_layer_0/linear_velocity (   37:4/0/physics_layer_0/angular_velocity    37:4/0/script    38:4/0 '   38:4/0/physics_layer_0/linear_velocity (   38:4/0/physics_layer_0/angular_velocity    38:4/0/script    39:4/0 '   39:4/0/physics_layer_0/linear_velocity (   39:4/0/physics_layer_0/angular_velocity    39:4/0/script    0:5/0 &   0:5/0/physics_layer_0/linear_velocity '   0:5/0/physics_layer_0/angular_velocity    0:5/0/script    1:5/0 &   1:5/0/physics_layer_0/linear_velocity '   1:5/0/physics_layer_0/angular_velocity    1:5/0/script    2:5/0 &   2:5/0/physics_layer_0/linear_velocity '   2:5/0/physics_layer_0/angular_velocity    2:5/0/script    3:5/0 &   3:5/0/physics_layer_0/linear_velocity '   3:5/0/physics_layer_0/angular_velocity    3:5/0/script    4:5/0 &   4:5/0/physics_layer_0/linear_velocity '   4:5/0/physics_layer_0/angular_velocity    4:5/0/script    5:5/0 &   5:5/0/physics_layer_0/linear_velocity '   5:5/0/physics_layer_0/angular_velocity    5:5/0/script    6:5/0 &   6:5/0/physics_layer_0/linear_velocity '   6:5/0/physics_layer_0/angular_velocity    6:5/0/script    7:5/0 &   7:5/0/physics_layer_0/linear_velocity '   7:5/0/physics_layer_0/angular_velocity    7:5/0/script    8:5/0 &   8:5/0/physics_layer_0/linear_velocity '   8:5/0/physics_layer_0/angular_velocity    8:5/0/script    9:5/0 &   9:5/0/physics_layer_0/linear_velocity '   9:5/0/physics_layer_0/angular_velocity    9:5/0/script    10:5/0 '   10:5/0/physics_layer_0/linear_velocity (   10:5/0/physics_layer_0/angular_velocity    10:5/0/script    11:5/0 '   11:5/0/physics_layer_0/linear_velocity (   11:5/0/physics_layer_0/angular_velocity    11:5/0/script    12:5/0 '   12:5/0/physics_layer_0/linear_velocity (   12:5/0/physics_layer_0/angular_velocity    12:5/0/script    13:5/0 '   13:5/0/physics_layer_0/linear_velocity (   13:5/0/physics_layer_0/angular_velocity    13:5/0/script    14:5/0 '   14:5/0/physics_layer_0/linear_velocity (   14:5/0/physics_layer_0/angular_velocity    14:5/0/script    15:5/0 '   15:5/0/physics_layer_0/linear_velocity (   15:5/0/physics_layer_0/angular_velocity    15:5/0/script    16:5/0 '   16:5/0/physics_layer_0/linear_velocity (   16:5/0/physics_layer_0/angular_velocity    16:5/0/script    17:5/0 '   17:5/0/physics_layer_0/linear_velocity (   17:5/0/physics_layer_0/angular_velocity    17:5/0/script    18:5/0 '   18:5/0/physics_layer_0/linear_velocity (   18:5/0/physics_layer_0/angular_velocity    18:5/0/script    19:5/0 '   19:5/0/physics_layer_0/linear_velocity (   19:5/0/physics_layer_0/angular_velocity    19:5/0/script    20:5/0 '   20:5/0/physics_layer_0/linear_velocity (   20:5/0/physics_layer_0/angular_velocity    20:5/0/script    21:5/0 '   21:5/0/physics_layer_0/linear_velocity (   21:5/0/physics_layer_0/angular_velocity    21:5/0/script    22:5/0 '   22:5/0/physics_layer_0/linear_velocity (   22:5/0/physics_layer_0/angular_velocity    22:5/0/script    23:5/0 '   23:5/0/physics_layer_0/linear_velocity (   23:5/0/physics_layer_0/angular_velocity    23:5/0/script    24:5/0 '   24:5/0/physics_layer_0/linear_velocity (   24:5/0/physics_layer_0/angular_velocity    24:5/0/script    25:5/0 '   25:5/0/physics_layer_0/linear_velocity (   25:5/0/physics_layer_0/angular_velocity    25:5/0/script    26:5/0 '   26:5/0/physics_layer_0/linear_velocity (   26:5/0/physics_layer_0/angular_velocity    26:5/0/script    27:5/0 '   27:5/0/physics_layer_0/linear_velocity (   27:5/0/physics_layer_0/angular_velocity    27:5/0/script    28:5/0 '   28:5/0/physics_layer_0/linear_velocity (   28:5/0/physics_layer_0/angular_velocity    28:5/0/script    29:5/0 '   29:5/0/physics_layer_0/linear_velocity (   29:5/0/physics_layer_0/angular_velocity    29:5/0/script    30:5/0 '   30:5/0/physics_layer_0/linear_velocity (   30:5/0/physics_layer_0/angular_velocity    30:5/0/script    31:5/0 '   31:5/0/physics_layer_0/linear_velocity (   31:5/0/physics_layer_0/angular_velocity    31:5/0/script    32:5/0 '   32:5/0/physics_layer_0/linear_velocity (   32:5/0/physics_layer_0/angular_velocity    32:5/0/script    33:5/0 '   33:5/0/physics_layer_0/linear_velocity (   33:5/0/physics_layer_0/angular_velocity    33:5/0/script    34:5/0 '   34:5/0/physics_layer_0/linear_velocity (   34:5/0/physics_layer_0/angular_velocity    34:5/0/script    35:5/0 '   35:5/0/physics_layer_0/linear_velocity (   35:5/0/physics_layer_0/angular_velocity    35:5/0/script    36:5/0 '   36:5/0/physics_layer_0/linear_velocity (   36:5/0/physics_layer_0/angular_velocity    36:5/0/script    37:5/0 '   37:5/0/physics_layer_0/linear_velocity (   37:5/0/physics_layer_0/angular_velocity    37:5/0/script    38:5/0 '   38:5/0/physics_layer_0/linear_velocity (   38:5/0/physics_layer_0/angular_velocity    38:5/0/script    39:5/0 '   39:5/0/physics_layer_0/linear_velocity (   39:5/0/physics_layer_0/angular_velocity    39:5/0/script    0:6/0 &   0:6/0/physics_layer_0/linear_velocity '   0:6/0/physics_layer_0/angular_velocity    0:6/0/script    1:6/0 &   1:6/0/physics_layer_0/linear_velocity '   1:6/0/physics_layer_0/angular_velocity    1:6/0/script    2:6/0 &   2:6/0/physics_layer_0/linear_velocity '   2:6/0/physics_layer_0/angular_velocity    2:6/0/script    3:6/0 &   3:6/0/physics_layer_0/linear_velocity '   3:6/0/physics_layer_0/angular_velocity    3:6/0/script    4:6/0 &   4:6/0/physics_layer_0/linear_velocity '   4:6/0/physics_layer_0/angular_velocity    4:6/0/script    5:6/0 &   5:6/0/physics_layer_0/linear_velocity '   5:6/0/physics_layer_0/angular_velocity    5:6/0/script    6:6/0 &   6:6/0/physics_layer_0/linear_velocity '   6:6/0/physics_layer_0/angular_velocity    6:6/0/script    7:6/0 &   7:6/0/physics_layer_0/linear_velocity '   7:6/0/physics_layer_0/angular_velocity    7:6/0/script    8:6/0 &   8:6/0/physics_layer_0/linear_velocity '   8:6/0/physics_layer_0/angular_velocity    8:6/0/script    9:6/0 &   9:6/0/physics_layer_0/linear_velocity '   9:6/0/physics_layer_0/angular_velocity    9:6/0/script    10:6/0 '   10:6/0/physics_layer_0/linear_velocity (   10:6/0/physics_layer_0/angular_velocity    10:6/0/script    11:6/0 '   11:6/0/physics_layer_0/linear_velocity (   11:6/0/physics_layer_0/angular_velocity    11:6/0/script    12:6/0 '   12:6/0/physics_layer_0/linear_velocity (   12:6/0/physics_layer_0/angular_velocity    12:6/0/script    13:6/0 '   13:6/0/physics_layer_0/linear_velocity (   13:6/0/physics_layer_0/angular_velocity    13:6/0/script    14:6/0 '   14:6/0/physics_layer_0/linear_velocity (   14:6/0/physics_layer_0/angular_velocity    14:6/0/script    15:6/0 '   15:6/0/physics_layer_0/linear_velocity (   15:6/0/physics_layer_0/angular_velocity    15:6/0/script    16:6/0 '   16:6/0/physics_layer_0/linear_velocity (   16:6/0/physics_layer_0/angular_velocity    16:6/0/script    17:6/0 '   17:6/0/physics_layer_0/linear_velocity (   17:6/0/physics_layer_0/angular_velocity    17:6/0/script    18:6/0 '   18:6/0/physics_layer_0/linear_velocity (   18:6/0/physics_layer_0/angular_velocity    18:6/0/script    19:6/0 '   19:6/0/physics_layer_0/linear_velocity (   19:6/0/physics_layer_0/angular_velocity    19:6/0/script    20:6/0 '   20:6/0/physics_layer_0/linear_velocity (   20:6/0/physics_layer_0/angular_velocity    20:6/0/script    21:6/0 '   21:6/0/physics_layer_0/linear_velocity (   21:6/0/physics_layer_0/angular_velocity    21:6/0/script    22:6/0 '   22:6/0/physics_layer_0/linear_velocity (   22:6/0/physics_layer_0/angular_velocity    22:6/0/script    23:6/0 '   23:6/0/physics_layer_0/linear_velocity (   23:6/0/physics_layer_0/angular_velocity    23:6/0/script    24:6/0 '   24:6/0/physics_layer_0/linear_velocity (   24:6/0/physics_layer_0/angular_velocity    24:6/0/script    25:6/0 '   25:6/0/physics_layer_0/linear_velocity (   25:6/0/physics_layer_0/angular_velocity    25:6/0/script    26:6/0 '   26:6/0/physics_layer_0/linear_velocity (   26:6/0/physics_layer_0/angular_velocity    26:6/0/script    27:6/0 '   27:6/0/physics_layer_0/linear_velocity (   27:6/0/physics_layer_0/angular_velocity    27:6/0/script    28:6/0 '   28:6/0/physics_layer_0/linear_velocity (   28:6/0/physics_layer_0/angular_velocity    28:6/0/script    29:6/0 '   29:6/0/physics_layer_0/linear_velocity (   29:6/0/physics_layer_0/angular_velocity    29:6/0/script    30:6/0 '   30:6/0/physics_layer_0/linear_velocity (   30:6/0/physics_layer_0/angular_velocity    30:6/0/script    31:6/0 '   31:6/0/physics_layer_0/linear_velocity (   31:6/0/physics_layer_0/angular_velocity    31:6/0/script    32:6/0 '   32:6/0/physics_layer_0/linear_velocity (   32:6/0/physics_layer_0/angular_velocity    32:6/0/script    33:6/0 '   33:6/0/physics_layer_0/linear_velocity (   33:6/0/physics_layer_0/angular_velocity    33:6/0/script    34:6/0 '   34:6/0/physics_layer_0/linear_velocity (   34:6/0/physics_layer_0/angular_velocity    34:6/0/script    35:6/0 '   35:6/0/physics_layer_0/linear_velocity (   35:6/0/physics_layer_0/angular_velocity    35:6/0/script    36:6/0 '   36:6/0/physics_layer_0/linear_velocity (   36:6/0/physics_layer_0/angular_velocity    36:6/0/script    37:6/0 '   37:6/0/physics_layer_0/linear_velocity (   37:6/0/physics_layer_0/angular_velocity    37:6/0/script    38:6/0 '   38:6/0/physics_layer_0/linear_velocity (   38:6/0/physics_layer_0/angular_velocity    38:6/0/script    39:6/0 '   39:6/0/physics_layer_0/linear_velocity (   39:6/0/physics_layer_0/angular_velocity    39:6/0/script    0:7/0 &   0:7/0/physics_layer_0/linear_velocity '   0:7/0/physics_layer_0/angular_velocity    0:7/0/script    1:7/0 &   1:7/0/physics_layer_0/linear_velocity '   1:7/0/physics_layer_0/angular_velocity    1:7/0/script    2:7/0 &   2:7/0/physics_layer_0/linear_velocity '   2:7/0/physics_layer_0/angular_velocity    2:7/0/script    3:7/0 &   3:7/0/physics_layer_0/linear_velocity '   3:7/0/physics_layer_0/angular_velocity    3:7/0/script    4:7/0 &   4:7/0/physics_layer_0/linear_velocity '   4:7/0/physics_layer_0/angular_velocity    4:7/0/script    5:7/0 &   5:7/0/physics_layer_0/linear_velocity '   5:7/0/physics_layer_0/angular_velocity    5:7/0/script    6:7/0 &   6:7/0/physics_layer_0/linear_velocity '   6:7/0/physics_layer_0/angular_velocity    6:7/0/script    7:7/0 &   7:7/0/physics_layer_0/linear_velocity '   7:7/0/physics_layer_0/angular_velocity    7:7/0/script    8:7/0 &   8:7/0/physics_layer_0/linear_velocity '   8:7/0/physics_layer_0/angular_velocity    8:7/0/script    9:7/0 &   9:7/0/physics_layer_0/linear_velocity '   9:7/0/physics_layer_0/angular_velocity    9:7/0/script    10:7/0 '   10:7/0/physics_layer_0/linear_velocity (   10:7/0/physics_layer_0/angular_velocity    10:7/0/script    11:7/0 '   11:7/0/physics_layer_0/linear_velocity (   11:7/0/physics_layer_0/angular_velocity    11:7/0/script    12:7/0 '   12:7/0/physics_layer_0/linear_velocity (   12:7/0/physics_layer_0/angular_velocity    12:7/0/script    13:7/0 '   13:7/0/physics_layer_0/linear_velocity (   13:7/0/physics_layer_0/angular_velocity    13:7/0/script    14:7/0 '   14:7/0/physics_layer_0/linear_velocity (   14:7/0/physics_layer_0/angular_velocity    14:7/0/script    15:7/0 '   15:7/0/physics_layer_0/linear_velocity (   15:7/0/physics_layer_0/angular_velocity    15:7/0/script    16:7/0 '   16:7/0/physics_layer_0/linear_velocity (   16:7/0/physics_layer_0/angular_velocity    16:7/0/script    17:7/0 '   17:7/0/physics_layer_0/linear_velocity (   17:7/0/physics_layer_0/angular_velocity    17:7/0/script    18:7/0 '   18:7/0/physics_layer_0/linear_velocity (   18:7/0/physics_layer_0/angular_velocity    18:7/0/script    19:7/0 '   19:7/0/physics_layer_0/linear_velocity (   19:7/0/physics_layer_0/angular_velocity    19:7/0/script    20:7/0 '   20:7/0/physics_layer_0/linear_velocity (   20:7/0/physics_layer_0/angular_velocity    20:7/0/script    21:7/0 '   21:7/0/physics_layer_0/linear_velocity (   21:7/0/physics_layer_0/angular_velocity    21:7/0/script    22:7/0 '   22:7/0/physics_layer_0/linear_velocity (   22:7/0/physics_layer_0/angular_velocity    22:7/0/script    23:7/0 '   23:7/0/physics_layer_0/linear_velocity (   23:7/0/physics_layer_0/angular_velocity    23:7/0/script    24:7/0 '   24:7/0/physics_layer_0/linear_velocity (   24:7/0/physics_layer_0/angular_velocity    24:7/0/script    25:7/0 '   25:7/0/physics_layer_0/linear_velocity (   25:7/0/physics_layer_0/angular_velocity    25:7/0/script    26:7/0 '   26:7/0/physics_layer_0/linear_velocity (   26:7/0/physics_layer_0/angular_velocity    26:7/0/script    27:7/0 '   27:7/0/physics_layer_0/linear_velocity (   27:7/0/physics_layer_0/angular_velocity    27:7/0/script    28:7/0 '   28:7/0/physics_layer_0/linear_velocity (   28:7/0/physics_layer_0/angular_velocity    28:7/0/script    29:7/0 '   29:7/0/physics_layer_0/linear_velocity (   29:7/0/physics_layer_0/angular_velocity    29:7/0/script    30:7/0 '   30:7/0/physics_layer_0/linear_velocity (   30:7/0/physics_layer_0/angular_velocity    30:7/0/script    31:7/0 '   31:7/0/physics_layer_0/linear_velocity (   31:7/0/physics_layer_0/angular_velocity    31:7/0/script    32:7/0 '   32:7/0/physics_layer_0/linear_velocity (   32:7/0/physics_layer_0/angular_velocity    32:7/0/script    33:7/0 '   33:7/0/physics_layer_0/linear_velocity (   33:7/0/physics_layer_0/angular_velocity    33:7/0/script    34:7/0 '   34:7/0/physics_layer_0/linear_velocity (   34:7/0/physics_layer_0/angular_velocity    34:7/0/script    35:7/0 '   35:7/0/physics_layer_0/linear_velocity (   35:7/0/physics_layer_0/angular_velocity    35:7/0/script    36:7/0 '   36:7/0/physics_layer_0/linear_velocity (   36:7/0/physics_layer_0/angular_velocity    36:7/0/script    37:7/0 '   37:7/0/physics_layer_0/linear_velocity (   37:7/0/physics_layer_0/angular_velocity    37:7/0/script    38:7/0 '   38:7/0/physics_layer_0/linear_velocity (   38:7/0/physics_layer_0/angular_velocity    38:7/0/script    39:7/0 '   39:7/0/physics_layer_0/linear_velocity (   39:7/0/physics_layer_0/angular_velocity    39:7/0/script    0:8/0 &   0:8/0/physics_layer_0/linear_velocity '   0:8/0/physics_layer_0/angular_velocity    0:8/0/script    1:8/0 &   1:8/0/physics_layer_0/linear_velocity '   1:8/0/physics_layer_0/angular_velocity    1:8/0/script    2:8/0 &   2:8/0/physics_layer_0/linear_velocity '   2:8/0/physics_layer_0/angular_velocity    2:8/0/script    3:8/0 &   3:8/0/physics_layer_0/linear_velocity '   3:8/0/physics_layer_0/angular_velocity    3:8/0/script    4:8/0 &   4:8/0/physics_layer_0/linear_velocity '   4:8/0/physics_layer_0/angular_velocity    4:8/0/script    5:8/0 &   5:8/0/physics_layer_0/linear_velocity '   5:8/0/physics_layer_0/angular_velocity    5:8/0/script    6:8/0 &   6:8/0/physics_layer_0/linear_velocity '   6:8/0/physics_layer_0/angular_velocity    6:8/0/script    7:8/0 &   7:8/0/physics_layer_0/linear_velocity '   7:8/0/physics_layer_0/angular_velocity    7:8/0/script    8:8/0 &   8:8/0/physics_layer_0/linear_velocity '   8:8/0/physics_layer_0/angular_velocity    8:8/0/script    9:8/0 &   9:8/0/physics_layer_0/linear_velocity '   9:8/0/physics_layer_0/angular_velocity    9:8/0/script    10:8/0 '   10:8/0/physics_layer_0/linear_velocity (   10:8/0/physics_layer_0/angular_velocity    10:8/0/script    11:8/0 '   11:8/0/physics_layer_0/linear_velocity (   11:8/0/physics_layer_0/angular_velocity    11:8/0/script    12:8/0 '   12:8/0/physics_layer_0/linear_velocity (   12:8/0/physics_layer_0/angular_velocity    12:8/0/script    13:8/0 '   13:8/0/physics_layer_0/linear_velocity (   13:8/0/physics_layer_0/angular_velocity    13:8/0/script    14:8/0 '   14:8/0/physics_layer_0/linear_velocity (   14:8/0/physics_layer_0/angular_velocity    14:8/0/script    15:8/0 '   15:8/0/physics_layer_0/linear_velocity (   15:8/0/physics_layer_0/angular_velocity    15:8/0/script    16:8/0 '   16:8/0/physics_layer_0/linear_velocity (   16:8/0/physics_layer_0/angular_velocity    16:8/0/script    17:8/0 '   17:8/0/physics_layer_0/linear_velocity (   17:8/0/physics_layer_0/angular_velocity    17:8/0/script    18:8/0 '   18:8/0/physics_layer_0/linear_velocity (   18:8/0/physics_layer_0/angular_velocity    18:8/0/script    19:8/0 '   19:8/0/physics_layer_0/linear_velocity (   19:8/0/physics_layer_0/angular_velocity    19:8/0/script    20:8/0 '   20:8/0/physics_layer_0/linear_velocity (   20:8/0/physics_layer_0/angular_velocity    20:8/0/script    21:8/0 '   21:8/0/physics_layer_0/linear_velocity (   21:8/0/physics_layer_0/angular_velocity    21:8/0/script    22:8/0 '   22:8/0/physics_layer_0/linear_velocity (   22:8/0/physics_layer_0/angular_velocity    22:8/0/script    23:8/0 '   23:8/0/physics_layer_0/linear_velocity (   23:8/0/physics_layer_0/angular_velocity    23:8/0/script    24:8/0 '   24:8/0/physics_layer_0/linear_velocity (   24:8/0/physics_layer_0/angular_velocity    24:8/0/script    25:8/0 '   25:8/0/physics_layer_0/linear_velocity (   25:8/0/physics_layer_0/angular_velocity    25:8/0/script    26:8/0 '   26:8/0/physics_layer_0/linear_velocity (   26:8/0/physics_layer_0/angular_velocity    26:8/0/script    27:8/0 '   27:8/0/physics_layer_0/linear_velocity (   27:8/0/physics_layer_0/angular_velocity    27:8/0/script    28:8/0 '   28:8/0/physics_layer_0/linear_velocity (   28:8/0/physics_layer_0/angular_velocity    28:8/0/script    29:8/0 '   29:8/0/physics_layer_0/linear_velocity (   29:8/0/physics_layer_0/angular_velocity    29:8/0/script    30:8/0 '   30:8/0/physics_layer_0/linear_velocity (   30:8/0/physics_layer_0/angular_velocity    30:8/0/script    31:8/0 '   31:8/0/physics_layer_0/linear_velocity (   31:8/0/physics_layer_0/angular_velocity    31:8/0/script    32:8/0 '   32:8/0/physics_layer_0/linear_velocity (   32:8/0/physics_layer_0/angular_velocity    32:8/0/script    33:8/0 '   33:8/0/physics_layer_0/linear_velocity (   33:8/0/physics_layer_0/angular_velocity    33:8/0/script    34:8/0 '   34:8/0/physics_layer_0/linear_velocity (   34:8/0/physics_layer_0/angular_velocity    34:8/0/script    35:8/0 '   35:8/0/physics_layer_0/linear_velocity (   35:8/0/physics_layer_0/angular_velocity    35:8/0/script    36:8/0 '   36:8/0/physics_layer_0/linear_velocity (   36:8/0/physics_layer_0/angular_velocity    36:8/0/script    37:8/0 '   37:8/0/physics_layer_0/linear_velocity (   37:8/0/physics_layer_0/angular_velocity    37:8/0/script    38:8/0 '   38:8/0/physics_layer_0/linear_velocity (   38:8/0/physics_layer_0/angular_velocity    38:8/0/script    39:8/0 '   39:8/0/physics_layer_0/linear_velocity (   39:8/0/physics_layer_0/angular_velocity    39:8/0/script    0:9/0 &   0:9/0/physics_layer_0/linear_velocity '   0:9/0/physics_layer_0/angular_velocity    0:9/0/script    1:9/0 &   1:9/0/physics_layer_0/linear_velocity '   1:9/0/physics_layer_0/angular_velocity    1:9/0/script    2:9/0 &   2:9/0/physics_layer_0/linear_velocity '   2:9/0/physics_layer_0/angular_velocity    2:9/0/script    3:9/0 &   3:9/0/physics_layer_0/linear_velocity '   3:9/0/physics_layer_0/angular_velocity    3:9/0/script    4:9/0 &   4:9/0/physics_layer_0/linear_velocity '   4:9/0/physics_layer_0/angular_velocity    4:9/0/script    5:9/0 &   5:9/0/physics_layer_0/linear_velocity '   5:9/0/physics_layer_0/angular_velocity    5:9/0/script    6:9/0 &   6:9/0/physics_layer_0/linear_velocity '   6:9/0/physics_layer_0/angular_velocity    6:9/0/script    7:9/0 &   7:9/0/physics_layer_0/linear_velocity '   7:9/0/physics_layer_0/angular_velocity    7:9/0/script    8:9/0 &   8:9/0/physics_layer_0/linear_velocity '   8:9/0/physics_layer_0/angular_velocity    8:9/0/script    9:9/0 &   9:9/0/physics_layer_0/linear_velocity '   9:9/0/physics_layer_0/angular_velocity    9:9/0/script    10:9/0 '   10:9/0/physics_layer_0/linear_velocity (   10:9/0/physics_layer_0/angular_velocity    10:9/0/script    11:9/0 '   11:9/0/physics_layer_0/linear_velocity (   11:9/0/physics_layer_0/angular_velocity    11:9/0/script    12:9/0 '   12:9/0/physics_layer_0/linear_velocity (   12:9/0/physics_layer_0/angular_velocity    12:9/0/script    13:9/0 '   13:9/0/physics_layer_0/linear_velocity (   13:9/0/physics_layer_0/angular_velocity    13:9/0/script    14:9/0 '   14:9/0/physics_layer_0/linear_velocity (   14:9/0/physics_layer_0/angular_velocity    14:9/0/script    15:9/0 '   15:9/0/physics_layer_0/linear_velocity (   15:9/0/physics_layer_0/angular_velocity    15:9/0/script    16:9/0 '   16:9/0/physics_layer_0/linear_velocity (   16:9/0/physics_layer_0/angular_velocity    16:9/0/script    17:9/0 '   17:9/0/physics_layer_0/linear_velocity (   17:9/0/physics_layer_0/angular_velocity    17:9/0/script    18:9/0 '   18:9/0/physics_layer_0/linear_velocity (   18:9/0/physics_layer_0/angular_velocity    18:9/0/script    19:9/0 '   19:9/0/physics_layer_0/linear_velocity (   19:9/0/physics_layer_0/angular_velocity    19:9/0/script    20:9/0 '   20:9/0/physics_layer_0/linear_velocity (   20:9/0/physics_layer_0/angular_velocity    20:9/0/script    21:9/0 '   21:9/0/physics_layer_0/linear_velocity (   21:9/0/physics_layer_0/angular_velocity    21:9/0/script    22:9/0 '   22:9/0/physics_layer_0/linear_velocity (   22:9/0/physics_layer_0/angular_velocity    22:9/0/script    23:9/0 '   23:9/0/physics_layer_0/linear_velocity (   23:9/0/physics_layer_0/angular_velocity    23:9/0/script    24:9/0 '   24:9/0/physics_layer_0/linear_velocity (   24:9/0/physics_layer_0/angular_velocity    24:9/0/script    25:9/0 '   25:9/0/physics_layer_0/linear_velocity (   25:9/0/physics_layer_0/angular_velocity    25:9/0/script    26:9/0 '   26:9/0/physics_layer_0/linear_velocity (   26:9/0/physics_layer_0/angular_velocity    26:9/0/script    27:9/0 '   27:9/0/physics_layer_0/linear_velocity (   27:9/0/physics_layer_0/angular_velocity    27:9/0/script    28:9/0 '   28:9/0/physics_layer_0/linear_velocity (   28:9/0/physics_layer_0/angular_velocity    28:9/0/script    29:9/0 '   29:9/0/physics_layer_0/linear_velocity (   29:9/0/physics_layer_0/angular_velocity    29:9/0/script    30:9/0 '   30:9/0/physics_layer_0/linear_velocity (   30:9/0/physics_layer_0/angular_velocity    30:9/0/script    31:9/0 '   31:9/0/physics_layer_0/linear_velocity (   31:9/0/physics_layer_0/angular_velocity    31:9/0/script    32:9/0 '   32:9/0/physics_layer_0/linear_velocity (   32:9/0/physics_layer_0/angular_velocity    32:9/0/script    33:9/0 '   33:9/0/physics_layer_0/linear_velocity (   33:9/0/physics_layer_0/angular_velocity    33:9/0/script    34:9/0 '   34:9/0/physics_layer_0/linear_velocity (   34:9/0/physics_layer_0/angular_velocity    34:9/0/script    35:9/0 '   35:9/0/physics_layer_0/linear_velocity (   35:9/0/physics_layer_0/angular_velocity    35:9/0/script    36:9/0 '   36:9/0/physics_layer_0/linear_velocity (   36:9/0/physics_layer_0/angular_velocity    36:9/0/script    37:9/0 '   37:9/0/physics_layer_0/linear_velocity (   37:9/0/physics_layer_0/angular_velocity    37:9/0/script    38:9/0 '   38:9/0/physics_layer_0/linear_velocity (   38:9/0/physics_layer_0/angular_velocity    38:9/0/script    39:9/0 '   39:9/0/physics_layer_0/linear_velocity (   39:9/0/physics_layer_0/angular_velocity    39:9/0/script    0:10/0 '   0:10/0/physics_layer_0/linear_velocity (   0:10/0/physics_layer_0/angular_velocity    0:10/0/script    1:10/0 '   1:10/0/physics_layer_0/linear_velocity (   1:10/0/physics_layer_0/angular_velocity    1:10/0/script    2:10/0 '   2:10/0/physics_layer_0/linear_velocity (   2:10/0/physics_layer_0/angular_velocity    2:10/0/script    3:10/0 '   3:10/0/physics_layer_0/linear_velocity (   3:10/0/physics_layer_0/angular_velocity    3:10/0/script    4:10/0 '   4:10/0/physics_layer_0/linear_velocity (   4:10/0/physics_layer_0/angular_velocity    4:10/0/script    5:10/0 '   5:10/0/physics_layer_0/linear_velocity (   5:10/0/physics_layer_0/angular_velocity    5:10/0/script    6:10/0 '   6:10/0/physics_layer_0/linear_velocity (   6:10/0/physics_layer_0/angular_velocity    6:10/0/script    7:10/0 '   7:10/0/physics_layer_0/linear_velocity (   7:10/0/physics_layer_0/angular_velocity    7:10/0/script    8:10/0 '   8:10/0/physics_layer_0/linear_velocity (   8:10/0/physics_layer_0/angular_velocity    8:10/0/script    9:10/0 '   9:10/0/physics_layer_0/linear_velocity (   9:10/0/physics_layer_0/angular_velocity    9:10/0/script    10:10/0 (   10:10/0/physics_layer_0/linear_velocity )   10:10/0/physics_layer_0/angular_velocity    10:10/0/script    11:10/0 (   11:10/0/physics_layer_0/linear_velocity )   11:10/0/physics_layer_0/angular_velocity    11:10/0/script    12:10/0 (   12:10/0/physics_layer_0/linear_velocity )   12:10/0/physics_layer_0/angular_velocity    12:10/0/script    13:10/0 (   13:10/0/physics_layer_0/linear_velocity )   13:10/0/physics_layer_0/angular_velocity    13:10/0/script    14:10/0 (   14:10/0/physics_layer_0/linear_velocity )   14:10/0/physics_layer_0/angular_velocity    14:10/0/script    15:10/0 (   15:10/0/physics_layer_0/linear_velocity )   15:10/0/physics_layer_0/angular_velocity    15:10/0/script    16:10/0 (   16:10/0/physics_layer_0/linear_velocity )   16:10/0/physics_layer_0/angular_velocity    16:10/0/script    17:10/0 (   17:10/0/physics_layer_0/linear_velocity )   17:10/0/physics_layer_0/angular_velocity    17:10/0/script    18:10/0 (   18:10/0/physics_layer_0/linear_velocity )   18:10/0/physics_layer_0/angular_velocity    18:10/0/script    19:10/0 (   19:10/0/physics_layer_0/linear_velocity )   19:10/0/physics_layer_0/angular_velocity    19:10/0/script    20:10/0 (   20:10/0/physics_layer_0/linear_velocity )   20:10/0/physics_layer_0/angular_velocity    20:10/0/script    21:10/0 (   21:10/0/physics_layer_0/linear_velocity )   21:10/0/physics_layer_0/angular_velocity    21:10/0/script    22:10/0 (   22:10/0/physics_layer_0/linear_velocity )   22:10/0/physics_layer_0/angular_velocity    22:10/0/script    23:10/0 (   23:10/0/physics_layer_0/linear_velocity )   23:10/0/physics_layer_0/angular_velocity    23:10/0/script    24:10/0 (   24:10/0/physics_layer_0/linear_velocity )   24:10/0/physics_layer_0/angular_velocity    24:10/0/script    25:10/0 (   25:10/0/physics_layer_0/linear_velocity )   25:10/0/physics_layer_0/angular_velocity    25:10/0/script    26:10/0 (   26:10/0/physics_layer_0/linear_velocity )   26:10/0/physics_layer_0/angular_velocity    26:10/0/script    27:10/0 (   27:10/0/physics_layer_0/linear_velocity )   27:10/0/physics_layer_0/angular_velocity    27:10/0/script    28:10/0 (   28:10/0/physics_layer_0/linear_velocity )   28:10/0/physics_layer_0/angular_velocity    28:10/0/script    29:10/0 (   29:10/0/physics_layer_0/linear_velocity )   29:10/0/physics_layer_0/angular_velocity    29:10/0/script    30:10/0 (   30:10/0/physics_layer_0/linear_velocity )   30:10/0/physics_layer_0/angular_velocity    30:10/0/script    31:10/0 (   31:10/0/physics_layer_0/linear_velocity )   31:10/0/physics_layer_0/angular_velocity    31:10/0/script    32:10/0 (   32:10/0/physics_layer_0/linear_velocity )   32:10/0/physics_layer_0/angular_velocity    32:10/0/script    33:10/0 (   33:10/0/physics_layer_0/linear_velocity )   33:10/0/physics_layer_0/angular_velocity    33:10/0/script    34:10/0 (   34:10/0/physics_layer_0/linear_velocity )   34:10/0/physics_layer_0/angular_velocity    34:10/0/script    35:10/0 (   35:10/0/physics_layer_0/linear_velocity )   35:10/0/physics_layer_0/angular_velocity    35:10/0/script    36:10/0 (   36:10/0/physics_layer_0/linear_velocity )   36:10/0/physics_layer_0/angular_velocity    36:10/0/script    37:10/0 (   37:10/0/physics_layer_0/linear_velocity )   37:10/0/physics_layer_0/angular_velocity    37:10/0/script    38:10/0 (   38:10/0/physics_layer_0/linear_velocity )   38:10/0/physics_layer_0/angular_velocity    38:10/0/script    39:10/0 (   39:10/0/physics_layer_0/linear_velocity )   39:10/0/physics_layer_0/angular_velocity    39:10/0/script    0:11/0 '   0:11/0/physics_layer_0/linear_velocity (   0:11/0/physics_layer_0/angular_velocity (   0:11/0/physics_layer_0/polygon_0/points    0:11/0/script    1:11/0 '   1:11/0/physics_layer_0/linear_velocity (   1:11/0/physics_layer_0/angular_velocity (   1:11/0/physics_layer_0/polygon_0/points    1:11/0/script    2:11/0 '   2:11/0/physics_layer_0/linear_velocity (   2:11/0/physics_layer_0/angular_velocity (   2:11/0/physics_layer_0/polygon_0/points    2:11/0/script    3:11/0 '   3:11/0/physics_layer_0/linear_velocity (   3:11/0/physics_layer_0/angular_velocity (   3:11/0/physics_layer_0/polygon_0/points    3:11/0/script    4:11/0 '   4:11/0/physics_layer_0/linear_velocity (   4:11/0/physics_layer_0/angular_velocity (   4:11/0/physics_layer_0/polygon_0/points    4:11/0/script    5:11/0 '   5:11/0/physics_layer_0/linear_velocity (   5:11/0/physics_layer_0/angular_velocity (   5:11/0/physics_layer_0/polygon_0/points    5:11/0/script    6:11/0 '   6:11/0/physics_layer_0/linear_velocity (   6:11/0/physics_layer_0/angular_velocity (   6:11/0/physics_layer_0/polygon_0/points    6:11/0/script    7:11/0 '   7:11/0/physics_layer_0/linear_velocity (   7:11/0/physics_layer_0/angular_velocity (   7:11/0/physics_layer_0/polygon_0/points    7:11/0/script    8:11/0 '   8:11/0/physics_layer_0/linear_velocity (   8:11/0/physics_layer_0/angular_velocity (   8:11/0/physics_layer_0/polygon_0/points    8:11/0/script    9:11/0 '   9:11/0/physics_layer_0/linear_velocity (   9:11/0/physics_layer_0/angular_velocity (   9:11/0/physics_layer_0/polygon_0/points    9:11/0/script    10:11/0 (   10:11/0/physics_layer_0/linear_velocity )   10:11/0/physics_layer_0/angular_velocity )   10:11/0/physics_layer_0/polygon_0/points    10:11/0/script    11:11/0 (   11:11/0/physics_layer_0/linear_velocity )   11:11/0/physics_layer_0/angular_velocity )   11:11/0/physics_layer_0/polygon_0/points    11:11/0/script    12:11/0 (   12:11/0/physics_layer_0/linear_velocity )   12:11/0/physics_layer_0/angular_velocity )   12:11/0/physics_layer_0/polygon_0/points    12:11/0/script    13:11/0 (   13:11/0/physics_layer_0/linear_velocity )   13:11/0/physics_layer_0/angular_velocity )   13:11/0/physics_layer_0/polygon_0/points    13:11/0/script    14:11/0 (   14:11/0/physics_layer_0/linear_velocity )   14:11/0/physics_layer_0/angular_velocity )   14:11/0/physics_layer_0/polygon_0/points    14:11/0/script    15:11/0 (   15:11/0/physics_layer_0/linear_velocity )   15:11/0/physics_layer_0/angular_velocity )   15:11/0/physics_layer_0/polygon_0/points    15:11/0/script    16:11/0 (   16:11/0/physics_layer_0/linear_velocity )   16:11/0/physics_layer_0/angular_velocity )   16:11/0/physics_layer_0/polygon_0/points    16:11/0/script    17:11/0 (   17:11/0/physics_layer_0/linear_velocity )   17:11/0/physics_layer_0/angular_velocity )   17:11/0/physics_layer_0/polygon_0/points    17:11/0/script    18:11/0 (   18:11/0/physics_layer_0/linear_velocity )   18:11/0/physics_layer_0/angular_velocity )   18:11/0/physics_layer_0/polygon_0/points    18:11/0/script    19:11/0 (   19:11/0/physics_layer_0/linear_velocity )   19:11/0/physics_layer_0/angular_velocity )   19:11/0/physics_layer_0/polygon_0/points    19:11/0/script    20:11/0 (   20:11/0/physics_layer_0/linear_velocity )   20:11/0/physics_layer_0/angular_velocity )   20:11/0/physics_layer_0/polygon_0/points    20:11/0/script    21:11/0 (   21:11/0/physics_layer_0/linear_velocity )   21:11/0/physics_layer_0/angular_velocity )   21:11/0/physics_layer_0/polygon_0/points    21:11/0/script    22:11/0 (   22:11/0/physics_layer_0/linear_velocity )   22:11/0/physics_layer_0/angular_velocity )   22:11/0/physics_layer_0/polygon_0/points    22:11/0/script    23:11/0 (   23:11/0/physics_layer_0/linear_velocity )   23:11/0/physics_layer_0/angular_velocity    23:11/0/script    24:11/0 (   24:11/0/physics_layer_0/linear_velocity )   24:11/0/physics_layer_0/angular_velocity    24:11/0/script    25:11/0 (   25:11/0/physics_layer_0/linear_velocity )   25:11/0/physics_layer_0/angular_velocity    25:11/0/script    26:11/0 (   26:11/0/physics_layer_0/linear_velocity )   26:11/0/physics_layer_0/angular_velocity    26:11/0/script    27:11/0 (   27:11/0/physics_layer_0/linear_velocity )   27:11/0/physics_layer_0/angular_velocity    27:11/0/script    28:11/0 (   28:11/0/physics_layer_0/linear_velocity )   28:11/0/physics_layer_0/angular_velocity    28:11/0/script    29:11/0 (   29:11/0/physics_layer_0/linear_velocity )   29:11/0/physics_layer_0/angular_velocity    29:11/0/script    30:11/0 (   30:11/0/physics_layer_0/linear_velocity )   30:11/0/physics_layer_0/angular_velocity    30:11/0/script    31:11/0 (   31:11/0/physics_layer_0/linear_velocity )   31:11/0/physics_layer_0/angular_velocity    31:11/0/script    32:11/0 (   32:11/0/physics_layer_0/linear_velocity )   32:11/0/physics_layer_0/angular_velocity    32:11/0/script    33:11/0 (   33:11/0/physics_layer_0/linear_velocity )   33:11/0/physics_layer_0/angular_velocity    33:11/0/script    34:11/0 (   34:11/0/physics_layer_0/linear_velocity )   34:11/0/physics_layer_0/angular_velocity    34:11/0/script    35:11/0 (   35:11/0/physics_layer_0/linear_velocity )   35:11/0/physics_layer_0/angular_velocity    35:11/0/script    36:11/0 (   36:11/0/physics_layer_0/linear_velocity )   36:11/0/physics_layer_0/angular_velocity    36:11/0/script    37:11/0 (   37:11/0/physics_layer_0/linear_velocity )   37:11/0/physics_layer_0/angular_velocity    37:11/0/script    38:11/0 (   38:11/0/physics_layer_0/linear_velocity )   38:11/0/physics_layer_0/angular_velocity    38:11/0/script    39:11/0 (   39:11/0/physics_layer_0/linear_velocity )   39:11/0/physics_layer_0/angular_velocity    39:11/0/script    0:12/0 '   0:12/0/physics_layer_0/linear_velocity (   0:12/0/physics_layer_0/angular_velocity (   0:12/0/physics_layer_0/polygon_0/points    0:12/0/script    1:12/0 '   1:12/0/physics_layer_0/linear_velocity (   1:12/0/physics_layer_0/angular_velocity (   1:12/0/physics_layer_0/polygon_0/points    1:12/0/script    2:12/0 '   2:12/0/physics_layer_0/linear_velocity (   2:12/0/physics_layer_0/angular_velocity (   2:12/0/physics_layer_0/polygon_0/points    2:12/0/script    3:12/0 '   3:12/0/physics_layer_0/linear_velocity (   3:12/0/physics_layer_0/angular_velocity (   3:12/0/physics_layer_0/polygon_0/points    3:12/0/script    4:12/0 '   4:12/0/physics_layer_0/linear_velocity (   4:12/0/physics_layer_0/angular_velocity (   4:12/0/physics_layer_0/polygon_0/points    4:12/0/script    5:12/0 '   5:12/0/physics_layer_0/linear_velocity (   5:12/0/physics_layer_0/angular_velocity (   5:12/0/physics_layer_0/polygon_0/points    5:12/0/script    6:12/0 '   6:12/0/physics_layer_0/linear_velocity (   6:12/0/physics_layer_0/angular_velocity (   6:12/0/physics_layer_0/polygon_0/points    6:12/0/script    7:12/0 '   7:12/0/physics_layer_0/linear_velocity (   7:12/0/physics_layer_0/angular_velocity (   7:12/0/physics_layer_0/polygon_0/points    7:12/0/script    8:12/0 '   8:12/0/physics_layer_0/linear_velocity (   8:12/0/physics_layer_0/angular_velocity (   8:12/0/physics_layer_0/polygon_0/points    8:12/0/script    9:12/0 '   9:12/0/physics_layer_0/linear_velocity (   9:12/0/physics_layer_0/angular_velocity (   9:12/0/physics_layer_0/polygon_0/points    9:12/0/script    10:12/0 (   10:12/0/physics_layer_0/linear_velocity )   10:12/0/physics_layer_0/angular_velocity )   10:12/0/physics_layer_0/polygon_0/points    10:12/0/script    11:12/0 (   11:12/0/physics_layer_0/linear_velocity )   11:12/0/physics_layer_0/angular_velocity )   11:12/0/physics_layer_0/polygon_0/points    11:12/0/script    12:12/0 (   12:12/0/physics_layer_0/linear_velocity )   12:12/0/physics_layer_0/angular_velocity )   12:12/0/physics_layer_0/polygon_0/points    12:12/0/script    13:12/0 (   13:12/0/physics_layer_0/linear_velocity )   13:12/0/physics_layer_0/angular_velocity )   13:12/0/physics_layer_0/polygon_0/points    13:12/0/script    14:12/0 (   14:12/0/physics_layer_0/linear_velocity )   14:12/0/physics_layer_0/angular_velocity )   14:12/0/physics_layer_0/polygon_0/points    14:12/0/script    15:12/0 (   15:12/0/physics_layer_0/linear_velocity )   15:12/0/physics_layer_0/angular_velocity )   15:12/0/physics_layer_0/polygon_0/points    15:12/0/script    16:12/0 (   16:12/0/physics_layer_0/linear_velocity )   16:12/0/physics_layer_0/angular_velocity )   16:12/0/physics_layer_0/polygon_0/points    16:12/0/script    17:12/0 (   17:12/0/physics_layer_0/linear_velocity )   17:12/0/physics_layer_0/angular_velocity )   17:12/0/physics_layer_0/polygon_0/points    17:12/0/script    18:12/0 (   18:12/0/physics_layer_0/linear_velocity )   18:12/0/physics_layer_0/angular_velocity )   18:12/0/physics_layer_0/polygon_0/points    18:12/0/script    19:12/0 (   19:12/0/physics_layer_0/linear_velocity )   19:12/0/physics_layer_0/angular_velocity )   19:12/0/physics_layer_0/polygon_0/points    19:12/0/script    20:12/0 (   20:12/0/physics_layer_0/linear_velocity )   20:12/0/physics_layer_0/angular_velocity )   20:12/0/physics_layer_0/polygon_0/points    20:12/0/script    21:12/0 (   21:12/0/physics_layer_0/linear_velocity )   21:12/0/physics_layer_0/angular_velocity )   21:12/0/physics_layer_0/polygon_0/points    21:12/0/script    22:12/0 (   22:12/0/physics_layer_0/linear_velocity )   22:12/0/physics_layer_0/angular_velocity )   22:12/0/physics_layer_0/polygon_0/points    22:12/0/script    23:12/0 (   23:12/0/physics_layer_0/linear_velocity )   23:12/0/physics_layer_0/angular_velocity )   23:12/0/physics_layer_0/polygon_0/points    23:12/0/script    24:12/0 (   24:12/0/physics_layer_0/linear_velocity )   24:12/0/physics_layer_0/angular_velocity )   24:12/0/physics_layer_0/polygon_0/points    24:12/0/script    25:12/0 (   25:12/0/physics_layer_0/linear_velocity )   25:12/0/physics_layer_0/angular_velocity )   25:12/0/physics_layer_0/polygon_0/points    25:12/0/script    26:12/0 (   26:12/0/physics_layer_0/linear_velocity )   26:12/0/physics_layer_0/angular_velocity )   26:12/0/physics_layer_0/polygon_0/points    26:12/0/script    27:12/0 (   27:12/0/physics_layer_0/linear_velocity )   27:12/0/physics_layer_0/angular_velocity )   27:12/0/physics_layer_0/polygon_0/points    27:12/0/script    28:12/0 (   28:12/0/physics_layer_0/linear_velocity )   28:12/0/physics_layer_0/angular_velocity )   28:12/0/physics_layer_0/polygon_0/points    28:12/0/script    29:12/0 (   29:12/0/physics_layer_0/linear_velocity )   29:12/0/physics_layer_0/angular_velocity )   29:12/0/physics_layer_0/polygon_0/points    29:12/0/script    30:12/0 (   30:12/0/physics_layer_0/linear_velocity )   30:12/0/physics_layer_0/angular_velocity )   30:12/0/physics_layer_0/polygon_0/points    30:12/0/script    31:12/0 (   31:12/0/physics_layer_0/linear_velocity )   31:12/0/physics_layer_0/angular_velocity )   31:12/0/physics_layer_0/polygon_0/points    31:12/0/script    32:12/0 (   32:12/0/physics_layer_0/linear_velocity )   32:12/0/physics_layer_0/angular_velocity )   32:12/0/physics_layer_0/polygon_0/points    32:12/0/script    33:12/0 (   33:12/0/physics_layer_0/linear_velocity )   33:12/0/physics_layer_0/angular_velocity )   33:12/0/physics_layer_0/polygon_0/points    33:12/0/script    34:12/0 (   34:12/0/physics_layer_0/linear_velocity )   34:12/0/physics_layer_0/angular_velocity )   34:12/0/physics_layer_0/polygon_0/points    34:12/0/script    35:12/0 (   35:12/0/physics_layer_0/linear_velocity )   35:12/0/physics_layer_0/angular_velocity )   35:12/0/physics_layer_0/polygon_0/points    35:12/0/script    36:12/0 (   36:12/0/physics_layer_0/linear_velocity )   36:12/0/physics_layer_0/angular_velocity )   36:12/0/physics_layer_0/polygon_0/points    36:12/0/script    37:12/0 (   37:12/0/physics_layer_0/linear_velocity )   37:12/0/physics_layer_0/angular_velocity )   37:12/0/physics_layer_0/polygon_0/points    37:12/0/script    38:12/0 (   38:12/0/physics_layer_0/linear_velocity )   38:12/0/physics_layer_0/angular_velocity )   38:12/0/physics_layer_0/polygon_0/points    38:12/0/script    39:12/0 (   39:12/0/physics_layer_0/linear_velocity )   39:12/0/physics_layer_0/angular_velocity )   39:12/0/physics_layer_0/polygon_0/points    39:12/0/script    0:13/0 '   0:13/0/physics_layer_0/linear_velocity (   0:13/0/physics_layer_0/angular_velocity (   0:13/0/physics_layer_0/polygon_0/points    0:13/0/script    1:13/0 '   1:13/0/physics_layer_0/linear_velocity (   1:13/0/physics_layer_0/angular_velocity (   1:13/0/physics_layer_0/polygon_0/points    1:13/0/script    2:13/0 '   2:13/0/physics_layer_0/linear_velocity (   2:13/0/physics_layer_0/angular_velocity (   2:13/0/physics_layer_0/polygon_0/points    2:13/0/script    3:13/0 '   3:13/0/physics_layer_0/linear_velocity (   3:13/0/physics_layer_0/angular_velocity (   3:13/0/physics_layer_0/polygon_0/points    3:13/0/script    4:13/0 '   4:13/0/physics_layer_0/linear_velocity (   4:13/0/physics_layer_0/angular_velocity (   4:13/0/physics_layer_0/polygon_0/points    4:13/0/script    5:13/0 '   5:13/0/physics_layer_0/linear_velocity (   5:13/0/physics_layer_0/angular_velocity (   5:13/0/physics_layer_0/polygon_0/points    5:13/0/script    6:13/0 '   6:13/0/physics_layer_0/linear_velocity (   6:13/0/physics_layer_0/angular_velocity (   6:13/0/physics_layer_0/polygon_0/points    6:13/0/script    7:13/0 '   7:13/0/physics_layer_0/linear_velocity (   7:13/0/physics_layer_0/angular_velocity (   7:13/0/physics_layer_0/polygon_0/points    7:13/0/script    8:13/0 '   8:13/0/physics_layer_0/linear_velocity (   8:13/0/physics_layer_0/angular_velocity (   8:13/0/physics_layer_0/polygon_0/points    8:13/0/script    9:13/0 '   9:13/0/physics_layer_0/linear_velocity (   9:13/0/physics_layer_0/angular_velocity (   9:13/0/physics_layer_0/polygon_0/points    9:13/0/script    10:13/0 (   10:13/0/physics_layer_0/linear_velocity )   10:13/0/physics_layer_0/angular_velocity )   10:13/0/physics_layer_0/polygon_0/points    10:13/0/script    11:13/0 (   11:13/0/physics_layer_0/linear_velocity )   11:13/0/physics_layer_0/angular_velocity )   11:13/0/physics_layer_0/polygon_0/points    11:13/0/script    12:13/0 (   12:13/0/physics_layer_0/linear_velocity )   12:13/0/physics_layer_0/angular_velocity )   12:13/0/physics_layer_0/polygon_0/points    12:13/0/script    13:13/0 (   13:13/0/physics_layer_0/linear_velocity )   13:13/0/physics_layer_0/angular_velocity )   13:13/0/physics_layer_0/polygon_0/points    13:13/0/script    14:13/0 (   14:13/0/physics_layer_0/linear_velocity )   14:13/0/physics_layer_0/angular_velocity )   14:13/0/physics_layer_0/polygon_0/points    14:13/0/script    15:13/0 (   15:13/0/physics_layer_0/linear_velocity )   15:13/0/physics_layer_0/angular_velocity )   15:13/0/physics_layer_0/polygon_0/points    15:13/0/script    16:13/0 (   16:13/0/physics_layer_0/linear_velocity )   16:13/0/physics_layer_0/angular_velocity )   16:13/0/physics_layer_0/polygon_0/points    16:13/0/script    17:13/0 (   17:13/0/physics_layer_0/linear_velocity )   17:13/0/physics_layer_0/angular_velocity )   17:13/0/physics_layer_0/polygon_0/points    17:13/0/script    18:13/0 (   18:13/0/physics_layer_0/linear_velocity )   18:13/0/physics_layer_0/angular_velocity )   18:13/0/physics_layer_0/polygon_0/points    18:13/0/script    19:13/0 (   19:13/0/physics_layer_0/linear_velocity )   19:13/0/physics_layer_0/angular_velocity )   19:13/0/physics_layer_0/polygon_0/points    19:13/0/script    20:13/0 (   20:13/0/physics_layer_0/linear_velocity )   20:13/0/physics_layer_0/angular_velocity )   20:13/0/physics_layer_0/polygon_0/points    20:13/0/script    21:13/0 (   21:13/0/physics_layer_0/linear_velocity )   21:13/0/physics_layer_0/angular_velocity )   21:13/0/physics_layer_0/polygon_0/points    21:13/0/script    22:13/0 (   22:13/0/physics_layer_0/linear_velocity )   22:13/0/physics_layer_0/angular_velocity )   22:13/0/physics_layer_0/polygon_0/points    22:13/0/script    23:13/0 (   23:13/0/physics_layer_0/linear_velocity )   23:13/0/physics_layer_0/angular_velocity )   23:13/0/physics_layer_0/polygon_0/points    23:13/0/script    24:13/0 (   24:13/0/physics_layer_0/linear_velocity )   24:13/0/physics_layer_0/angular_velocity )   24:13/0/physics_layer_0/polygon_0/points    24:13/0/script    25:13/0 (   25:13/0/physics_layer_0/linear_velocity )   25:13/0/physics_layer_0/angular_velocity )   25:13/0/physics_layer_0/polygon_0/points    25:13/0/script    26:13/0 (   26:13/0/physics_layer_0/linear_velocity )   26:13/0/physics_layer_0/angular_velocity )   26:13/0/physics_layer_0/polygon_0/points    26:13/0/script    27:13/0 (   27:13/0/physics_layer_0/linear_velocity )   27:13/0/physics_layer_0/angular_velocity )   27:13/0/physics_layer_0/polygon_0/points    27:13/0/script    28:13/0 (   28:13/0/physics_layer_0/linear_velocity )   28:13/0/physics_layer_0/angular_velocity )   28:13/0/physics_layer_0/polygon_0/points    28:13/0/script    29:13/0 (   29:13/0/physics_layer_0/linear_velocity )   29:13/0/physics_layer_0/angular_velocity )   29:13/0/physics_layer_0/polygon_0/points    29:13/0/script    30:13/0 (   30:13/0/physics_layer_0/linear_velocity )   30:13/0/physics_layer_0/angular_velocity )   30:13/0/physics_layer_0/polygon_0/points    30:13/0/script    31:13/0 (   31:13/0/physics_layer_0/linear_velocity )   31:13/0/physics_layer_0/angular_velocity )   31:13/0/physics_layer_0/polygon_0/points    31:13/0/script    32:13/0 (   32:13/0/physics_layer_0/linear_velocity )   32:13/0/physics_layer_0/angular_velocity )   32:13/0/physics_layer_0/polygon_0/points    32:13/0/script    33:13/0 (   33:13/0/physics_layer_0/linear_velocity )   33:13/0/physics_layer_0/angular_velocity )   33:13/0/physics_layer_0/polygon_0/points    33:13/0/script    34:13/0 (   34:13/0/physics_layer_0/linear_velocity )   34:13/0/physics_layer_0/angular_velocity )   34:13/0/physics_layer_0/polygon_0/points    34:13/0/script    35:13/0 (   35:13/0/physics_layer_0/linear_velocity )   35:13/0/physics_layer_0/angular_velocity )   35:13/0/physics_layer_0/polygon_0/points    35:13/0/script    36:13/0 (   36:13/0/physics_layer_0/linear_velocity )   36:13/0/physics_layer_0/angular_velocity )   36:13/0/physics_layer_0/polygon_0/points    36:13/0/script    37:13/0 (   37:13/0/physics_layer_0/linear_velocity )   37:13/0/physics_layer_0/angular_velocity )   37:13/0/physics_layer_0/polygon_0/points    37:13/0/script    38:13/0 (   38:13/0/physics_layer_0/linear_velocity )   38:13/0/physics_layer_0/angular_velocity )   38:13/0/physics_layer_0/polygon_0/points    38:13/0/script    39:13/0 (   39:13/0/physics_layer_0/linear_velocity )   39:13/0/physics_layer_0/angular_velocity )   39:13/0/physics_layer_0/polygon_0/points    39:13/0/script    0:14/0 '   0:14/0/physics_layer_0/linear_velocity (   0:14/0/physics_layer_0/angular_velocity (   0:14/0/physics_layer_0/polygon_0/points    0:14/0/script    1:14/0 '   1:14/0/physics_layer_0/linear_velocity (   1:14/0/physics_layer_0/angular_velocity (   1:14/0/physics_layer_0/polygon_0/points    1:14/0/script    2:14/0 '   2:14/0/physics_layer_0/linear_velocity (   2:14/0/physics_layer_0/angular_velocity (   2:14/0/physics_layer_0/polygon_0/points    2:14/0/script    3:14/0 '   3:14/0/physics_layer_0/linear_velocity (   3:14/0/physics_layer_0/angular_velocity (   3:14/0/physics_layer_0/polygon_0/points    3:14/0/script    4:14/0 '   4:14/0/physics_layer_0/linear_velocity (   4:14/0/physics_layer_0/angular_velocity (   4:14/0/physics_layer_0/polygon_0/points    4:14/0/script    5:14/0 '   5:14/0/physics_layer_0/linear_velocity (   5:14/0/physics_layer_0/angular_velocity (   5:14/0/physics_layer_0/polygon_0/points    5:14/0/script    6:14/0 '   6:14/0/physics_layer_0/linear_velocity (   6:14/0/physics_layer_0/angular_velocity (   6:14/0/physics_layer_0/polygon_0/points    6:14/0/script    7:14/0 '   7:14/0/physics_layer_0/linear_velocity (   7:14/0/physics_layer_0/angular_velocity (   7:14/0/physics_layer_0/polygon_0/points    7:14/0/script    8:14/0 '   8:14/0/physics_layer_0/linear_velocity (   8:14/0/physics_layer_0/angular_velocity (   8:14/0/physics_layer_0/polygon_0/points    8:14/0/script    9:14/0 '   9:14/0/physics_layer_0/linear_velocity (   9:14/0/physics_layer_0/angular_velocity (   9:14/0/physics_layer_0/polygon_0/points    9:14/0/script    10:14/0 (   10:14/0/physics_layer_0/linear_velocity )   10:14/0/physics_layer_0/angular_velocity )   10:14/0/physics_layer_0/polygon_0/points    10:14/0/script    11:14/0 (   11:14/0/physics_layer_0/linear_velocity )   11:14/0/physics_layer_0/angular_velocity )   11:14/0/physics_layer_0/polygon_0/points    11:14/0/script    12:14/0 (   12:14/0/physics_layer_0/linear_velocity )   12:14/0/physics_layer_0/angular_velocity )   12:14/0/physics_layer_0/polygon_0/points    12:14/0/script    13:14/0 (   13:14/0/physics_layer_0/linear_velocity )   13:14/0/physics_layer_0/angular_velocity )   13:14/0/physics_layer_0/polygon_0/points    13:14/0/script    14:14/0 (   14:14/0/physics_layer_0/linear_velocity )   14:14/0/physics_layer_0/angular_velocity )   14:14/0/physics_layer_0/polygon_0/points    14:14/0/script    15:14/0 (   15:14/0/physics_layer_0/linear_velocity )   15:14/0/physics_layer_0/angular_velocity )   15:14/0/physics_layer_0/polygon_0/points    15:14/0/script    16:14/0 (   16:14/0/physics_layer_0/linear_velocity )   16:14/0/physics_layer_0/angular_velocity )   16:14/0/physics_layer_0/polygon_0/points    16:14/0/script    17:14/0 (   17:14/0/physics_layer_0/linear_velocity )   17:14/0/physics_layer_0/angular_velocity )   17:14/0/physics_layer_0/polygon_0/points    17:14/0/script    18:14/0 (   18:14/0/physics_layer_0/linear_velocity )   18:14/0/physics_layer_0/angular_velocity )   18:14/0/physics_layer_0/polygon_0/points    18:14/0/script    19:14/0 (   19:14/0/physics_layer_0/linear_velocity )   19:14/0/physics_layer_0/angular_velocity )   19:14/0/physics_layer_0/polygon_0/points    19:14/0/script    20:14/0 (   20:14/0/physics_layer_0/linear_velocity )   20:14/0/physics_layer_0/angular_velocity )   20:14/0/physics_layer_0/polygon_0/points    20:14/0/script    21:14/0 (   21:14/0/physics_layer_0/linear_velocity )   21:14/0/physics_layer_0/angular_velocity )   21:14/0/physics_layer_0/polygon_0/points    21:14/0/script    22:14/0 (   22:14/0/physics_layer_0/linear_velocity )   22:14/0/physics_layer_0/angular_velocity )   22:14/0/physics_layer_0/polygon_0/points    22:14/0/script    23:14/0 (   23:14/0/physics_layer_0/linear_velocity )   23:14/0/physics_layer_0/angular_velocity )   23:14/0/physics_layer_0/polygon_0/points    23:14/0/script    24:14/0 (   24:14/0/physics_layer_0/linear_velocity )   24:14/0/physics_layer_0/angular_velocity )   24:14/0/physics_layer_0/polygon_0/points    24:14/0/script    25:14/0 (   25:14/0/physics_layer_0/linear_velocity )   25:14/0/physics_layer_0/angular_velocity )   25:14/0/physics_layer_0/polygon_0/points    25:14/0/script    26:14/0 (   26:14/0/physics_layer_0/linear_velocity )   26:14/0/physics_layer_0/angular_velocity )   26:14/0/physics_layer_0/polygon_0/points    26:14/0/script    27:14/0 (   27:14/0/physics_layer_0/linear_velocity )   27:14/0/physics_layer_0/angular_velocity )   27:14/0/physics_layer_0/polygon_0/points    27:14/0/script    28:14/0 (   28:14/0/physics_layer_0/linear_velocity )   28:14/0/physics_layer_0/angular_velocity )   28:14/0/physics_layer_0/polygon_0/points    28:14/0/script    29:14/0 (   29:14/0/physics_layer_0/linear_velocity )   29:14/0/physics_layer_0/angular_velocity )   29:14/0/physics_layer_0/polygon_0/points    29:14/0/script    30:14/0 (   30:14/0/physics_layer_0/linear_velocity )   30:14/0/physics_layer_0/angular_velocity )   30:14/0/physics_layer_0/polygon_0/points    30:14/0/script    31:14/0 (   31:14/0/physics_layer_0/linear_velocity )   31:14/0/physics_layer_0/angular_velocity )   31:14/0/physics_layer_0/polygon_0/points    31:14/0/script    32:14/0 (   32:14/0/physics_layer_0/linear_velocity )   32:14/0/physics_layer_0/angular_velocity )   32:14/0/physics_layer_0/polygon_0/points    32:14/0/script    33:14/0 (   33:14/0/physics_layer_0/linear_velocity )   33:14/0/physics_layer_0/angular_velocity )   33:14/0/physics_layer_0/polygon_0/points    33:14/0/script    34:14/0 (   34:14/0/physics_layer_0/linear_velocity )   34:14/0/physics_layer_0/angular_velocity )   34:14/0/physics_layer_0/polygon_0/points    34:14/0/script    35:14/0 (   35:14/0/physics_layer_0/linear_velocity )   35:14/0/physics_layer_0/angular_velocity )   35:14/0/physics_layer_0/polygon_0/points    35:14/0/script    36:14/0 (   36:14/0/physics_layer_0/linear_velocity )   36:14/0/physics_layer_0/angular_velocity )   36:14/0/physics_layer_0/polygon_0/points    36:14/0/script    37:14/0 (   37:14/0/physics_layer_0/linear_velocity )   37:14/0/physics_layer_0/angular_velocity )   37:14/0/physics_layer_0/polygon_0/points    37:14/0/script    38:14/0 (   38:14/0/physics_layer_0/linear_velocity )   38:14/0/physics_layer_0/angular_velocity )   38:14/0/physics_layer_0/polygon_0/points    38:14/0/script    39:14/0 (   39:14/0/physics_layer_0/linear_velocity )   39:14/0/physics_layer_0/angular_velocity )   39:14/0/physics_layer_0/polygon_0/points    39:14/0/script    script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level 	   _bundled    
   Texture2D    res://resources/temp image.jpg #�Gu���   !   local://TileSetAtlasSource_mgwwd E,        local://TileSet_qh50a ��        local://PackedScene_nn0lf ��        TileSetAtlasSource �	                            
           	          
                   
                                        
                                        
                                        
                                        
                                         
           !          "      #          $   
           %          &      '          (   
           )          *      +          ,   
           -          .      /          0   
           1          2      3          4   
           5          6      7          8   
           9          :      ;          <   
           =          >      ?          @   
           A          B      C          D   
           E          F      G          H   
           I          J      K          L   
           M          N      O          P   
           Q          R      S          T   
           U          V      W          X   
           Y          Z      [          \   
           ]          ^      _          `   
           a          b      c          d   
           e          f      g          h   
           i          j      k          l   
           m          n      o          p   
           q          r      s          t   
           u          v      w          x   
           y          z      {          |   
           }          ~                �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �          �   
           �          �      �             
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k         l  
           m         n     o         p  
           q         r     s         t  
           u         v     w         x  
           y         z     {         |  
           }         ~              �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �            
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k         l  
           m         n     o         p  
           q         r     s         t  
           u         v     w         x  
           y         z     {         |  
           }         ~              �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �            
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k         l  
           m         n     o         p  
           q         r     s         t  
           u         v     w         x  
           y         z     {         |  
           }         ~              �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �            
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k         l  
           m         n     o         p  
           q         r     s         t  
           u         v     w         x  
           y         z     {         |  
           }         ~              �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �            
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k         l  
           m         n     o         p  
           q         r     s         t  
           u         v     w         x  
           y         z     {         |  
           }         ~              �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �            
                                    
                                    
           	         
                
                                    
                                    
                                    
                                    
                                     
           !         "     #         $  
           %         &     '         (  
           )         *     +         ,  
           -         .     /         0  
           1         2     3         4  
           5         6     7         8  
           9         :     ;         <  
           =         >     ?         @  
           A         B     C         D  
           E         F     G         H  
           I         J     K         L  
           M         N     O         P  
           Q         R     S         T  
           U         V     W         X  
           Y         Z     [         \  
           ]         ^     _         `  
           a         b     c         d  
           e         f     g         h  
           i         j     k         l  
           m         n     o         p  
           q         r     s         t  
           u         v     w         x  
           y         z     {         |  
           }         ~              �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�                 
                      %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A	     
           
                      %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
                     !  %         �   �   A   �   A   A   �   A"     #         $  
           %         &  %         �   �   A   �   A   A   �   A'     (         )  
           *         +  %         �   �   A   �   A   A   �   A,     -         .  
           /         0  %         �   �   A   �   A   A   �   A1     2         3  
           4         5  %         �   �   A   �   A   A   �   A6     7         8  
           9         :  %         �   �   A   �   A   A   �   A;     <         =  
           >         ?  %         �   �   A   �   A   A   �   A@     A         B  
           C         D  %         �   �   A   �   A   A   �   AE     F         G  
           H         I  %         �   �   A   �   A   A   �   AJ     K         L  
           M         N  %         �   �   A   �   A   A   �   AO     P         Q  
           R         S  %         �   �   A   �   A   A   �   AT     U         V  
           W         X  %         �   �   A   �   A   A   �   AY     Z         [  
           \         ]     ^         _  
           `         a     b         c  
           d         e     f         g  
           h         i     j         k  
           l         m     n         o  
           p         q     r         s  
           t         u     v         w  
           x         y     z         {  
           |         }     ~           
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �            %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
           	         
  %         �   �   A   �   A   A   �   A                
                      %         �   �   A   �   A   A   �   A                
                      %         �   @   A  @   A   A   �   A                
                      %         �   @   A  @   A   A   �   A                
                      %         �   @   A  @   A   A   �   A               !  
           "         #  %         �   @   A  @   A   A   �   A$     %         &  
           '         (  %         �   @   A  @   A   A   �   A)     *         +  
           ,         -  %         �   @   A  @   A   A   �   A.     /         0  
           1         2  %         �   @   A  @   A   A   �   A3     4         5  
           6         7  %         �   @   A  @   A   A   �   A8     9         :  
           ;         <  %         �   @   A  @   A   A   �   A=     >         ?  
           @         A  %         �   @   A  @   A   A   �   AB     C         D  
           E         F  %         �   @   A  @   A   A   �   AG     H         I  
           J         K  %         �   @   A  @   A   A   �   AL     M         N  
           O         P  %         �   @   A  @   A   A   �   AQ     R         S  
           T         U  %         �   @   A  @   A   A   �   AV     W         X  
           Y         Z  %         �   @   A  @   A   A   �   A[     \         ]  
           ^         _  %         �   @   A  @   A   A   �   A`     a         b  
           c         d  %         �   @   A  @   A   A   �   Ae     f         g  
           h         i  %         �   �   A   �   A   A   �   Aj     k         l  
           m         n  %         �   �   A   �   A   A   �   Ao     p         q  
           r         s  %         �   �   A   �   A   A   �   At     u         v  
           w         x  %         �   �   A   �   A   A   �   Ay     z         {  
           |         }  %         �   �   A   �   A   A   �   A~              �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A�     �         �  
           �         �  %         �   �   A   �   A   A   �   A 	     	         	  
           	         	  %         �   �   A   �   A   A   �   A	     	         	  
           	         		  %         �   �   A   �   A   A   �   A
	     	         	  
           	         	  %         �   �   A   �   A   A   �   A	     	         	  
           	         	  %         �   �   A   �   A   A   �   A	     	         	  
           	         	  %         �   �   A   �   A   A   �   A	     	         	  
           	         	  %         �   �   A   �   A   A   �   A	     	          	  
           !	         "	  %         �   �   A   �   A   A   �   A#	     $	         %	  
           &	         '	  %         �   �   A   �   A   A   �   A(	     )	         *	  
           +	         ,	  %         �   �   A   �   A   A   �   A-	     .	         /	  
           0	         1	  %         �   �   A   �   A   A   �   A2	     3	         4	  
           5	         6	  %         �   �   A   �   A   A   �   A7	     8	         9	  
           :	         ;	  %         �   �   A   �   A   A   �   A<	     =	         >	  
           ?	         @	  %         �   �   A   �   A   A   �   AA	     B	         C	  
           D	         E	  %         �   �   A   �   A   A   �   AF	     G	         H	  
           I	         J	  %         �   �   A   �   A   A   �   AK	     L	         M	  
           N	         O	  %         �   �   A   �   A   A   �   AP	     Q	         R	  
           S	         T	  %         �   �   A   �   A   A   �   AU	     V	         W	  
           X	         Y	  %         �   �   A   �   A   A   �   AZ	     [	         \	  
           ]	         ^	  %         �   �   A   �   A   A   �   A_	     `	         a	  
           b	         c	  %         �   �   A   �   A   A   �   Ad	     e	         f	  
           g	         h	  %         �   �   A   �   A   A   �   Ai	     j	         k	  
           l	         m	  %         �   �   A   �   A   A   �   An	     o	         p	  
           q	         r	  %         �   �   A   �   A   A   �   As	     t	         u	  
           v	         w	  %         �   �   A   �   A   A   �   Ax	     y	         z	  
           {	         |	  %         �   �   A   �   A   A   �   A}	     ~	         	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	         �	  
           �	         �	  %         �   �   A   �   A   A   �   A�	     �	        TileSet    �	        �	            �	        PackedScene    
     	         names "         test tile set 	   tile_set    format    TileMap    	   variants                            node_count             nodes        ��������       ����                          conn_count              conns               node_paths              editable_instances              version       �	     RSRC       extends Node

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
         extends Node2D

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
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://levels/lv_1.gd ��������   PackedScene    res://char/test_tile_set.tscn �$��x{�#   PackedScene    res://char/cat.tscn B<Oݿ�
   PackedScene    res://char/spike.tscn ��p)   PackedScene    res://char/camera.tscn d�H�f   PackedScene    res://char/portal.tscn 4��q�0mi      local://PackedScene_souh7          PackedScene          	         names "         lv1    script    Node2D    test tile set    layer_0/tile_data    cat 	   position    Spike    Spike2    Spike3    Spike4    Camera    portal    	   variants                              �  ����    
   ����       ����       ��         ��        ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����  	 
   ����  	    ����  	    ��    	    ��   	    ����  
 
   ����  
    ����  
    ��    
    ��   
    ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ����   
   ����      ����      ��        ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��       ��                                                                                                                                                                                                                                                       ����    
   ����       ����       ����       ����   
   ����      ����      ����      ����   
   ����      ����      ����      ����   
   ����      ����      ����      ����   
   ����      ����      ����      ����   
   ����      ����      ����      ����   
   ����      ����      ����        ��   
     ��        ��        ��       ��   
    ��       ��       ��       ��  	 
    ��  	     ��  	     ��  	     ��  
 
    ��  
     ��  
     ��  
     ��   
    ��       ��       ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��      	 ��   
   	 ��      	 ��      	 ��      
 ��   
   
 ��      
 ��      
 ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��       ��   
    ��       ��       ��      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����      ����               
     ��  ��         
     �  �B
     �A  �B
     @C  �B
     �C  �B         
     0A  ��         
    ��C ���      node_count    	         nodes     Q   ��������       ����                      ���                           ���                           ���                           ���                           ���	                           ���
            	               ���   
                        ���                         conn_count              conns               node_paths              editable_instances              version             RSRC       RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://char/camera.tscn d�H�f      local://PackedScene_l6hoa          PackedScene          	         names "         main    Node2D    Camera 	   position    	   variants                 
     �?  ��      node_count             nodes        ��������       ����                ���                          conn_count              conns               node_paths              editable_instances              version             RSRC      GST2              ����                          �   RIFF~   WEBPVP8Lq   /�0��?��"�G���&�$Gi��{Q��>���>U�k ����,
a����MB3��������^K�hܻ}�/�
�4Q��Q�y7�{g�o�\���DD���\   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c5vjm2fdnwsct"
path="res://.godot/imported/ghost.png-bdd09babe42000e97c59abe75c1d72f9.ctex"
metadata={
"vram_texture": false
}
               GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c5ld67rbh2ge1"
path="res://.godot/imported/icon.svg-60a93a01b332c0a9192782f1380f6837.ctex"
metadata={
"vram_texture": false
}
                GST2   �   �      ����               � �        v  RIFFn  WEBPVP8La  /��1 H�Wk9!A�W�w�@ �s��?��@���m�eA0�@�O�	�շ���̒UI?��s"�?�-="�m [�|���,#H��Fl��gm�>�:^e�3𒲯?2�*��(�����A[�>�����hy>&nZ�=[���Rی����F��c�ۀ�.:f�����xF�c��+���t,��|P�H���F�����R��A�s��9~��:���S	���MAs<c��:�&�{���JR�[I�ب k����,��j�c���3躮�3��Jϩ]�8Ȇp%)ţ�k*s�Y	�!I�Qj��%���@Ǽd6�b�GlS�8�F@�5T�,3K3�� �( ��وx+�+^   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bv2vv6b0fj1dj"
path="res://.godot/imported/portal.png-2293740231ed86093ecf43d7ac121768.ctex"
metadata={
"vram_texture": false
}
              GST2              ����                          �   RIFF�   WEBPVP8L�   /�7@�mS��_��6u����n m���c�/ (�� �?T���ض����� ��[+ؿO��� L��Qx�� V��r��OUO�UV↖Ԗ�S��u��J�\9q<ʔ=?T��<�� [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://jhgswqh2poq"
path="res://.godot/imported/sox.png-7a0f4b52fb5b502006906fbcd3af5ce7.ctex"
metadata={
"vram_texture": false
}
   GST2   (   d      ����               ( d        �   RIFF�   WEBPVP8L�   /'�'� m���tǪ�������OA�L���=A���`����M�
�UAF�O*=���	8n��#y9 �=�����3�.r���Y�Kh���Qk��EKhn<yjD�4�'C��o�Q����=h�qg�
p�u��1:8(p�։f�5k'�،��u+�Dl�"����       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cl08hg4t12xbj"
path="res://.godot/imported/spike.png-d070d466fc4b19388d9d4c9869d2383e.ctex"
metadata={
"vram_texture": false
}
               GST2   �  �      ����               ��        >� RIFF6� WEBPVP8L)� /�; �0j�H��{��	��a���l[i�4j�jI�i�U�}��^́n�S���Zv��C�������w�#�q#I�����c���,��v0��Wض2fx����HFFH��	I$#R!"�����$ ����q'�.��� ���Ȟ=�AT�pG� @d��
� ���	�����#F�x2"� �(h�FZ��?�{0D�$	���L�-I�=�BgFmA��Q�[Xlw����T�Ш΃�5����_߶���}��1Y�َC8)m+��s�N>ϋ�������q�2�k�q�2� Y�}�"O�l˶$I�}���,�{��?�"
u����˳@I�$I�� �HD�<r����}qW&�fx�����������˟5�16M��*�ھ�m��m�涻W{�&U�3����3��� �޾%I�$I�-d�욧��O�K�*��$ɒ$ɶP�<�j���������n���m#E˼�^o�~�}�?E����ADf53��^(���l{�af��G���|����a�h@#iq3sWWWefD�~בz�ƾ�ַm;�$I�50���_�o���]��n�*���$I�$I����5�������:]n,Q�����s{ZN�<����v�؋�|�����^��%�e��n2̓2N��e��$�4��vJf�-�Y��̰��������Է$I�$I��,�}Y���̙Y��p�-I�%I�m��XTu�<���˵��K�K8pI�����^�~�m�Ine��y1"�8������%��-�^8�3�|������8�%K���\�̙���۶%I�$I:p��E�"���/+�̄��n�H� 嬞��?�f��"�m @�il���LI ���n[_��������}sww��ޭ뺴�tK� !	7 :3g�9�m[�$I�� D�,"�1���{����L� �%I�$I�-dVs�����O^ץ���L$b���   ��(��0�aH�  `  ����Sp3� 5� �
F.S ��70���E�)�0���#p5�
�� �^HEX�-0�E��"�U4B`"�C/�"j�] ��f�
�J��+���U�AĀ�j����U�S� ��L�@��#g��	 
��:,H �A��b\	
�[��܁(�#�Q�jIf�}<����Ua�,D'���0����8��C��)�Y`��F��!��D
]�do��ft��"��$=��i2�I[V+�l�Ă�!H��A��}��b|b�8��?�G�I�5bIf�%'�k\���p���/5�:oF1F\-�P�Y�)��8Ӽ��k�5   b��!��8@��+gHMs  @  ���k�(�D��R�1t�$����J����{�nL�T-5�[�
�I`AP�j�RIk��p�|,��`�`<I���  `��)�Aw�C�EA��~��f��<
���F�]��;E� Џ��/��/����^; �n�XA�
�ՠe���+j��jA�W�J�ڦՂ+�@���=`�x"œl�-=�&5��\\�b��RTFAs8�61	��R��ڒ�2��@�c(i,������c��P��X� H�-
A,������0[vI���A�-P�'�@�.�� -Wc�p��Y�y�E6��n ����`1(|R4&0 ���X0
&��N����E�C�aT9�u}F&��T|�oP �  �E� 8h�p4IB���P$�ߙ v���@�@�0(B�G=^
���g�Fi� 
�q�� �����(������"1`��(!s6�t���%��Rg�#��i, ��p���lU.� �)
�G�T���`�kv6"��*�@�<�n�[!Fc��2��m����C�ϳERd��C�g��bA� %B���a
YvyH��]H	A  R⿍����1 �Y���|��(��t��j ����y  G`�H�]"��Qdxd�����ߣ#�bpQ`b،s�� �8"P a��9KJ	��00��@PP,��o�3D@Q����" � `�����Q�CS�� (
!(�?�&0P� C�c`UA�X2�����$$�O�3B"�<�e��06�@��b�Q*�(a����	8�bP N� �h�ZI�@�0�C08� ����)��~�n�,=\���"�, Ƃ,�+S����X��ܓO)9jG�o"(��	�{��NO�(~G_D�b0
����1eR1�/9��N@�`����>/�Ϥ�{3㭯����� X� ,vrl�DpUX��L|4> ��M�P �w( �`�� �ī <��i �8�   (T�$�~w@`@��Rc�
1��0F�u} [01���Q+�� P����V&"&����`�xX�X����!e��4N��\�0A2�<h�C���)%�|�;L��� ���x2�擦
�c�~�XC(\(sz���A)c���D��
p��B�"?dY�h�B�ϣ��*����0���� ��]I����0�$�T-�b~��Y�]x�bz�. �q���=��  [1d�R���*8��T�� ! +���( ��C,����D0�@x�1꘰ �b'!�"�?�f˘�E��aM	�����;G���`�ł u,e�U���!���3U�"��`|��b.�1�֠�I���4�V��1,������V@-H@	�Q%�{ ՒP� u�� B��\ PP� �1�ڀ�v^s�Qf��Ϧ�ر� ��{��~%b�H|r�֗��O�.^*4�F�,�V�d֤���*��STA>q��aZ�ĺˣfX��3y�S��VA  ���4�fR�9�GSd��AA5_U����   �*T1<}�.I` �M�Q��g�
j�x�.T@
���,��H�`Ę�����wjgœxG�X@�O$ڈ�Ye��uΤB���6�`����Z�0�.��	�|L���$��㴩3��JY��Ł��qD��s�e�c���l���� l �?P�4C#Er�=2�kDȔ�& �A ���� �  htYd��	�����ws�ΰ�a�O�|���,�9�eZ>�r\NJJ�%3�Xb�S��s��|c@����X �	 �2�Cc ~jv �@@s�|���2P;�HgL@�:J+D	�������	�P�E�tH�A%� ��P� hTv�Ǚ�x ��](�H,��bp�8\� ,���X,N��	��R #�NJ1B	�&y�	w��`_�� M�K���<	���W%#I��pO���X5� p�]��x�XA��]��c�/rC0�]d �� lS�]�Z�zd�o���a���Dv� �p5	UA�� `A�#kH$���� ��<�6�� K��"��nq���P0�
w�벜��APr0�Q ��\��a��b�i1�a�8(�U8����M�U� , ��'�G!H�vԨQ@@�>\�5�*� ���>� @ �ǡ�|LD �����w���  4 DQ�g �lEA��:)
��Kݒ��s��֬o1��P�*EJ��AcA-�� XeH��8T-��2Zr�[�6$d$��!�%��|��A.!��2'��9>�*GLr�%n2d�-����7vW��˕�H�
(�e�Ĝ/�އ��b!���7+��X1%N��y̺�w�6��r3Q9����  ,�Rb�#<FRQ��Ș��m�d�2*�@f�''l�:��l�1K�緋Χ��C������ S�,w�
%�@���䋬E��R G�L�hL��%�@s��  ��B��4Gⓓ�	e�Ǯ>^�F%S*�.VX�h1�E"	�V�U$���|7�z�,��Cm�ǤcEQb4��X��f��B ��+Q��@DU@@P���@Q A  2R<�ag�pb$KI�:- 4���9,bAX(.
��%���Ƥ��.7���.�ʉ����_289�Z4E�$�V�Baj�K
C�8�'�� ��D�J���6\��nna�5J�]*�8�M.u�l쎱(|2�Ү�DD�[�RQ!V1���䚈U�02(ǝ3���m����]KN�΅+��d��xw>�q��}~{��	��)�A���h��x���-���Х @�PE␰�|P]�(�<��yNH,op�tI�'ZGX�8����h�7�#���d e$y! �3���t\�%֢�������Cu�M�q�ٵ�0�B�M����)w�����e�ux���%mY�`����   ���CXA��P���	�u7��y	 �a  @� <���(��M5 E @	 �H�)��-�e�D4a��1-FH,�pL�(`CNJ�\�:�(e��p�P�>1�R��e�=j��r��v)?��}|JZ	NdM�e �'<���D��K<�Ms�%�>�T�2b�TS���{
 ������>/�B��	`�����)�:{z�=e�K��#^�JLx�)ݥP)2�  �U���+��1ha��1�F�ƻ9+�Ê����2���:�	���m01o����)`a��C,3L�!-��OF�P,.� X1#W%9S��5�a�=�0RBĆ�����vY��W�(^P��%l�`��_���9$#1�>���>630��0G棸��ZD  A���K/S|,� � �k�"c}��� (�  B �QFA �P�`"G�<2b�Y����P0[�K� >�2�&��%TiRH2�Ƞp I��%�6�h�X�).
��A�� ��� �:Sl�@��4��>IRBFP���-g�-���#S,U3�X�fD���L���u ^��0 �'�`1��A`�dXr�Hr�q��C`A� V%W��5��V�P(�D<��h>���W��c1Ѥ�UCr�7y�2@BJA�!|L���+�
��|�π�8�C1��!��\���1dE�p��{p���HL@�����1����ɽ7��z&F�"���
�" 9JN+��D�GG��A� *P��G� � ��E"��s(�10��(ﵕ�� �p�@M R�A �� J @ �� -S^jŃP@�B�%��T}�VC�����Q��@�Q�A��Н�%��)�U��w@�
�Yr<	�N[�F$YMs�T���@]J���} �����e�����u�����@+Ha��:W,P�S�u�PFZ`	���HKlrMD�C��dH�:�����}�1��dH����I<� `,vAAZ��^�
����U qH�rx�����j�d�B����ɡb�Jn�a�"j����N�%X� E�A\s,�aJ Cb�*C�5���N���!7��.Sf�<l)��C���� ;���v��^�UGb��n$%<�� �C7�9J���c��B:Z��'%�gK�>%��%>>� ��0C ��1��  � �?�F eb)��\���AF E�k󬈥̘�e�4��&C
t�3�e�5h��h�)-��bJ�1UfT��p�~6�4k��]e���.�r��z��l����%�)�p��ҭ-��N�:�\�S�8����&+l��eN��#��y��m��a�#&8f�
E�i����l�R&Ӈ�RN�9^�~ͫ�gn�����ۻ㲦{|Z��S^l��zʦ��>f�mnx�k���c^fo��%w��-���wy��"���'-�B�5�2Y��Q ��� � W"��nV�x�����'(u�(b����� 9�1k��=��b��~ͫ<%���0� �B��``E�a�p2���q7�p9��RoL�#wFZ�����P�<g�� Mbn�8<�'�-�R��t��Ԓ�hD�eQ�\�G� J��I��u���� �(B�# ��A��B@�"��P�� �# ���ZU1 ��X�Qᒐ#
�'U.�pH�c� �p�T����g�8��1EN��S��48��>M�����6{l�x��rJѝ�b�J;kMڶ����O��~�e�� �p��<0ϻ����*7y�k\�c�����.k�r�=n��,qC{z1w�g/��ݫ��^�C����U~���*?�>�e~���n�
y��f�}�x�K��*��������8�.�y�_����/�� B�^�PF�^� �h0Zuܑ�Pbcn1eN��e���(�K���Ũ��;љu��Q�)�@� �bx53l�iR8xx�� %����@���"�9�2a��E(ף&��6O�'GI��\\,eP�$>h�D�U��UJ��9��+�J�.2��͉>�[�  �0Gxa�8@J��� �@���9�G��� H��8�� >�
����ZP�@ �L�� �  D�E�(@t�b43e:�0UW���2:Q��(�zud��9�	���*#�2F�B�A����%\��Ǒ��!�Z�0�v2ֶ(�#F�Ijēv;�1�dXm-3�I�m��1�)YsBU�۾öL�5fH\��F��`H�Ez,0I�
m-Qd��v5�g�r�HB}-0��\o��*s&ԙR�K�5 ���(�>�CwB�0'��O� 4�J�CK�6��`Wy�e�m�,x�*���t���=�./&3@������b��
7�/�VP��<�%QDr�|�p (���ޞ����������Z�#�L�S���)�D��G��v*�{�OU�Yۮ�����{������1�&�������=��h[c&p]=��   �v�U^�7� U�A�0���h�������2�R@x�R@ �P<%@�f��Γ��yp�G�^i��'��y�=���I�aePeU�Jʪ�� QDQY����	���J ���p@��� �Bp}�����F%�q��g��r��c  t(� @@��]{~�W!��,V��F�E�������R�j�Z�����s�\�W�ކw�	F�m���λmE+kE�R�
�l���v���1���"c��~7�-�;_����_��.�0=�X�}zD?��c��h�]��(p�/���4 ��h���$�v�=�����{y�:�Q�Ҭ�*
��@s�6U��sM��tqЊc���;�ԭ��鶈}�	(��jЌ5����B^	�-r|.��pR�j�mk|��R_�l������6�Fp�������r�2R&0��m�Y_�+�q[N�?��O��d�P�+�q1u�HDM�kM����0�r����JՈE������!���0m�����K���6��ÑL�Š����v���=;[��./H1)G3Z�H�"�H�Wً��J��V�- `P��8� � 
a 
sMR�W$49Ua P�)�>�L Q��!�`b%�*�VИ��9<���x4�GR � ���
 � 0�
�	���L���a@Q>������+� � !   ���=X
C �>qP P�A�!  ��10�'`ޫҀ*D�"$g��Ǆ>�������v���}7�n���z�{z�S�3f>g�raǭ�9i�R����1 ���w��^�jy�G��Mr`��C����O#����p	�\�A�%���V�%��4�~>I��J"�cȅi��[?ٳ�{=߃�A�@0��0��X�,3Y�`E��P�:e����2?k�f��*�LÈ邠Hw1��AX�0R���J%�Ύr�-�9M�D�j.�Ζ!��r滜-�qmp˅�t��E�����s���f&�
�*�JB����Ơ��C6Sr����)Ữ��\�>2xd-�2g�bc��F���׎T���r�u���B�6k�a֥��:s��,�W[A8�7�A.�=�(�6�q	( "(C ����<�QP 2���*���j�E�:�����x�g�V�A1 �cxzH���A�X��,���;0ڡ%�Qt;E E� ���LQE���#'!�~� �U �g]C��6�!  P~�� �A@Q�aw� @(
�@2 �z�� o+A���"��-�w�\u�UW��V�W�F���0����q�� ��{#n������ (>�z�/�<RtR�K0gB3 %X4��0B��h�P �d�%�	�ba�lb1<Fx ~�r��,- �NY�#����ߪ�HQ8h0����[�!؝ƀ� p,�^B(L�J��]�ݘچ('�Y��U��(����`0
�&]8���,������5o��C��1w䚐�r&x0�`r�� �AQE��� �+�OEBHΒ3�HX�8.�dxy�=�q���a�\�9$���2�U���5w銧Fr�;RJzN@��9���SP3��%o,?"�e��� �Q*3��]�%�{�P�
^o�,�`�( �L��n��� Y����0&.HD7O@B <�"A  P� ���h�(��Ļ"��]nB�4L��``H�(��:_� ����sR<��\?�0���t �	 ��k
 �� ��"(� �  �\۪L   
�D!7�Q E�(@FA4�D)���R�SQ@�Q��FR�u��p4�A��`.�P�k}sߒ�^L�RJ��4�'��ƹ���bUY A�� ��X(~���2 � �� A���=��QH8�XfH����39d��a��Y8)~��Q!�aa#�a�D�`���.3=�l��Y���0`A��#��ĀHH��� �(��}2؏F~_�Q�:��M�̞j�`D��&�YD���(dDc�T3�ɚ�O|-V�h��&n����>��,N�����6J�m[.�@Q�p��*�L�4����SAc������,�f,2�H(�"�2)�v.9erH,���=�n-g��S4��[�мOD/]��	r��l0	�a����X  @  (��#x�=�� F�`�[$� �#�����
�2�'Q� !8F08"��7�� ��0	eY�P�2~/��kl ��T��G���%Ee�aU��&]�� ���;��W�D0�!�@ P� rD D��    �gF6�GA� 0Ċ 9 L	�@� �eHY��]�d�C��^�u�D�:�=�ڶ�^7W���Q7���9c:�#���:Q��P9	���I�)p���
�b_�0Z)���1P4�TB�P��DB����$C�( Q���C<I�S���B{�ۋf���6�j�oJL��T�fF�`\!�4��5�	;Dl�p��5�.#��1����h8�lu���+�Ww���%f<���Qu�/HA#�i�y��'i.rHnhU*��ȶ�2�_�~�+ջˏi�)��� ��q�Q�V��!��EX����1�W�)��H�<��%�|���:���3�m��:��E�s�pp���O��+'�e�N,��*��p�`� u;2��L
�K�DD%r� �a DA �Q�����N��� �Q$�`9߅�(���g`P  	r�H�c�@������U��Fic  �  a�rMG�u�O�9�s<M�"�BA P>�*@@�V (! �<
B ���(  
� � � �'R  G!@"� ,��Dp���U��1k��QQ]��er�h�z�E�+��� UM(-�ej2�]Y�s6�f�6�tY�K�i�R�m��q�}�:���СʄD�I��`�SJ`�X��"G3�/FSR4���df@�z!�<�&z�=�GƏ�Oh�̕�d@�����EN�ХA���Sz�/�%ҥn�}�>��)/uT��@��Y�cv�op�� @s�j���7a�!�]���|�Oש<U_F���1�._ws{H��Л��x7�ڻ���8����u�� ��nsB�-���*xĖ���3�O��O��t����%`r�i,��(F|&�i�p�1¾@�/H�!�����_����$�yO�4�*&�r�������aFiC\�c顤��S&+U�KUEUEEAY�&Zֲ�\��)j�Sc פ (B�1AR<��.@�U袎�LqA!!Q�ǘ�K/I@�'!��� Q��i+� |4D=Eu��
��*	}ZR�LAK��%ģ���H�� |����	<1� 
B(D@ �������D�D@� �aE��AQD A5�!I8uh� ��|�㢑 �,�U��\�Z�����Q�3�I}�>|���G���O����?�=O�84ϓr�VB�=_8_B�+.$���*!�-!Ń�kgG�x8��$P�l�@��KQqc�14��&?���+%[X('Z	�O���8�B�:`W, ��+�xh0.	bB�� q�i�(����\y7�E���6i����d�`�KBB�U r��&3Zo��h7��F�q��v�tg���-��:m�:��U ΅��pb!8�D��h" 挥	��`���>MD/���(t�Y#�M��K(�p.�vO�P������]������OmY���O��"��AQG�2��(��hmG;�  ��cZ�  U ���J���% f�-����nT x�� � 1�*�G�Q@qXQ�,� <���xP�5�:�q<!��G�G4(��K�`<q<H�=�!V T�� (�;@�8^��  @ EP"  �( � � (�9 �(   C(�BQ�0HN�6��x E�(FUU$JЮ�bHaCSR�X��eN�A�0��ĐCB���u�dq����I�$�8��՜�xҕP�A��������*��`R p8c���Q1kTpi�d�c�n�*q�f�.	��<�S�� #�sF__��Ea8�m���<N���6EI�&mƶ�hG�ʈ:G�� �ƺ�%	�#�zhܢH�Kn%��@��}�Ҧ e�|F<���0Ȏf�kq"�
���ty�����k[�l�iN�����d$5��~��L:���Dl�oی��>����s6�R�[��������=6sN�5z,�k^e�e�zi��d3�H�8g�dKYbo"6�l��P�a�#'\��l����ⲝ�k�T��3�@�q��f��ۺ���qpm�N��A1���V�Q�JT�Ũ�U�V)�;Uƃ��6�bE��_� �"�x,�R"#�>�� �����G�0��Ńti D�)�=T����B E�,JQ�c�x%&��B"*�:e-k=�Y%zD!~4ф8��:�xO�c�Kn���P�p�@@ ��H*���G�-c@<� U!��R,��M(��@ E��u��?�r��FOAA Aa A��� @�IHA���(��a��B4!�@��D�n�j�P`"x1Ka��JIz0��KI�LY�^�J:UT�괺5��:��/^�	�밌 Xz�4劮ǲ��ޭpӘ*XC�؆��ڠ'�=V�p�9x��]�uH�I���^� 7g�I��QDq��(!�LG��<e�����ʻ�b��d��)��;�P�k4�]~E����9&\�3� 0�q�ˇT^+��7n��eBu)�~�"���x�&�ܳ^sG����@.��!����X`�%�,<O����Q�i)�lD�El����v�h��Z% �'�e�"	9�"+�#-n��A�iSGÖ����:]*����S_͈J	�rDE����L+�X&4Q�r���+ ����/h���mm�Mۈ�<��]&�ct��Hi �� X��� "FP5��CҨ��*�ÁZ�Մ �i#Q��\��k; @�2H��!�iB�x��(X���E+ZBP��0�e�,�j/��&�%G:π���`<L@�9W/�ӊ%R��*ICb��� ��x�R<O0O�b>��	Q�xV��GG�1X���z�m�"�"�Q$�Y"�A��b)�P� �-(
�(���E �� �B D0��(�)≉��WQK�A:��h�@�jIZt�O� cy�Z����C�0�$�f��d�y$ .s�B�EV�D�(ҙy���AˍYb`�2���=�->��[DBה�n�N�-�L����Hp�)r�<ɠ_R��C�q>���]b��&�-,�>%<j<f�KF�LegɧN��a1<b�Àe�0�`a�PLX$c��T���A�4D0&@2w#j<�'�qE�W٣�)V��ƙ9J��w깢F�Y{e�X��G����n�� PVy1;rDU粣��6���ܞ�\�
d�Si��}�ŧC ��k�c6��>^9��f��p�x�e�[�FV�r:ڈ�`�y$�����y6M�)3g�+)Ҧ@�}�w�^-�����}��mN�-�;�-�"�eC�<G��:�<�2I������O�?�����4O<O�<������5���t͓R�#�1�J7�V�S�9�x������zbK�zr��C\t��ҡݍ����3џ��(����|� �r��1��Χџ���q�W�D' ��M�Q���&ڢno��y�n״>�l��w��)M��@�{�7�����gxZ�'�yL��]L���nQ�U�X ���rM���"<��a�\\�GJ	%�2)^�a�e���]���(B ` �����ly���\#� �3z 0��K�b   v��hL7��qJC�q U�d�a��n��_I� �j���D��DU��B��p�Z�*����k�V3���@{7�ӛS$���Q/�+�U$���P���0�cT��!B�po��2�a6����p�;4%���~IB\�¸�MERD����L��q�9sə�:jɘ���u�l8H�Z�>Ӏ1�
��h�c�r���K��bM���H "�N����u$���j�Ȍ/7^G�pLܧ�t/�4t˪��2�M-�H��Ph�(eD��tw�v�V�B����z`��L���HE�C(8>B�TI���q��D˙��c�Ķ���S��Rn1M��'# H����DƗ	���)u�Q�Q�a��=oC�p��P�&��(	�P�"&�2��^qŀ�#���s������i�׊vHa(�Iqr������%()%�H8� MAm3���$�h�jă�kC�K�h$�p�EP S�Q�MK�蕶��61�x��3P��W���^�B<�W������c�aHTa��+� B( �(� �1�E!DQ�2�0F�f�cUHɘ�ҐA�~����)�\k@>�e @��ז��``� �0!(" L@q � � O�+N	��$����4�d F���u1�P�V
��bex����r(.I	��5�%���L}��;�"}�J|Kz�M
���#!p�R`�5�	IՈ4Ҍ�#�DP$��j�ǈ<-X �!�bP���N�M��6�;iVe�TZ��:��jQ4:��28E�E�$8*ŭ��������#>���:�5&x�Zߝ@���0I�̭��눮ؓo=)r#�y���x�8�hY�gR�>Ŝ�X:uJ)G4�P���"ϴys��o4�'�+rX�]�����R����\��55Q�1M.��cji0��#��S!Ja�O�vW�o׭��y�-�L=��]єi�L_k<�,74�S�}�)��j���Ss�.�9!D�ѲD�Қt���!�=#K�9��,�D��H�ִO[�Ѻ����	�M�2�E�Eb�1�Ȇ���yк]8��(ҦI�%U�H�id@[�
�u��(Dm�Mqg�ȅy`�"�Z�_/0ڂH�PU�	\�T�>"� G6�A������ZU����TETqt ��(�b<�M���C�GD� � �;Ň�5��JD�őD�2�,)��&l	����N�` \K����k�_��@ �# C(
�\ P�@Z(%��w!<-��kR!u�C�4l����jO���ּ�Tn}�k��&����rm+ҩZ��#%:S���Bw3�:P�DM&��U`�kW���=\#4S��5��7kI�>%Z��a���Xg�n[��d�-9����N?�P�HCӒi��Utz�B��M�k�]����j�!���ԉq��HwWH��s������-�����M�Y�V�&4�PgJQ�m���]�����Jӄ�Q]�qj�zww/0RVE���u��E�]�:',٘"sZ��m�	�I�@ǭ�,�ƶhR!��;� ������k��u��K�ڬб"	!#�LY��v�\Q�F���t���ʆl��x���eI�n�1M:���w9g�6��\�(�`�����N�[qǼ��59�d�E$�Q�A5� �U��!©S`�2H�fQ��MqĀu��D���1�����Y��a
�����8�@ �XJ(����F�&m��K�s���@D#1�%�>(���h�biC�Ƙ�졥�FV�������8$&V/�7Ԩ�G5(AX�@K�W4�cSM<����8
@�� פzm iT. A�x �����!A�Sׇ!f0�")ڐ��� �r���8|͕��8����0\��a�@ A  &Ł
��C'�v��H�5��<��	q��F��jS�65�3}{]�a/�`��6�he>�e.x�G,q�"}�LSe�-�ZaTo@|�[{0M�Y�:}��̐�l&@�8��KR`��h��M��A[#�8�D�W�#�	�T���.�9͌]�ݻ�ŵ�����d&u�Y�Х�1�b�#�8���C>�s�L�ś��HVlҩQ���X�OH���%�9a�;�}����)��;ډq��3!��θYG���vQ+*luc�v�o9�;*=4v'�WC��H!��r�|w��LkMzZX�Z��f�E �Z��XC(4W2 C����sJ��}���v��+�ls�GE��Ec0�ņc����^
�e.f���*�{���6=.��P�9�l� b���8PRUP�
���>�G/��(А����@<�j�Q������J��p[V`�e�K ��W�:Ӧ�W�h#����T�Sv�1�hD�MJ��(S���!��Å�8�$���Ԉ�qt��T&��e�cB<���A<$�
�"hQ'M�DM�P,��*" P��� @� ( @��"(��Q< @PA�H��E�f��
�	��K�t��H0D0�G�@ � ��#ĳ^ �� � ��8<
A( �0	���! ��A0�s�i�"��QpJ�C8��UX�dK�jY�u�A��L3�Eݭ_QS_1��on�5�H�7�b"�XA��T�(�v1B��2p����s�{^�=}(sŚ!�I�P���h�h|J���ĩ��A�.Z I�>@H�sM�'B�Ym���E����i��t��Go1ٞ@r�x"��K�%��"w���{T;���h[�����S'd.z"�b�HLc�dRĈ&)����D/�܍<f)�T�R�X'c��ܹ��ɶȠm��&���bw�����]�m�3�/�v��ݵ�ڵ����޻�c{-�ڒk6�f�+6�R6��E�a�Cֹb�6K\��w8f�sݠݲ�X���@�nq���"X��=��U=g�s�8f�kV8ߖ����H�si��==�ES�f�fr?�"xrL�m�}i��*ֱ@BU�Ia&P�h7�SA,>�`����C�!�؝�owJ�E�!�8a�Ҏ��.Ő���
J�A�[s}V��nR�%vY�B��j4WP�0�r���a��1�'Eq�d��HIcr�`t�r����.rm3�&&@0�G��"���ePP���p�%Ɛ�"E�H�" �Bd���<��\���@��"�A"-iIeU�5�\�zx\�� �� � ��A&A�r�AP� 1�@ `��)`@O��M�����Qk�נ�~�������E^T��ԨV���_��5���g�US�* (D�:��U��6��V}�)�\�U�X��{�=�\c�#eի	:$2�D�2?ђP|I�"A��ě��T#1���rq���P�5-��z�ӑ���]�rm
�X���'�E`^��Z�IN�!+����+ڤX�hw������,��L�ZZ"?���c|}����޻�����&�T�H��s:t�׹eeI6j�F���m��]�2'���DS�p�Y�a�����>f�5���`~D�FJUǭ6잊w�e�K��La�h��#�p�Yt^68�[���1�p���ns�λ����D�?l����ҭ�9>s)�l��mN���9d�3�9eW.h�6�z����m�ԫ'T��ˡ�J��-��=ׄ�O����לy�wv�=9_���k��~ �����Jt�TR�j��?O�m���E��y:��$p��f�m߈��O����D��P��B~)��ߐ_�/�5�A��|n��췹_����i~��o��y~��J����8�R����Z�!,�)%(��i�ï��������|��;=o�+|E����
���O��%[����Z��b߁�7�o���$w�мk�Gf<���   @ @�� � x  ���dL��1A �Q���pMQ � #(�"0�8��>�\� �!���H��K��Q,nDx5P��E�`��M
�@@���������p& �����{��X
|O.x~�y�Ǣ�&5�\Q/Q{�a�JUAC�#���oFӤ2��[��|S=�����}_�	h�����@X�@A~�+AA��X B��fq�:����H4 �]؁�L���e $Ap����EBP�ԝA��Fd�8)��8�´<��W�Y؟�UG^�,�HFE��#�&P��pv P�W�� �e��č�2��Z���c��	����W���sc@���(��82r�Y�kP���L󞜔\:U��k]��pQĸuq�%HpP�"ҭ�H@@b���K�(�^����le"Pl�+
(��@8À�
Ƃ� ���;�pF�e-����%�/M�Pa"���UB$'�|g�a� ��3Eɪ��y����KX�]��v����Z�(�m���Rq#���3���( g�$�R�L��0薀0�&�0�JM���%�&)$�UIC�  `h   �1���à�	�;9�g���x �x�D�p1z��ReV5|����X�L�� ��5{���LYk�a��!F��H�hG��(��� ( A>ĸ���@<B�UP�@ �  �� h �( � 
(���> � � ���C�ZTq�vW�`��#rd�@��1P �DG{q� Q�;DL@Z��bP# $�R��'����$$ ǂ�`AP�	�RJ���۾&��T�*�<|�Ajи
e�����ґx'3�X/�Q�!��pK�\�P;��v.�桾��^zp9�V���;,.X$f�jШ�B`P", ��������:�X�` �L�c����S��&��{=�s.Z�qVp�eȕ=X���� �XX r&�X����}P�p��;���a��t?|����7���v�c�}����߃�g�d��uD-;��7�&�$�B�$"$u[���z�:S�pM�&8������mX N�Me�H�H��jY�*}Y�H:�c\'�/4����C ��#p��%����v
���$�ڄ궎2���v9���=����0x����1 ,СE�t-�l=�0�Ļrb��v��PJ�V������첦�R5J��\�J�kI��uG��4$AW��:@k�RyP�ԁ��ƨ����%������aH P���(�P�3�g�v5�]�Z�<@̔�"�UR�<F���8�~`��q���6j�w��HL�	�=6%"���@\ҧ��r����}�� �2� ��IXLJ (! ���W=�!� ��.�} ��h�D"O��d�
����-C��zU�5 ���*��Ҁ��G(E��vm�)b�CBo�@�W�>�ڑ=�w�����(��)��6@�����(�0`k��&!�?�U0μ �|��TK�ՁZ��B�����J�S�i�p��=� �`x� �B�A`0U$9��l�(t1
���`%�� 0�2��bCTfR�;0p�$}mTA �ȀVzj>�V�#4B��&7]U0f�8�0���,�L�'�|�w������5�{ﴁ�0(P>����F��u��Q$��y)(P,Tw��S!�@p� AA�0B


)h��!#��94( q�ٸ�b[)!H��V��	J�PD18\X$�1,�&�gJ�h	���
�rO��=Wma���F�8����a�l&��3���4-�\
˙��l[M!`!cr��v�Uݠ/���-P��+�Bth��yE��-	�h�1W�PiWS}�#��dj��J��JF�� 
M�1�;'Qp'f�P�iٕ]Q&�6�@�1@FN!�D�+l�qDJ�O@+�Y( XE�*��������D�	�Q
��~�P�G��t�} �D�vv�3 F�C���� %�0��(�  ȵ'�  ��{�(hI��n�L!����s�k!�(� Da�c��D Mb,-BJD�\��My�H�A��E� C~_�:%�)���eW��´ھ��&UL"
B�c�+�:!�NG���A�� R4	�
hJ4�� p��Ё��P��l�>Bb��h�08�A��`p8EN�Q�5��7���;�X@�$m:�J#Cq�v�JE+�kQ@`_Y� �`�AW�-� A���x0i�mI�������`�]鹉����`r��@(5��0��p��y6����Gac̢ɜ1�X�:/�^�C
#s�9�	A�&D�A�yD ��"����8�ǚF���&��U����t�P�� H$�5D�"�`FH(3���Ì��䭨�};����#Oi	�X��Z�Vzg���͕T9�21#ufF�t�����Ws8��!����V6��Än�_P�O F�E"�G�8T��j�ƚn���a�7�D�5�D�ڬ�&h0�|l˲J��v�N�K�5)*Eb����"
��P%�� @D?�|�A"!`a&C�a���C�50��)r&�r$�O��`�_�_9X�� �B@r�]qg�
�v;�Ee�.���P���� �r-{"@ !b�@\�CP& X�A���* (�"Q�Ll����'�J��� !�@�xv#� � A$��!��ɩ�g�*)ON�"rQ��}") ĈwA�=
�C�
V�{��K���]�LF�1���QOR��1Kh"ˬE�l@�ی
!�h�ტ Eah�P;��k�e�XaXz�#L#b5��%��`1hJ X��H5B4�0	�t'ՈUP�+��g*�����L"��3P�&�(X�Bٵ=tC�K�P?I��M��o�Q�N�8-��0i��,�E���|cz�ou���]?���Z�d���J]Z���Q�r%n��0�W���u��]�0@	#�"��m@���~���C9���O��Q������HSm
�������^4C�9�4�R!&d�"Ǵ8�Ɛe;^Z�ș���#,��\S��։��9E���"8���e��!�m�<ֻ�E�+�F���ZvB��k�O[W{ol�4�\|,s� ����Jw9Д��sBI��"C
�Zv�OƝi��D$�d�%��l��;, �3�"EA�V����^kv� �  	8zP�r�xX�Tه@�p4�*�   �jup
�Ca�m�G"=b�m�,m:D0�1.��09ݜ�Ě{V�J   �(�u  (
�0����B�G1(��T�Z�(��w@B!l�!@ A�Q���T 0�I��"�E�������X,M��0�a�E�,�c���	+A! �$��y�O�y_Ow;������Tb���3��f��@����w�S"S�c�!�aH�A����Õ� ��#�����+R�,���)9
3���`�E0D-3RB� 1H�fx��0r����{�#��h�3�aav`W1��@�kB{E���fݮ��'�sCw���k�-�x��{1U!j=��ɣ,>׫�2�v	Ր��.ۀ*�FSʟ'Ն�QSI-.��
m����9�1-;��jD�[*	�U��#
�bQ��"���`xn��Ik�0���)5�ԙ�����H8Fƞ���?O�o^�;�fxVu�g�AX���)�������,0c�+i3w�v�ل�}�⨿GvM�2�#��6���(���L@|��5�B=�u����B�dD 1}�t1`�m���֞RB�a�P.M�e�U� �R��7i�`	D�.F�<EMM�;Fh!���(8L�F"�sB��� `Ƃ�~ߝ�}�O��:F���l�I���F�N}�'��נ:t���~rU @ D�y� D�P�! Axƙ�  @Ax"���p��*� X�T �P#AAEA �FMA@F;pĴH����sIKcF%��Q�P���N��_� �Ҡ���!�W�dU�$`�(RJ��m�tw��C�9M�9Z�|�$L����OQ������8)1�x*.�H�
��  �À($��uz��`5ں)�a��5���;�	r�Q(� ^:g�C6&�1%'E��KZ��~�0�J��1=]�.sIP�q`SL1B$���@bW���"�	�hW�[w�'ׄ�V�n|�%����,.��%sV�A竴�SE.���mĂۜ��
�p��� F\rR�h)h�GP�FT�\B�����K��1�h���$F���0(�TTN4���$T.��H�ɤP`����#.e�T�RЄ,%$>9���d��|��j�p�HE�?�G�Q�3T�IFy�cb#B���U�d֏�
2a�D ��e��Ɣ�Q��:�9\��s�,�
s�k�sv�)�
��%�q�-�(PX�6��(2[�� h�=�2 `DK�@��,�M�!�9��%���ԜK�`R�A���s鮈A�1bF�K,
�r��( �(�2)�
S*���.¢8��ܓ��E��`9EY��
���yM��  ��� "�� ׶(� �G����+~>�Y&�A K��Ga�`
� �<� C(���C��@��h�d���� ��43m�#��Ѻ$�(�]�F�9.���6��3�HZ���4v��-+h�\a秷�4����]Н�6Ur�|K��t�H3(��H�X��"�A������D�0H! ���x/+
B��PMF�ع` I���@Ў��8I*	6��qla��'�b,.4��1HGh9��0W�����s�a�IO�!va�3��Ƀ��zz����-�pfob��_ZO�R�HTK�#BH���T�dF�`�t�@�RZ٘d���àd�$�7S��6%�U����U�*c@�@��:���A�vR%
�!�`9Dh�#��������C1]����g�M0�Q7��;C��A�C���ܘ���F
C̘��P8�m��T.�rJ$���zK��L/uO��T�}�z�S��{z���m� ,b�X.��>���p��٤�
�W =����`$�� �	�Em(�:U*�Y&�
�:��C���$H ��1L��WT��A�0 ��`M�y�� "�L��9��Q�P P �#�� Bt(�"0�ЂU@A`ƙ�X��I�TDQ ��Q�� (�.��(��#� �"���(`Tz!�`5��c����Z���8��\7��r&4�&�p8�!D�0ǱQ��x��q�X�!<�'��x����UEƜRn�Y@V X,�IuTfb�uP�--$	j�B)v��b ��"q�h �  Pr�A��ؔ�QTn�q���#-P�b��H��v�\��������әiN4XͰ1FH�9r5�2�;2��OFh_�
y�~��{��sd�!���T+]��-܂3�!�@ �
�i0YXX� �,�������P-� �1r8a!�
������d��!�[$�M�� �X}\���@�E�(�l��otc,��Vw����o�6z1����\�� v T��w����"v�u�K�᨝m~C�B|θ��`d��)q� �d�@0%#�.�@�P i��r�B��d8`�J���pD�"} 
�av]f\{!̘�벖��F]0���ȱ�fS:"��T)2[��BFc ��.� �m���"5x�2-� @0���C��pI�29	N" X�@�Y�" �ȃ! � � r-���(A(�� �<a�@@ �����''#"ൈ�"�G��+뵊T{5,�*L(0��8ҙ�ڼU��F[����q:�$"�U��rW�N�Y�R���.�JD�)'��e
n�cȅa�,�,�E;�3�i�H�yD��#�AdFp����@�,U�	����\=R49���X8Jq�A`�V\l,Su �E�p�[4��"�B x�)D���o��ƪ`:`�/�/��HtV�Y����u��0� Y?��~��z�!Nz�_�����)2�$F�A����l�Zd2Ã�h A  �����(��Ě�u+  �с�hqk���@��I�(QCKA���Թ����[A&(-/!]ܸD�|�V�X��:��Mލs��x����������	Q   ���������'Z`�+*F��{��!��B�����> 	aA�)��0� �>>8UY�����mC�J"T�"��Ę�`��������� �9ډmӆ)� 
 �w9��!�p�8��.O�q�%	S&(F/�s���8 �ܐ��A١I�}Dc�Ύ\���GJ	G��(  (����{x�8*mR�XgB(� l�  ��\� ��( (�\�#  ���A,	D@ �D3D-58P�	x
8Z���a00� ��K�X����Zh\	�R:���l�f���g�㶄����̓n2�摑S�T(�Щ]�P���GJy�ZUG���`�u���-�FĀ�T+i�U7�3J�X��qݘE7�F�L���EF8�Ծ�a$�$0�Xb���FL�ҋy���9�HD�G	.�I�e$F(qW��A��:n2O{�}G���)�?�ŀ��h8k֥�KV���Z��4B?��Ο��y���o���d/2\D�WaL������%+��� V�X ���X�  X�` %y(N�n��)\p��!���'�<���@$D�ւ��XY2	r3t�,����M,U�%����!pj�`�$���H�y��3��{<�SRg1X  @ ��F�P4�t���n8�T�x�ő�ғ"�sVQ�EA�x�D4y�](	�[P|M	ٔ�MƴI����6Ia�#C�1�l�a ����XP�� �� ��3�h� $d4�F����� cP�@ (e� �!�ͅB�jx�M� ��$�)���� �a"�>�C�o��MJ�2�e�0�xD�:(h% ��)   ��  �{P �9��5w�����x"
d BP�
b�x�(a���)F! �����H�J@��ܔ&jշ��|,��a.��xDH<4>1�8tWi���`!D�1�`\fizA��� q�`��P�B���A��"������Y�ő�4@`���T�P �1�J�C�G���	�ã�Z).
�XS���7ȑ!�D�0T��B�EyF�<ؕ̓�"�VuF->o�����<}�#d��~����Щ��,���vL�|MQJ��U� ����icUxd�ؐ<�lwHE�@��2Q�@��, ��Ÿ���Ld���s8D$[ <���V*X6� :j�V�Q%��W�)�P�)����E�ыq��4��|�>�MO�n�yY��Z�XWpP�5���ZAۨcjDa[�e��a��!A6�՝Z���B(sL�@n���-LL�"���((��@4�UY�jC��A	��"��f�tH0 ��<
�a�u*B �C0p��Ì9.\��vF� X(�t)�Qb@K���t�A�0"�)(���c��n&�O�^�`@	TH�{���b 2,h@a�E�M
D ur<�) �(םC�ڕE  U@A P@AB�W�Q� ���h��mbR��Ah�7+�# # �㡚��P� U��iUJ��55j5W��&G{RA��P|�r��,9�us�Z��!�8a�(��X,�"ad�%�0`��F��h�� �aF�`�qP�
��� �f� ��H �/��,H�D�ش(��ő��H�2��# 0������U�Iu\'��"�N^�����`��%q�G-o�H�g�:|��3���LU�e�0��q ,F��j�SQL�و�0��� %��$,[XPD`:��_�)��$,(�ቭq*�
b� j�X�.֢y���`w�i�P6��)CI6"!i�w(v��=� @͎r�"맽?[�O�%"f J>�8`�(���a�A�5
 1
���w��L�+�$&��#�)sF�c8��!hHV+ �,�m�1t1�Ȳ��$�3�>(�4 �:�x�0�Xq�@����j�~'8b��LYdD�O�)�9ť/�!1�� H����l����qŇ���K�F���P E08�Ԡ(� ���Yr �)�0"���AH�S @��  �  �@�:�T�2)E -���,C��Ð�(BDB�
�Az-�G�P�",���4|��LAuv�]�m�d[�-��qA�P4��nДZSPc�Y  5��-����p�yXժl�y��SB�Q0R[#�.�9�(�fp��\b�p�f��L�E5ɑ����@43��4������ʕo��כ���-T���-G�2s3;5����lRd����c�=�E��O�2ɪK�6���y�2�'14<И�c�B���i��.p4_�}� �^���Xh�@��GAT�������0�i9�4 �z4%�b\`M�p0�Ո�N�>���¾O���!.;�:����
c�s�6d��=��{0H�����E�9��w.o��^��(m	�	b�cS��&&JU�fCC��� �B��C����v��J*Xr	��H�r"w�H"E�Ĉ0��1Y�ƀ01
FC�1vY��S�Av	D$�H觛��(� � �DX�x,>!!>=B2e @�c!p��E�Hq�	1������,ف(hD/Y< ��*�(;�c��/K���eC� Ͱ{��(@`S  P�X0EP @`� �
�@�>��"�(�p c5�:-P���n��C�$���\D �^KN�B@�V�HJ]���#X��-4�W��+���#2�(�	A�?�½�R�v�,�g�	�0��﫿���);�����7s^t^s^|j�"�ӽ��8<%��O�W�U�/=_8_�}���uu�_��p�( 8h����G�ԁ�ݏ'��]�B�m]����bՈ �v�iWkr�#Za2��aV�>��f�e�C��[�vjĖ7�k�hk�\�Z��H~?3玀Y ��K�I-�癮��3���{�u
� �9�&f=>��&�9^�٭5���V������ƶ��G s,C��x� Pfe��&_����P�q8�p�H$[%��f��T�Vԣ%N(�U�$;���8�Q}��\+ū ����=�Y�`���z����{�����%�$Q�wT   � vg?��8�����wV�iB*��ZґzڤM�t�l��0�` 	0`��l0���YE��J�PCHQo#A���b�UvIQc�3J�R� �Z��`b"�� �^
��:�D�R���Q����P�U��Y
V-	
��  ( (�z�Mg7�vA�hÀ��� p0�$�C��(H�@r,H� S<��` �(J�{ �1� `��(
( (B@v
��Ƈ�CD!(9��ba��H3jA�%�@�n��NB,5�4v�͋v����0
:mf�>Ɏp�Q;�J�L��w+�}O���IN4����(���9רV(��`H�.�2#��V�+�;���_���b�<\As%*	�!�$�{S\"�Rp�eN�PK�X3��u��N.Z���p���N ���Zя�?���H0$�V�	�5��"շd�\bA@C�}g�m�����8Q[��o��,���C����3T��V�R:����#�O�_�GÞ��P_2{���		2(�����@Z�I��\�����Z�-P���>Dl^�t�\�w�{>�o�
�]���U5 �^�|�e�T�~������\���g���iI�xs$����R��fd�:�^'d�~���A��J���s%�/�=��,�����~�>��~)bWD��5#���7sƼZ0V�f��FZ�?̩�� j(}_{~oίs~���=������'�ж�|���W�}_�}��;o��.|߃�k_�������[�/�~��E��{!o���[z���߰7 &&��$n�$~_�w!$���%�Ew�:�7�o^â�Q���D5*��(A��CN ���J���������W�ޜ:��*����j��95G�R���,
h�Q�MP���;�I�j�PC`�;p   ��S!��MY yF�`�ɗ���� $@(�bd�����1�	� M���.iF�P�z��"b)�� �C�r,J��(� �:��[��RđCH�,ڠ�x�~�=��F:���b�_#]y���nr���<�����c+y���Y�=��y�^����T�~�mg��޷ܑGv�ZE���?_����|+bo����?�﯀������y���Wv������G�;�6��r˝�c~���Kx��>�>�}���C��r�N�K�`��������{��y�5�ǰ��������X��.U�Ý:?p�{���������y_d+�����0��w���;��)����!ƺ�i�lX���ϕ�>���S�"N���
���[Ԓ���Xh(����>�O�m�o}ɂ�P���o�l:�0��J��H�d�i��I(��b(���n�r�*�Rkh�Y�v�^h?���ѧ�E
"�
.�$�4+dp�2���;y�#����D[�`�Fkr)�����+&�nZׂN,lq��G�k�Ŏ��]U��M�*7:|�����o,���:�B%S.���nH-,��)%���X�h&z���:Ċ�Ѓ[���8ES!�ȸa�}6� ���"a��h aH8@�|f+���r�d�}�.=XU�K�x�b�� 4�� " �c "A���BASg�2��ti�0A�)B*Ơ�XA�yT��Aj�U��c�Ug�jB�fXA ~�f
B �(� ��(��$�q(��Ad�� �QUbM�V�H�Ѻ�HMmZ�~SC�=@����2���(��% SB��G"�RǓg����C+&��Lq�2�{`���{���m߷9Ee#�XU�)>B~���_��ڞK�}$vA���C[w�YI@��������o�=;���ѦY�[��]��;ˋ~*E�b��?�ϝ%��<�eE2Y]��u����wz�^�^n,Q!z����O�/뾝���]F�\6w��e��o�
�bw��1.K��~�ڊ�M�g�	E���_��ᑴn����ܞ��/�y������F_*�?�SB:�=�k���ɓ����s�Y���`���}�Ҹ�Krs�Y�ղV{���
��vL��)8�>���{��ndv�>�~0I���yrW,�S�n;�|��ήd=3���`2���t��pC�w!,T�ț���b�"���at�"'-u��*������f����#���j���\����2���X{�Z{z�hIw3����]�fKU��)���[ě��Z���v�Mߏ&�JpdJ��l�\�'Մ�n��*�
�n0� S��/w3��2��dW`���K$F���M=�cS�H$@R��� C��@��Q�F�=M��(E}�E㨏�E��a��Q�O`@G4�`<��ªj����VSe�P�p:V�s�X����!��e�$�-���%�� 1AiS@	vhh���F�� �Y��5��Q�㸆H� � ���]��@.Ӥ@����Pz<�25(Q4��1�Q�k��Ic<bK�K �Yhʰ�	WX
Ӕ
�29e�
�q�d�S#�����jY؏�������쳼g���w�v��WT�0�[�=���A{D]�}��]�?CPo�7�s���%E���{���yw���)1<J�1�=F~��{Fnؐ���ۻXq�s��_/N�}uͫ��,2#�e���̤qc�(nt>����8y]�teߩ�󸒾�e�`��Qk�E���ǫ��o�S���Z��vK#Y�3ӱ���y�]nmƫ�¸;�YK��$���=Av`[6��[������}���i�kx��p��aj�T�4�� LG�@a�;�����ۛ�IO-\�Vx��k��>�Ǎ�:=��u|K�*���������?��0����ϴ��>z�u�ݭ��c��T�8��[�j�'r]?��T�{)�D����Ձ����\��u��ͪ΋ǭ*��B���M���嵐����v�ŝW�;K�Z���55_��m��LEPeF��R改��??�,?ڛ�v�̅2��R�Z4��4#"P���qH�rU:6S/u�6g��E�d��;`�299�9%^p��Ł�"�P4�R	X ��(=
t���"h�@,@ �`Z8,G\qE�6�s�2b"rQ�a�����pL���KaHF߁sɄB@ <���)�D�� <*(!`�Pr�8�;��&�aH��X�lcq<�o~HQ�ŀ4 D	xa���)F��%�C w�@�Q�cG�cx.�#X)��`�`�@�X�����B&��Q`AT�5 ����1�=���Ɨ� �i��U�	��x##~���Y/��Zֵ&��&
�r��y��}��FT�DT�yCS��lϻ�W�N�+���o��hK���v-��5�7�挼)͡D]<��T���KU6A���'���3��25~i��3�ܚ���i��Sۜ������Ϸ�F�!W�J6\��y��]��R,�B5JMc��]x��� ��ɲp�Q�s�]|7�A)#}���A�wr�U�ӄ�A��������G_�Ur!� �V&��ߞ:O��}���+�����}'�?����������UP\��Z���gwd�!/�?�ӗS�ϋ�����\��>�SƑ���M<M�-��.�>3N�)숉1��+ח�:��'n���ܠ�0I�	�g�-�M1����i��gMʅ�$�]�N0O��=g(7�Χ.>����^-��N=�*A�a�ٵ��=\�v��<�vΦ�������y�m�F��ۿ>ߚ��b��������ɕAv�X�;*�|�#�X��Y,�Ϋ7��&�c�0՚��<4�l��`! f��=]��MD���ñA���P(ޛ�!�J)>��\YUQ���k��kYc��^��@7ݰ�")���J��k��-�`�f�j�j�j�rh�,�!�D�%H�\J��`|��ar29�"���È�]��*-��1�GKd�.ǒ2�e�80��|@Q @D�b@�hA2F�a#ڦ�6�\R�B �U��D
0�!<������O��q��d�9@H)�@B7��N� �C}%>�X��;����iy�.#�g +�z����}c-����G����(
U:C�`\�x�>�k�LUd�L9>��}�В�	�Bق���}���um����OkH�Pr��>�����{����O�/�O /�b��%m?o!�qc6�ڽ����zy�ݳL�g�5��>��V�z?ӝ�X�{����
c���r�,`�6!zJ���^N�;m�8�"͡�iaKs��������u񪲼��hԈ�=<�~�~22�r]�a'fzZ.kuf��~��~L>�W{���������>���7]��y1 �>G����s���k�<'QN�H�Zӯ��7��r���-.�]=^��Ʃ�$0.�ul
s͟�?pW�nD�q��%�(�(]��-A��m�m�Y����<U�$⻧�Lׇ�Gw�[����o���RA�h�*U7���pY���k}�wDS�����X�]�F��|3��]���B���nF:m��X��	����s�.�h�^(�J�N��U
��F���IG��!N�
� P � Q�,B 
� �hb�$�@<�c<m��h`p����´`R<B$#b@�ΈF4���" 7^$`.�5P`2������
�(Ѣ��S��UG�ᘈn�(@ �(F9
��3J��@ɔ�8<  ��

b��nJt@
�0�U�P�e"ǐ`j���sL�`��6E"�����E�]��O�2gX�!ԘED��G�s
�C"��� ޒe�y�]Y�Śɜu����۪j)��e��g�[|�+�Al�}o�����&]��싺X҅���>�b��|���h[)?ݽ��۶���AR�
����˙S�{�޿?�`��A�r�E�tY�p�!�:�\+4��8����]h��+���ϔ�Şoη�[���\
;A��wE�w�|m��_�ڃ⚷�8_}��)"\+�>���
���?���,ʮ,��yDx��֟��������3W�?UxIt�7c�Xm���b��7!�<�������33�U~
���Lq�1� %#�^_���>;q~�g~��?�??�{����>���z��Q}��Ώ�2��w��٤���ݗ��7��_�̓W��V?������T�٦��d�*/#p��@'�(N�0ڽ�ʹ�]}}�;�N��9�������e�<�A���^���^q�k�Z��]�Zy���)����������+�ɱB@�)���2e�>{���O~����*]�������Q���G�����������B����e�m�j�[(0l11��`��^u��Un�)b{�l�P(RB,�� ��(Z�J[b����C"&����(%E�bJ%<%I�d�j6��Qs�Z�%4B�1c�K]*R�Ȉ(���]�<�W!��+-��(�ǔ����D�k���PEYU&�R�Id��Q�k�ȵ�B�a�  ���0   "R"�1a�L�MI`Z��!O���&C)R��\�K�^F9�>h��x�(C)�Ǿ�����O�f�����=�.�-Z�>���az�?����{�<Cn;��t|7�=`�^��D�~�T�Ӧ���<诮0_]��y�vږ~��ѽ���es��]q9�O���U�c ,G?%����������߮z�ؓ;졀��y5~�p*��T����������os��wl��O���Y�{^��W^����9�~/�$/��CyyϨ�/f�J0�����	_K�����-3��x2s^U��<)/ezP]�N2�;G_�X��Y�1
I���i�q�������;F��|�+�KLV���Z�Z�)���V��"~����)�D?N�������>=y�;ӹ���K��g����=y/������}4��b�����Y�m����?�y�Lo�?�k�3q�1;���Ӫ-�c�nK�Fe$%�����i��ˊ$����e��LDE��I�)����`��&]?���|qwԥ��*�:�s���?�~�Tv�ӑC1H�8(��T�p�$ �+#Ar#c��ڎ&zJ	e�e��S��;\F3�e��}��(,��B((  H4
"� ��G(�pQ�@ ��� < Q$!�@DXz�<�"��G	D��¡$��3����a�P\(w��IP�Q2ZD(E������ԙ咘�M7ӠN���@� �{�A@�y  BD�%'£����H��@�(�@;F �%()��h�  (�>%R,�� UXi��!:�Dt����P9��>)��Ϣ`��>�]��W�m=�A�N{�L'a���|����L+����4u���``G��m�r�MIR��L�yL-5��x$�ݬ0��(�}���>C��j(�g��1���p��\�x�=�z;��+������ѭ/��Z��ɯ��������򞿮~-��.?c&T�=��q�BDD7e�{��%$&t;����}����`=�}T�ɧ�U���S��yL+�N?� 7 {��S��+��A�g��ؠ���S��Q�BE}0X��qn=j�M���6�����������y�ɚ�֞ܟ?�������?��^������{�~�bV׭�?3�o9�'��I�{0u��9���L�&�N��VZ�����n�����r�����"�ٓD�����������<�s����q�8r�[�pW4��\�vo��8�&%$�4��
g�S=�|c~�1�%?f01�yY�I��x��3��E����j�.�>�/�����`CBkr"�]4�[�P09򺩋z"Q��,��2��h,@,��X,�"5�Y�A�(�H�Iݜ�"Ѧ�"�(M<m�i9t�Ts��c���T#��S�t��6d��͈M� 3<(7�B��b�&��-�(����S�h�`�2��<�$<I؏�������`�;�� (�$( �\�E��CA��? �8�$P&� ̵	&F ���1 PE� *  �b%�(R�B7�
E�Dc�D���D��=��	�h.����z����i��\T�{�������jV�Xw�{���,,�2_'O����Q�+#�+'':���h+,���kP��|��gܥ��U�;+�}�h|�{�������p?k��g�����~�/��I���le���w�b���{��Y�3L�O�#P��}�^�`I|�7�@��f�Xq���r����\N���Sn�;�=
��:���5�f��<�KKM-��!�s��}"�N��k���2�Ү�Uts��")����WX��Dvց30\���k�@%%���^cR�U��Uj������sn���������g|ν��.�f��v�ѭ��?��<��^7િԜN�z��vu3FZ~���<�P(!@e�Q���S�MbmF�;��$��M[��"��T���zB�Z��{rָi��O��UF�0�j;�`3l�'�A�#��.e�-z]甤�g���7ܡ��(�'?�D0i��w� ;B��P��0�r]�Z�n頎�W��1�
=8!�����h�Y��f�	4>�%�@�X� ���h b��sI�K�`}t���P�i�4pT8c�@�g����.w�3#�L�mR0��9�Nk�6�!`rB�@XZ�T�b&��1�<�LF/�̱�%#�96�I)q�+Dx�n�8���χ+  �(��>�C�g��0� (�y�5
������AC �B(�!`��d� � �@  er�E{��
�Q�0�lW�	Yܖ(�K^����[���X^�����i.k\+����ܠB��r��n{ھ���E���������8j�9��,�������+���x��P��i��U=��#
�	���ޥރ}������A��b�W�?ù�@_fR�L���`��Ш�F���pX�.���;��>0����?pҿj�|����tFa��m�T4����`W4~!�=��� ��� �����a-�sQ\�3?ɽ���V��u|i�; �ىpo��2��)��[`�R�B�U��Y��t���)�L�%���Z�����|�"����Ԗ��\�9�`�B5��so\]�������'^@�n�Vw�s[71�uv53ޥjڜ���5�����è��0$]p	.h^K戇���cvN�[3oeֲ��7����4�rf��"���?��1��$�=�PT��N�*��}x<Iv��G���.{:�������c�"t�%N���{��F<��;@5�$���B�R���^}���{i��. ՙR]�+�9`�=h�K��i�b_�ӻb�Q��2"Z >�oʀ�D�Cd;��]�cWp��CgiQ `O�Mh��-28 &�V��v1 (��A�e�eʰHb��T�Q�>s$�dt�FQ�1 D�Cݜ��-pdj�м��Ɔ0�z��P�* ��\K���(�(��s @A @E0 
p͝5� D#@��(� �Ā:�4�Ш�(�_�(
�hă�2��*e�Z�eX("T̂dH_�^���T����7J���O���~���S�B�^����^��rQ ~��vr�,/����}���~��cM�:H1z�o�������������W�?��J�l�b�����Њ�L�_Y�g�Ƌ�Jױ�����.7��{��Ԧ��M�_?��wmk!�6���A	� �2��4m���c�^�>?�L�F缿.��~�n���C�!1�o���o��z)��u�������:˜�7�s����=�cxF,��X�^���n=w��kǬK0�o��b��?�����'���?w��h~��#5g�3������yB�8n���8U�F�^7\����؄ktɰ�E��/�$�^��nzm-@�0��K+�m�Q�N4�V��Wɉ���ui]�'v��m��f.bu���GR��<�̆�ڪ�,U�Xf|��'�E?�?č��:�ZΆ��o�2����}�CNeB�9�K(�ኊ������?�� bS�;uU��3���֮�W��A����r�)��Gc�)�p��
%�Ć7GcV逩p��>��n�]�)UY]$�E:`BNف!!,"  �l��G���=��U� �@,�`X$����i�̵)  H�&���M*x"Zx�ኌ`�dX��A �
C9�!P�ym�ՁNh�IIuj9E��V���R����(�` R�H�K��n���@�0�t��5����0   R  �0
  ��5� DQ�k�X�Ƞ=E � � � 8 `@ �w�� EB�Z�-b��F���5'f���f�R3�� ��Bo�l��C�|?xo�{__�n�˝�E}�?k?�W��N��9�dV�r��ժ�`{�91j�������������ĭ�O�P�^ՄN���}Op!�ǂQD2/����Qo���p�����9���$v�qu&Q����8�l��\�B�,���Ġk���Ytb�~��]�X�P<��� ~=�K��vbc��PA�����?B�lz��'U��S0J��?��%q  �070ν&�Kx1ĺ�C�ţd6�YT�RW4 �t��B��Bf���gu?��TO澶�z3/ ��*ޗgzN�i�����_gf��Gw0t_�.��g��G�Z��+��j�22��[���z�R�ǚ�=�pM���w���!h3��,rO��k�G��h����yi�!3Y͞�u�Zm<R%���&I?3����k�!�,mU��_ow���{�$�P��\'A;@:llә�~�c��w)���iq��{����z�o��«���P������G{�$MO�0�R#�@IŀX4S��6d֝�[�ĮL-2ol�]����v�bKM�]�njW��;�tۂ�@�Pe	�ƕU[��v�����:C����[kuPm-U!�)~�O/g�q��.�8�E����=���{4�]�=T��&j�1�+��a�>D Q�0�RF8A!F Q�S�|D����J�J(B@h�d`�Q$�q;�  �"���5�j�F�"e��OL�/�M���JֿK}#��~4Qﱵ�R��e���[�/կro�����E��Sߏ�>�7�ĩ=۹���đ�T�{�*��Ns���7���j'�r�t��*Ɯ/�TiY��^)F|��������ݏi��A����r�)(�-�-�i��ѣ*y��q�[���ޒK�j��.��sgQ��}�@���-�
��ꃒ}4�x����qV8Z�d��m.^E�}p.�?&�́s���r]��lA�qC'-�$�SRՌ�$t�!�U�WW~�y�]�����Fi�t��`8 %��k�Ʃl%H�ʍ�p^Έ�󯳇�n5���q�h���F�\x$�Į���/���+}o��ϱ�v�0��i���I�ȵ~�\��0��%:�X\���s�#��Eb�yu[� wG]l�K�$/�e�mrܪ�w)Z�2,���u�[A��6���g����X��s֙�j9�]�g���2��=��ǱmqeU����0\���9��'���uM�B1���8&�p�B�.������Xx" ,�@ Qh@Ƙ�����"�C�	��;�pH	H�y6�Š9e�� x��CDK\�	�f�TKJ�(A0%��Xs�y�=� X<+̳���3EJ\ <�+����1K@L�[zlC������}�>�p �"   (���� r-+�5?�C� �
1�z�� D�6 ��.��D��3Z�]n��7� A�E�%�(��q��b0��^b����j��X6�K�Im���z�֞G�����=z�a�_��)�=u '��s������~2��p�'��n��h�[����)��B�{ˮggtL�bs��>d�F�}J����.���'�W�}��^�y��XB�Y�],ϝ��u�r�GS��Ɛ����s�Y�-S&����uX�\�q�]������������}d.���EH�f>�`Q�=|�4H��M�r��p�ƏW�9T�Lg��z�O�����q"(�5�҇�/�K�/��I 2��� �G���i�U�M ������8�Z4�V�׆�:�q�^@���nx��r^<3J�K����3�-M��u���K'�;�0Z%؎�v}:}A�'���UbTe_��@Ӄр
��)��wG!Շ���MPg��Z<l��(:�F2������64 �pf���+ن�)�����8���1ZB��X�"�KiWg��`�	�ƭ�4�ݔ����w��m Ŋ��}��|�:kh����9�bA`26��HCϔr���`@[���.)��TvdH���1�a�C�<�̣����+>�g��1 �;��:���ʮgW��vAr�6��]��E�K�fh��tǻJĄ:�@���R�y-T��Ҕ)&J���OFƃC��f����i�Ё�&!'��G���k�ؕv+;C���"$tH!A06k^S6    
�<�r����(��q ��@��.�FA1���	  8��ã�5%4��N `���2�4h5����!"�{;�`�n�z�_A%}�ڞ�����U�F��������z�>m�=h�?������|?[�b��=��{��"��1�y_{��|��q)�޷]���pd�O�L"���pi@w<��o�+آ��.������'�����S����H�W+�Hv��m�vJ�pㄔeV|mv�BO.��z���A����
J�:�l�OߛV�d�����ngI���$x+�dl�V��P<�x���rv�����Չd��竿�L���hA)�ܙ�h��v�5L��T�.|��Z@sF�����Ǧ���<�(��f��H�bN�\%#F����������{�� ���W���g��_��x&yc�_X��_y����ݮR����ޱ����>=��v���˴^�r�:�@�a%tj���g�w_�?��}�|�CKW�!ũ��K�oKr�Ĕ��Dk� d��sY�3?0
�cΚ]��3�*�/w�Rߍ������sN�Z�,޻�����ww���ݹ�O�C��b̈́B����m�k�c�`,;��P�tj���z�C©�T���u�QK�s�xX4{,+�M(	�X ��a��`  ��Q0�X4�M�9�I�
 ��0���h;*�FQ�5C�y�9)�D�,�K��e!C�b�`���!��L�XδNn��(�E3b�<�H��(D���A&�D4IP���<dٮ`����}�G�
�?�Ix0�d �x<AM��
����� h�`{�yP ��q
�\ E E�0
�(��1�ҠF���҄���� �v����'���vs�0D�b�y��2�����4�8O_���%��������H����?�#��p�:�k�Zv�RV��1��A�X�+
P����&������c: �j�{�G��DRSԋ��%[��P�(���������_��s/�I� ���}�BI2�m�q��%��U�2B�,tŝ,j���E��8"��/������{퟼pw�R�X��ƪ��t�U�f�;����ẏ����2�B�hSXąI���{<������9x����y�b�o~}x3LG3bС�Iw�3ZJNu��B�1���Q��/.,�u��toj�_���y3z�#긂�����o����[�t�7�?G�l��J_�����?O�	�U7�6�b j��v��g��7��dW�rk���To�;|�o���KL|�}蕽d�w������z���Y���@Bߣ�����wrgY���ぼ�{E��(�=���9�_�|�R��ȧ���/�z�lx�K,N��R���4����������{�?�}m5j?�_���اB���7���3���}��\ܧ|���~�B+���P$�Dbh2咎V�T�
�U��(��!�@pp�������A�������0�8�H0�&&� "�#�xq���h�����CЉ��<"�! �X!�M�nm+ZK�.2��yDbH41Jђb�@��O�!(\"�3�)A,��8b��!�]�N���:��}  ���_��d�l�<� ��<��0H���"����a*ƒ�	fq�^�s�:"�gI�bE|b0	C�bN�p`H��0�0 ( (h �	)($ h�c�HSec���]��`���w���nt7�wþ���}��x�ڕٷ���˟o�w�-la"�hh�u��!��m��^�zt�U�׃�kyi��풚��S;Ay}�W�Ϛ�� ��-�U��B�1UY-���/�j���x�/���>�<Z������f��_:+!�FY��^T4ϩ�����`vf>����ޡ�~��!����+^m����M��z��2���N 2e�iE�H#����������R A��Oz�����w��eƩ��yi3?�ǄV�T������"LK�e}Vjr��w�w�{�X����ּ'���n�t�?@���S�K����ͯ d�l��A�dϔ�|R�����{p^2S�M�	�t0w��Z�8�K���}�Lq�.N<�+4ǵ�}�y��_9������X�|_�m�f��]H��}��ɡ?���1�@dO~���(��'�5�7���{z�պs�0�N����'�q�� ~�A�m���ʕ\����+uT�^Ni�|�U#��Y��~.��4I!�1��-N�t�����e��U��R��zw�ˍ"`����ݦt`A��ː-�z���V��%J�Z=jnC�8M�q�M��9b�]��v%Ѣ�`
��B0$�A�K�Y�`P4�.iB�a�M4)9�>6A�"��(7)�
e�6	#3�9�H�F4q!hRx�&)
�Ӈ`Յ���.	�`|�7ůy��3�5oe�u\:P�lwaf_ ��3A���p�=����`�1��)FE8�$X�5�`��Z:&���ƛ�&�����FO���$�a!  " �V, Ptl`������8N5�{(��.`��F<R�H�"��F�K�jA�θy�lf"�5�B{9��p�]�Xy��)!3hfj���KyA6`�g^Nāy����nE�`Zٮ����C)�Q�Yq	�!(�S�[b�D"�-W�≓'��C�0Y���, �E�FA# W|.%��e>��������� �O���z�֨mDV��g!�h����,
li_����b�y�0:��-�@ ,0�,��fD �dx��y؁�DRJ]"���Q ��ݔ��^�F���x�4ŏ��2r�`�ڻ�(;9b��.p��%#�u���+�^0������a#ރAUi��c'b��0)�V'J��X�F�g�[�������{�1��o"�b�v{i+�V���B���W�3!���(�����>ߩlN�6�_o���}���i�;CO�s��\RVA%�g����(�2$˭�(���ݻ&���+�޿x��������-���k�Ϋ$���i!���s�ռI�KE䩑��;�)
���!PrV��Х�t���c��$�1�D���z��-D�ӡ� ���b��`|2F(0.�6�  L�����Gƹ� G��5�8xOCN�85(y�� �1�4&a��Y\�@��L�'C�8�b� ���(�`
ˀ��K��pm��MȱIK�8�Qb�E�!b�"D��2�� �'�F�H���",��-�~E}G�Jɨ�����C������_Wұ��=ʊ\��A��&�Z_��;؎��>QH@Љ�e�
  . �`h &X p:C��!C=�,�fƜc�1gŌ��2
9��E=d?��ǖ�L�y!7q�� � �~�VO�qQ[s�ܹ�����<�]�g�ׇ�!sm�[�q�.��f����Y�f��Se 8��)Ev��$����Ĉ�n��oE/������0HΨ F(�9��yLv�>���C�@��]58X6�r��T�Ё����'d@�s�D �'�A�0D&�Le�������+�h�q��Sw����3'�0�g�����e��z�_~L�nE�Z�|=S�A�Y �2�x��tE�_��[�Q�,|-^r�wTk��73{�:Q�m��qc8/ �����:������&�:�Um+sC��wz��E����ʾd��,�.:0��׌���f��%��/�}y�l�'$��>^뀲�lv�w*�+���2.K����G(�>>�K��9��<��w�0��Y���}�g��H0��H�٬��Η܃��xO�E��!�X�Z��z�$B�
�>��,`�V�M���Y��K���u_�Ll�7�a{�a���t���:C�` �9��8x0�� ,Bɱ0 ��2�C��patA 
B�X�P8Ēc�E!)���%�0��`P i\�C�
Cva℔P N�=� ~�u�A�o�� ��E��Ӡ�)k�R�|| ޭ�!j	y;q��p�d��V�{��w�n�@Lǎڷ�==��{�zO��������{c��:X�}=G:� HJ � �b, ��2 �[DRGL]��XhxA�
�
�L����E��Ջ�X���m4d6��r���������z0�h�\t�Ϋg0<콬�6�R�DPp�P� 0��:��#O�1K�i,��y�/ʗ��	��@��M�&u���8E(d�	�!4�56��Ea�8p �4i�|8KL0C$d�y4�X�ĉ�� S$�C��aEb`�|Nb��%���� �$6Y�����[ND��˜\�	1�C�$������)wCB�^6Z��H����@�.j�l�p���4�3g��mn�1�K_G���M�kSfne=a텶 y��ugzj��6�yO8���Ṳv���\@5�!%��*������7/A����w�,x	�5��f�f���aQ��XL��L����}N����A}BG��9vD� b(j7���м=��&U��6"��xm �RG�Z
2�A��/7}Z�r�s��8�H�}}gZ�<���B��A����ZÆ�5�_6�Bp�n�{�{8t\���ĨM�L�6ژ�&���e�~sZ��0�m�C��98'���V���p�� H�QE�!8XF�iP�`��Aib�h�A KJJs5g\�Y�
>�,�`�`Q0�������.FC��u^-UaB�P1(Qf�&SG�=��}�  �]-�y\mK)��%dF���k����ws��><�_�w�1�a�|��X���֡^����%�����w���z�C'��6��XAO	4 d A@����	  ����
$0 b$�J�4| |pP(x (`�C=�a=ņ4���L�0R��ײ�K������y#JM��=<�뵾MV��?P�!䚯]��_�.�ޖ��\�Z�O�A�q�X�4�����ʏ�^�M�Q��*�W��i\��GaD�q��b�痲ʑ\�`��*�NըV�B`Z�$���"�P�#�(
I��v$�����P06Tǣ3�Oa�!���͞�V��]Z�*f�,�?�ZȘ$VʨN����h�t�)E��>�f� ��_pі*_� E XxXy��"]�
w�W���	���ͥ��w�I+��Ԝa2L��r�B���V�a|���`bEQR(*-��C\wo���������/�7W�z�,d�_��M��O�9��A�	b�@0��#.& ���9��Zf�>#� �(r0���>k�Yڴ���9��ϒ1SԐ�ym9��Z��<S�}	�~$N�tW0�	C^���g�G���y�_��L��di����!�齢�g�w�+j��&�i��V�ƴ�e�nz��L��PCJ\èp����0 ��YA�����P�X��"1(�;�q�B4.�K� g@@�}rQ�%����B� `KM	F��"!'`NK�$�C����l�FSb��뼚q�iC��.���ŁX��5PP���!vʾnV�W6���ڋ'���w��]�0����G���]��w�oy�S|{olg�L������a�g�w��1_�5\��?j>1,  `� 0  XX�`ƈQA�Xt�A:�#�J��À�@�����5P,�u�s�d�т��d��%c���s��L�D<�c��ݼ^���%%��x�м�?{�&�bIW��2i�N����a������� "C�Db�P4�0�P8,�w8��]V� T�{�D�1���I�@a@$@`1�0�M�Lq�~��C23r�$1���{'�-"�^UT/`�l�Z��
�Z-�u�Ұ놩��|�]��ua��k߃�����N`kMC�ju�|C�������zCz�5e'����VA�4i˧�h�p���Ӎs�y�Z%�����Z�!�	L��OJ"���ק��:��o*��U���W��i�g˼xf�t�q�\��O�OΉ\���9ɸ��y�{.�ԗ�֦�!��ڲ�n�мqD�x��O�ghQ�`@��I�����wIV�s�����P�υ}�ڿ��=d�6O���O��_sR�p�^d����x��	E�j�{q�w�+yE
��2�.�Z�]4����q�2E��a�K�͛���� ( @�CY�8h@�d���B�  ��Q�Ї҂���g�;�A����}[�����}G�F4���V������}���6 4Q���PK	d@��CW��� �h��hS��4ԑm+ѶJ���P������1R�!J��  ��A�]�ɤ=!�7ݯu��N���߿�}�gi}���ɏ����^�~E��ٷ�E�a��O�~VGGg��/�==����������p�Mq�A`�a�� ����`�� 0�`B��	dp��yzs����s��9lNaNy��c��9�9z>l>\trh�!���mU��rq�G4��i��7
5>̚6���+?� �4q���b3?�;�Uf�X�����2r�K={旱�P(w���p6�C�+j�2���ʎ�.Ё�a3z&$5�gf C��y��_��,"�j��P��Ad-C,!�ƃ�� ���1���0Abh(�a�(\ß�,����1S&����{�_�uA��ɐ�
��AU4��.�D1SS����5�f��&z�'��20h@Q � ��H�d*fA�M*�Bڷ�j�`��*/�Rj@�m�|e0�653T����r�R�=K�ɐj�t���8�a��޶.�fS� ��+ۜn�{I�H�e�2e�j���>n�B��^Ԭ#�\��{���7�K}!\ԜG�)��cH5��6�% �T���_��m�H{�B�ty���H����V �>G����9�-{Og:������Y�����|?�wXm_ZA:n��v���ΙyDI���(n����X1ǤX����h;�5���X(@�����Ah���((= @� B����pz�J���		�XjX�!�O�>�K��\��r�=��0�@0B��ǸYk����Ь����v_���o�{��C��3�=�����P�+�}�d����b�w?>�j'�G�����N����w:��B   �T@ � � `P�3�<Dȡ���R�Ze:Ҷv��-��UՈyD���F��DՇ5�q�����0�0in��w.�X�W�ȡ.��z�����%@TҲP>��3�fj�J�������Gc������-�T?�:ƮԒ/qd3ٓA�>4bF�u�����S���s�u��V9�.mP4���#��6}�DT	 a�!�i{���1���Bf�ɟÏ����q�n�[��]qo�dz��I3S����9����i7vJ�lN�	�膹 ��ۼ	���=0��A� '�8ԮX;���&�pTہ���}���&�	 �\H``֊Cm2{�������kC�D���@~��d�����ro¸1[�k��֪N֫��������.�Ų�؅+�z�=~��`-�ȅض�k��.[;C��>�Dc8ִW6̒ �W4�A�HW8t''���)�R�����/������Z�Ӣi�݇�'Q��,�I����y=qt���DQ;������E~��/�;��W����	u ��R���*vh���J�PDXN�h0	%�A 0G�� �m� (9Z8Xz��ta�ء���FD�0�2�B�(���1	@H$�d2�"�!� (� ��<MHB` }8#��C|�@����Pq ��G�� �(
��y�<�N�~��,�zK��w���w���j�����?K��_?Y�������'l7��/�c�<Z�h�sƺ�-W������/�o�_ұ#�%�#XX���.Zh�+�P�Bct�k���a(XX/%X�%��tDH,Z��E������c�H RI��P�T�"�{0�pJS|��+ﱌ�+�&�T+��5���"�#X`X` 4>T��[P0O
`�D�9=����*�ޗtE�
98-�d�3��r�#b�<�X�K�1KE0�"�+�#H�ְLB0�D�$N�
3�a!h���L���p00,�!h(��0�Ƃ�)�j����֟ٶ�kݷ�[���>;:;-Rq �Ig_���9|.�L1�A�`��#^ "X~a
�:k�*[Ԝ�(�IN���Aݫ?k��5Bu^��uN�҄:Pu�R�iU�wb����%c��#q��I��uk��C `�)\��2*�y��t:�������L�
͊<�E���ێ� .um	�h�cu�A� � ���Pb�@2ħx+P�H�n�#�8-�o^��Y`hn�����h1�+SJ%��-��ا�og'��ܿi�{r�&�� ��m�Y���������5hbN4i�vz�x�N�N�~��w���E�:�u���P�@�C ,�5�4@(4�A�c��HNA �*��0��(CDΈ2]&�4!K�A�I� @L0�b�L�c�Y�)2K�cH�c b	q�Q`�$�3F�D�i�EC�H
�A�B��p�� �A �p�d��R�� ����|x�fkā
B @��!"�E(���f���xV��-ߛs�߿�گ�~@a<��)M���k�C���ռ`NFg"��Kg������p�o�W�WƬ�xf��SbJ
�*���nF����<, �EEX�^ܢ���-ni����:-� ����EA0`d3���s0������PD�|�{?��!��Ӭɦ8-����BPrZ.������~���蠎]`<�f$I2����E"ĸ���%���R}����Z4
!(���l\(7Z"8DP4�6��,�|��������b '�H�L�..�6��@aL�� �>�K�$��" 7�じn���3��5`.j*�{�{5?���g�`����67}��,.��Y�2��}0��C��5~�6�i�u���|�$,��7�`��>@1cfA�N8DI�c��(�B-��`�P0��|y�V�z�x�X~O�[��>D�B�	?9|&J�4J��tA%	`|]��+v��^�NoM�܈ƃ���p:�����A��j�3��ޟdhfh?�3-���{�bC�U�Q���q�צ|��
�B@` ^/Ue�����٪�c�MCV����/ϧ�g������h�!E��󻿋�����I��`��w���{r]^����;x������}4Z��H�û|��$�
C��`@B�,	��N������Ɛ8H���@�D8�(�6	�X�>)6Hb@�V�u�Tu���>���`��h"�	�%�0��G�s ����� �a���� �����EG�R���P!� ţ$cu
{h��BW��/����}�ѐT��YQ�&�T��$�?n1���i�mn �W9T"������$���|.���7��+���0����dXf�\(J��������"�/�E�.b�,B0�� bE�%F�`��H��C�P�V�JA E�q��@Tg 3�'<�;Օ���i�J���I�k�:v6eVvM���D��̕����\��1����1����{1��U8
'� ��M&;D��!�R# `D��!a�p}�����r!8!FN�p������A�p(!B�^8�������lE~i���h��,n *ml�-l�QȄ ��F��O~�m��D�Y؄�ͺ�tzT�+-j���ս��T�1��f���(Q��8� �C�u.�o��~�h��J�"�)Z�tq��DZq�1VN��]RS]����?��L�D�_�%	Y�1��e�����G7�x�ȴ b��@ŒWY�2�6L�#�[R&��N��F�b;W�x��B,��~��L),�V�պ��6��D-�_��z�`lѿN;���](��g맠DnK^������nbđg�j���F�Y}��hs/mDU�,#B^�L�d,.���\1����`�P0����E@�h �P�7d�� 0 |�P$q"|b�z"(������A�`H�>"����cQ4Q� =jt�ҠO�C�H�Dh,�����ah ��
%�A@�0"I ���8Gi����@P�P����F{���δ�9{��u2h���yY����z����L^6K &��a��=?~R��e�({�w��sO�瞟��
�/�cgy�������4��TgR��v���if�a�.�q�0@�aq� �  F�HQ��H2��
,D�9(�8�2n�ǲ��[�e�/W�..z�l�:@"�tV/�`�ē�6��m�9%(RLXĘ5�!��f ���Á3�2_F��;�p"�f	#�X(���,�dd)� ��	��Ȥ�z7Hb$D���a�0��  " h�b#��8M� 2N�Y��?�Z3�_F�6��<�bk�V�%�:M]��?|�p�����aB��U��,@���?"-ۢ``�U^J�Y``a�!���` `��-_���[s1�q����^��q*�  ��!���^k,kmZA����׬��~rh).~0�w2a4��5��%���k̵��'s�9���*u�y�>��#&F,( j����E���';�xoy�ï.��FUkOˌ{k��T# 	R����?W��<�ΰ"Ȯ��e�;"�G�Z�c�i�zo0�uK�u��X��O�_�by����?���/�B�a��"q?�c��=r�c�mh�ȽL�����qpEmwM�_4�&GcA4��a prb�X ��I"8!ć�����$!(,g��&�%���8��2Ee����X�L#A�I<b� BP�  
��h �����j kCb�G�@A���ć��( B0�"("��+M��n4������7��^\/��l�s���}��W�ߪ��}u�T��i�V�﨏��j�|���L2�V罚� �����I��&��j���r���o��ETr�;u��T�8��I�]8�`���\hPP0`Ph@B C�=Z��0���Z�pK�)p�B��լ;;3�Z�n��@N�e�X�g��$�%F��s P<��0��ڭ����lq�	H�C�\H0��Zd��\=���=(bآ����a�RG�� �W����D���(!�0#�M�c�4q8���rJ�=�c�t�($;�<'�8v���1�L#�D��)�z�͖�&�M�% j��CԒ�m�[э/�^��|� ��Z,!�{��%4�*UW/9�U���'0(a���������'� �D-�:eV��,X[[�.o�֐���;ԭ{-k�8�w��g�5�s��P�"�/���!����	��C�j^���u�JA�����"��A��3��B2�7��q�fVھ�~��RU�c�h(Ox�o�Ktq!.��G3���].���/�9���e�e�)|��5�O�o����1)�����]����Dŀ�Z~V9k-����X�D�š�α�-�0$���`4���UEDD P,�竅!�p�$z�ha��p�	EA!�t�Dh��A� ���$	��R�C�#z�xtH@[J�Ѓ⢈3DC�h�  ���, #��M.�14��  E@`2�(�ܕ�|��n�������Kt���G;�"Z�i�(h��,��	c���x?�>�+,�����T����8�%<r��G�%n͍�������}/��"�S���'4h��`�`� �5�V� D(E h``P000pd@ ��b��	n�#c3���%ߟ�$�mf�j@{g���.$����P��@�f���]��d�!��� �&�W`�����-(�D
p��
�BQl0�Ċb��a	J
I�|���t0�1�C�!�+�y
08��X�{mN��^_�8�q
?{nb,3�1"��`D �4Y�04�1�$�T��eY�-$�Zƺ03�߯���
M�=eP���T�Z�o���G Z��^j�������JS&e-T�V;����p8�;��e
��O3��@ {)�v�����z�Z�C`����_2���5��%N�h ʻ�� �&�v�ֻ��_{w^�dZ�3���,"#VU6��t�P E�Q2��"r"цn�K�0h� `d�P>��򨡲D�'��r�����U;ѬYͅ@| X�^��`�eh�e]����껢��>������o�EF;.ܿ����y���O�_-ҝ˪{��f>W�"���b:���M^�H�4�J�L��$
�`<W!�!����)V�s���f�FC q��`\� `ɠ�P(-�,ѧJ�.i4i�ˠM@c�,�b�H3 CCF�)4	Lǅ� $�P��h�H�89���8\�56��b� �3 N�j��")��'� �O7]0�P��\λ��D@œ��do6rM|��m�kf!:�ߣ�����%�y��w��4��܏���΁��)g��A<�}l2�bL_'���8��?	��r�߶>Ƕ�,��?��_���+�1�8+� �H��.  �R�CYXF��0bƖS�a�!k�@'�%=&��7�������p( ò)+�{'ߋ�:�}�(�<����7��v{<����Τc� (��[����W�m��L�Q,�2���]�O(Lv@@tZ}���*[�e �����( �(�8G��.�`���0� �#�AA8E��H$�$!���� ���`�-�i;�B��������QG�(q��F��E�7��`�n�1{X0TM��̾�ԔW��F[�Bd�`�A5%������x�6|GͿ��V����{�DIF�M5I��  $���2�4`���=O�.��J@T�К߈�#����W�Yl�X;g�IV$&g�,���cQA����3�r$n�� *>ɪ[]j����r}���Z�C*ړz�:�����- ����-ڍ��$��̩�Ѥ�j��)9gm�C�(3Uե��;�q��GJ�Ă�t9��s�@)!hQ>|�w�F xS�� ���#FZ��P4�LZ�.E'W��D]r�!@�a���p\Nq�"%�	Tv�t�D'qt"���`Z � F�HE?�ǃB!�H�:C�e��=��iГ��$L�K�(�I?A"<����C�b��D��@� 4 B-Z�,�Jp<-��{~}� @ %��� �r2;������˝�x�����$>�h4�a�wO6��M�|t���߃'H5@+���~�/ϻ�Y���ɿ�aP�%�S�Ϲ8�@S��c;�j�ޭ��''�>�{E��,9�Z��Z�(X��o��;T0\Bl`�5~3$ �p4���A��YA�i�+�=����n��ޮ��JZ�X0�c;����+�Ѧ�|>��[���`�x$1[ xlA@Hb��{��04���u��_�B{�XaHH�2�sA41rh`ă-��ւ([��Ls?ô#��] Oh��J�+s�a�踆�bZ-Av�P�*�!�GZ�RY�J4"	��˞N�Pp��矟}<���
�ȁ���FLFToB`�wt)��#:\���/��[���:ŏ	=8]�r���]T'Թ�Ĉ��V�0%Ί6��|��А�!�<�G�~M��������$[�t�5��ݪ:-������d����%`b��,Jo��&u������6�w���[�Q�G�g��n���r�'��vM.kk�K�kJG�%���� x��2�Q�-�r�P���Q�Q�8��g4���D�^�m�g�[k���'����=5W�͝�o���ja����U_�%gK����{���9�{�{����޹��v���վ{*{���w���`��
�C-F��P�G}���c?�C?�c���/?_8_8_}����b���7�(���,9@h[ll2t���Lҕ����h�]��h��0�EvY��>4IR'ǀQ�f:I&ɲ*�DҖ��H^� �D��]���_�{�g�DO��=��������g�~�����HZvY�S\Uii�d�!�v�P��}�d/��ZCL�%��p�@}<�~r�������P�P���S&%P����=��Z�t$���Ì�5&��ev�Mn������S���~~�d8�~_�;�>�tTnj�7�6w��8��=��̗���d�e�5	\&o�!�Sno��M���W?^�;}����Ag�a��w)����7��!T�6K�7�M�tk�=g�I�	}@�ֹ}�G�y?�lO�g�g˥/��ܦ���_v��J�^F��$�L�޼֙����;��r-��ai��.Rܥ���`����}��$�z�}��}���Z�Z�
S�F����*���UyIz��9��cz���	7��e �n]�c�X@�ocgff��h�M�|��AP��ٻ�b*'&�y!T��ya ��U �g_�F���h�TN?I���� ,��8��1`��ph�<�	]�i������}
tZ���.R֚-��B� ��#2�KMv��~F�,��4=��s��ʕ�2�,�j���q���\j�.�[.y¾�� �Xq8���ɻ�����-'��r�}B!�5�L���?_t���5�rj&�����ꏺ�s���P<8�a͌z3K��ig"��J+G����@���ǌ�Af^��s[E�O� ,����3�.C��,,H�g����\�✍1�*��H�ʳ ���|��AS��� $�C8�܀9+��%�S����Y�O+cF�T�¢P�a1dP&0r4�	�F�VUk��Y]���(��T%�����8�+RZ$  p:��\`[� �N��I�� �ObDp(�`�P!\B�.#\#M�(�6�9v�@`$G��9�4�� ���1P��ƊJ���?�"�()@BCaӴ�ɾ�v�y�j��eG��dr6����@WËq��_%I�a��Ě�Fo�O�������-/�8�I7N7�ډ. ��Wz�Ĩ)�C��������?��7��^U5d�Fs��a�F����Lh1S$!�9N�)�tV�A�c����As�c�DD1��Ջ,�)�^�j��2#'�`�dz=���g�9ӽ��Ӭ3I��E��\)�R���5�!�U�:�u�O�w��5'oc5뭼��	9�F6tFA��^E1���ˊ�����`���c �3����p� h6ha	�c9�(�M�E�ÐI�2T�F�p�� 	k�	'�:�e���T0�KK�H6�'nN�'���U�������Q,ps)��p��?.H�O�Ѣ�V˙����!y^����\u�G�)J��k������TY1�I�+w��nx:@U�ub;�"c:��E�� %���Y2��ܙ�9Zy� %�A8��`	�PՁ�$Ѿ�0�W[�E��j��8A��Vp�u����U���ac�k�S �O>:i�!s̜���\��̱J�W*���Y�`���>�o��R����=3Y�k�Xދ��ϙV=ʥ��`{��pR�23A��(Q#�!HA�.��Fc`��YpM�b�5�\��YҬ�����)R� J����,H�cfLV�bఝ�T�>��HR�@ C k���Ls��"7�k�Fk d����0�,�O�Yb��PŢH�O^�h$
 ��q
�CK���v��%�M��I���E�Ț	2�K��AQ�&��# �U�k9�
s�:b<�L��Ԑ��nG28w�#�I��u�ڡ�z���y߾�[f���M�盯���MƤ�/��֖�j��9l�7;�ph��?��;��������ܹ�n�mLݸ�OfV�Ԍ�Y��^[�\�|K �
h'�Ydt^Qv5�*rؔ&+8*+��	p<�#s�#o.Ƀ =��;}��imV��oBB�AYo;i($Y��h�Bb�"�<,8��q�V{�J2%E81.���f0h\��,��Er���Xo��"i��P�(3��yr�/{̡�E#@8k�aj�%u��i�n��0!f9���h�6�Y$�p�e�E|"�3EO���|U�t�m����7�= ,�h����׶N
�^��Z�"Z���D-xD�D�r�������=x0٢V�$P��z�����D� BD�� ���q
B��h�o�rbR%�0í8��Ǹ���}�2�{J)I&�[�9���[o��Rs����j���繆cx��00+�4��)q��U�F��&G�/��b�s�c��1`���M�ϸ�,ق�C.k�\�p2������#�E��)�&<�5�<�3X(9��!�J�-,���!O"T�;
��� U�X�Y2��
�c@H�"0,�H=����o�j�X"�;���c(� ��' "�p�Dt�4I��b��2�i�*�em�o[�iQ��a@�������A�ij0(�P��C�]4��؁�i��k�d�V����!n�ĝe�`"�ٗ1���}?�ሢfM�X��шL��{0/6s7���}籹w� �,���4|��<�o��ɿՐFQ�����X��	uԃQ�߲����?"�N�S��6��f��=�����(�Od=8����v�y7}b���7�Z8U��Y��v��f%Dy��p��q��T���	��R&�8y�3#.�N����b,qo'v'@���rFuT_��;����k��! ���l�^�?�ŌbI�v^?�j`hB� � ��!�@�H�
�B��b4� � �Ů�v�!ƙ�(Q��zC-B^O\<A��35=�Sjh ��j*6�  �|R�(��E���b_�M�|������/��X�Q��KN����g������ ��Z��d�S��[��0���Tx������a�Y� ,a����ԓ������ '���k0�xK��YU b}5���8��a��� f$%<$N�)6Npj�-}輆Ƒt��.����~�W_ɮ��9�fN�����" (X@*r�xB/�"ā������{�=�y�{��c���{�߇�/&��:�FB\q���`��B�����G9bֱH3���.IX���a�!'�2��ӢK�۬��g�/8��K�H(�Zqc�e�pH��|y�� 8VQd�D�b,�,W�c�pŦZ7���B)	���@� س��'%�cM���Z�C�h��9��i��V�jI@�RaUGJ(A�
 �J4="(�i����2L�K��"�q����Z
׺R�m5��+�-��\��#L`,Xna��� �}�F 09�W�v �Id���[��������#~e��+��|�Q�����4�5dX�j^��I�^�@|l%�H/�֖�+_̢s>��Ci�5 ���9�|�%Ӽ=�ɨ�{}��s~�����Eϙ��-�r��\�)^�W $8t�9JCίB�@q���f2C�;���x=NCe9K���=��d��,xC

8��`���p�mq@�J��^O���-��e�@BAêB�R� ��Y�`{\IK:�4#�I������sL�ѩ�8���Vc��;����Q q�(8���@���NV� *���aO�� ��^�5B�{dI~��[~��ҋ�4�V� �а�v5�B�n�d�Aq��&q`�c�v0����V��V��ɴ���.���/�4o�wOWa��ޮ2T�)Z8�ձ6�'7¶�l-��[:��9C|���F�� `���6/0��}�^]#_  �B����|�3	�����&�i0m����?_5���3l��6.���rdbp	�B+zmW&mM�����p
�)H����K�6�p�ݯh�cJ����[�����HB�ЅRd��"�X=���,h�°h�"18�>;��hѠ��ɩ3Һ���AisN�m~@YȒ��I�M"�I*���Zl�תQ�(�@|@@1��K�e���C8�VhF	�D�H$1||�X�ԱijtHi���e�
	�l��$#U��U�CR�l�L�|����!�F��� F���!#,Sl�[��� t4ג�iݓ�Ӂ�`<��X��� �(;��=vfv�����N������(��W<��i��w:�]�p�8�����;�*E3��}Y��R�v^�nbX<G���E��ů:�Hs0N9�Jͬ��aG�f�`z��W�?x��X���>�<�4��S�x��86� ��	l�՝�8�K��xzm&�9H��1��Y:�,�d+{P�z]�3A�4(/��`����(�Sx�0$��`R���9l��H3��
,ü��&$�0y��ǢA�94��, (��D \���j!�a�0BG�Z�@�B���� s��"y�
�!(%��H#��� �l(R@��R4Y-D�c�ږA4��aY) � �f���2�2S˟��p�c]6��|�D� �"PЛ�� 3�)�$&EF�=.���������ߝ�|�7� @\j � a��D��D�A��쥣����"j�M���z����7�빊gsj �i�@����2�.���D�lR�ji}��o���^,-��d�V{���4��0َ�K����X��UMZ�v�9�,t���g���	~�u*9��_$i[���aC
�=%�B��XQ���[�1I�	L%�t̡"wXF]���1�����f
!DcԀi0��8��?����°	(�"e]�`�-�ܛR�.��r��"��P�`C�Y�5):㬓���:k�/�~@-��c�����S'�V9VM��0"@�V�)J:"B �͖�uB����m#��I�!�4�b�O���̹r�Qb��)��ا���!�-BUB�պP���eR]!����k��.P���!�)@S��Y��Z�p';��O�5��w�M�o.���b�?�>\����W�~�v�ML�+N���C]	q�Nh<�,zr�G;Zj��ז:�����Dz�{�f�I���O��wt�^x���	�Z�jw�͍}��ǽE?�`{@@0��l�f�t����$�5*k����!�V��ӣ����	hK{�y�X!է[�E�2�T��+w�f�$���6�f9+f�!�b�� �P0�㡮��;�gP�F��0ݥ�(�lS�΄K�<$E��&3�z����iOʁ��δ�K`Q�C/�CĈ
'3;3.# �E��a����<�K?�X8�P�(���c���5��ѻ�0����1��=zdI���'�!-mV���w���e�h��u�X+�q����rMlO�G���f�&�#�������E��yȶ�% �Q���W+����DQ95�M��"�EXs|��PC�t�g�"��/�� `d�m9\�p(m'ID����b��^z����)`�˿4�S��==���cG����
]ە�~}����_mC��'\�H&(~�>�P2	oC�UBa ��4Z㾷vgBw� �ܪ�vv���B����� r洘��` "huiP����3����"�q�A��Zn��H0�R�D�P��� c�Z/�S����'�������5����M� C��$�DX�di��n�
E�ǐ0\��9d���F("aPPEca4���$gĴ�V�G���JHW�d�+��\�ː6I4�� � (�F?��D -�;�;��7���M��y�����=g�5�;�)'�ߙ������|�ޜ\#F���w^�0�����6kXC������'�IIFq#�K�zdā����Q�,�����ُxϾ��w�u���+����ŹRҧ�2k��^���tx��+��*�fq�'c�4i����TX��U��cwI`�Td5�$��ECe��Ʒ�L�ڌBa��G<���4�,�h�������ޅVܫ�����¡��9Yc�E�!br[��HB�L����̐�a�i�8�='�$�, yB(�r�E��9�YM��`Yb�I�,f:�����+���zK:�c�1,�� �`�ӆk	�<}���d��N��Q��Q'l�&*��� K,<i"L�R�	԰���)'j��0Ճ�I�56��i�=�&*D�!�� �&NP�� ��ґk�50h�zC��jS�I̵IoS��zSO9T�"�|v�xU�&��D�ٯ��O�F璑������R)��F8���ʶx��T.�K�Rm2۬ ��/i��{,�101 �)Z�Z�� ������V��^������������5��p�s�h��!A`0g�0����2%>���԰`N!��Z5E\��@Ch�"����[X���6m�Vk׍��\Ȗ �}c7�T�Ž�꼦���`	 ,�>�DI�<=MS�c4�<�x�`���1��jX��h<BR�(I���C�&Y���I�!%!�|��jxo�FPR�C14[�N%�`h���-��6� �ABT �!���=g�/��~m�-������~ x�����y��I��[��Ǻp[������͛��ř�i����x��o�xa�!�6'6ݲ��*jʲVQUy��<�T��4OƤ��3���T�(�nd��N���\'>te#<5+;����n���GQ4��,�/a��dIĖb����aLk
q��'�d���<��qs���Z�ڕ���Ȁ�Ck.�p:	c����q,A ���(�:����9A	T8��&������!���/U:v��*q�[�@(@�QX�H���8��5�懼�˼�!� ��`�|�#"��E��}c��봮��Qp�"	p���1@VC? ��iWRx��Q@ 
Բ!F��J�m(�^m	XKk0�ԉ�.@?�ꢬ���q8���eT�
� 9|�8tй�8f��Ԕ) /��e�U�eM�Kt�;�R,�Uɰ�m�f���4

dY6R���.p
�f.�J9w�)\�G뢦�ỗ���N����L��T=V/6���a�����>�T�vo�W5��j���^��� �w��|K�'
�t�_��RW��X�����|��z���I}��J}���b�IU� j���������g���@�h0>�����7P�0�Y��K|�%�X5��n(��э(R�A�� a%z��Yҥ�<_v� �J-jKQ�dKbAb���Z�*��^����  � ��%�%���%�&Ib0���a���q�XRDDL��FC�X,��*� �1ppȣ��1 )�N�,�D:l�
�g�h$� �ˀ.�l&��C�Q2J0���
P  �&s�̞�ʽ��F���>mcs��F�;����O?o�������������8��U��ݣ�1H2�G
@�z�����i�M�.�&��w���M)���������h#[��n��dn�����R�!۩�_������Y��{Uv�'2:���8m�h,h�T0��ؗS����8v2	`����c%�������0��ӫ{����qe�J#;�c�r[J�h#�������(#��B4t����)���C�U�!h�C� ��$O�W�?�y��7����|��J�]��`!���}P�+<�_�x���
�L�_�6@�Z��AB1���x*}��Q�E�}K}e�T#�ø� &�4�ᚯeG��P�Б:�����6��Cs @-�h������9n�A���Zh��jx�Vo̢Jl2����g���Aׯ��Z��wwr7� }��K��"жM<`�Mu�.$�L[
������n�/�%��Aj2@q�D>t�K� <�Hrpa�
��'x���8�apr��G�x0��˥�����>�o3�ۿ���mܼߔ)B����*��X��
 0P�w��*:u��b Y�޽���-����y�x	��}߲�^�g�;��x5[������@N�)E� �W������	���������悦�.� �F�
���-��B��)���Zn�q$��eFC�k]{ e������
�
�b%J+��^ �$0X-i9#�0\��&�j y$\)@��>�$��Va@�pT�b�pQP4��� �P9!�j��m, S�	��x �:�M�I80���P��x�:� �|p��t_�7�nۓ��~��N��0|OB9�x�����F���0��챇n4v3�^�_m|H��� �~�]�3���D�OBԂ5��uP��=Sџd
JR�������$aƬ���~�j����'��7�珳��|�]����[d�~Oe���J!���A�L2TXLc�!�y��n�q�V;�d�̳Y=��Cز����@%�S����������	19�ɒE�k6�E������]F�ɒ�X��@"[ql	f"�݃�}���G��`�Y�bZ�e���׼�[�s����}^a��f�C �����j,S�<"~�+��y�_<�=G��� ' � �˸p��q�����^�׏��w��d_S�v���d�X(I4�fQ9��*�%Q8�E7�i�6 ���k���3�M�b��]���ן� �3�-0؄�h�.5_�ѻ�o%�h�]kyt5�u�9�lB�N;`�� �P4��
`R N�Y�	/���h#e�A�5<��0m�x�k�]��k����J��]LA�ؠ�Ol��� ��
p���n|�)l�W����G�'����O�߃��ڔ�@J���C�8	������}�SP\~��[:�E	�񖹷ܟ͂Z�wLX����ʻڔU$9��&»���B�'f܂r�:`��׊�x�5�05^ZE�dHg�*�Ei`GV�#��8�6c�\�b(�@-�YC��HTFF�TӴ�+Ab� �h$=�pP��	�N�*��Ĩa!"�%��2$��a ��W�@bA ��� �2�hΑ, ��b���P
���G��`� ^X�xm����h��8��}4��l�{��ɹ�r�!~�+Ўת䢸;���hh  I��m�Z������Ú��ns�9 �L*�8{q���D��s�$�R�����i��l���f��(dw���.Jq�.��?��\��o4Ŧo{�u����'��N�)v�!�I?���+e�]� X0�"�B�X@f'g8��G�<_�<�O��"
�>d��F)Y�~���<8z<���f��A��o���3���l�O�.��b���7��m�Bt�uQlp�1�����|E�o�]��<�V{�!]8/��M�-�C�;��]� ��[|�/�M�ȗ�_'�.!M�*�K�9��U�z�7�~��������ژ�w U�	�83/0b�6���P��&�����e�9x�@�*lH�P /�Piq��x)�EPj��Z-^�k~ ��B��
,N zjmgxo�oB�p�����@d:��g��d�+�;��1�rn5;f����
��H�g�эR��O���9]���^؄��ɫ�&wo��?�{G���b������Z��x	��c��=}��(>��!^�W+Σ��~��z����QaH��M~���|I���Y�(
��U���
��y~����CY���zw���5=P%J�Ň�%���<����{�qoaؤτ�/�S�:�-=��Vh�����\F�zq�P�U<-Jb�2�ѮՌ��#�b���BD
�m����keqhS����`eP��Wt�0 dHI�$h
E��8���`�&���Uhƨ��˭h�ZJKF5�
��0(Z-�$�$cD4�D��Ĉ%$I���m%A���a%��x�9��1jI�@`�]��s;׳���5��q|��큆у�^-q����_��!��n?��P̍Fq:=��@��ٷ<29��>�/b��'���.�C��N�F�1�J���<��X_zaB,��E��T��|�3J.���/�~WƝՄn���s�@���3��z��\;��@7�_�7���'�j�1�xYIa���n*���B�8�D��e��w*��uctBdQ8w�L����Eݖ+h���ƌP�� 0��3�� ���6��m�}0�[�Yd�lQX�X�b�.J)� �9L~ī����{��^�Q(��Put�a�I�I�(l2e��<�apyE~,�J_՟�/�U~ʏ�E�}C�2<�FeUv�
tڄ}k�o�����������f�fp	 �SF@!8,1�
�������z���X��V( �0�:���b=���Jmi�cx�+n���G6q�$���՛����4��~�5d0�" X��vn�C�l?ul��j�,DjTR�����Ȇ�����x�A���u,�0�!�Q!� �~�f�h���#��>��?�?n���x9�q�W�O�X	~"��@.f���$.�S^A�T/�]��V�>ACj`�4�	��]2
 R0�E��n������	ƈ�/#YT�+���CF���7ZW�qO����\�-�C��ɀ"� � �l���`��&�-o�\� QJBC�!z�ɀj�5ܔ^��RC���p���,�")�o��Ty*S^��Ģ1H�c,!	��r�80Py�P�᷎ve�s� I�2D�b��H-Zh(�`���`Pęa�
�1X4���cq@<��P�V��H1�§���A�@(Y��@�$�۲�s� R�������v����H��gn�้W�����μQ�c׻�9�/��E�����P���
If�����y�
m�PQO����{P^"��������-Ί�g�7��Y�P,�؇�}��B>ǯ��7����kU���;��ՠ��ҕ�x���B=O�2~l�W��3����8S� �l(#X���M�s�.�A�fb!����h����+;�4;����eL�8��~kE� !A�Z���QDY2��A�}��|u��hCq�ƈ4#, �2�y�G�S �b@�
�J$��.b�Xa�H�H�s�/�(��@�\4!^�
���D��J�o��+���zU���m�8X<4��fD
�~X�J�h�� /E��N�[��{��=�.��^;@�̓�Y�È����h�*PJ��}��P�Y0�7@`������ɮ��_�9�tD�/ӷ�X�	2x� %b����M"������/���U����g��q��fA�O��������h�7��J��y}KP;�% }��^��ë㫽�,x)`F��%%����Ra��).��H<z-����">���%`�m�o����W���3\-h���Ĕ*S\�th���q �xPF�K
Sm���䲑�U5���w9�m���iw�j����&w�K[�H"��6�-h]�(2�P�(dG�@`p�m�
s��R��i	i� ��`1diA��&ȃH��(%|(

�` XF 
%�!#R	K4!11�2���0 �)���6A��(��Y�3�n��~0�v:��9���$�I#ΝF�O'��_j2��������N�������ī���S���Y�Mĩ���m����K�x��~�͑�C�i0������b�yv��ZWބK-j���5�E����/����j�߱?��F��XG�̭Z1�!��ܷy紽��4��c9U���F2A4Z߶��p-�GF��fP�0����y��էc'�D�T��ʹ��VL�Z�)�(�1�Q�A�6��E��H�	L���E�K�J\\$K�xt(,
��E��j���X���h@L�4
�4�H��8䉞:]��lq����Ps&0	b!m�sz��k�z��l2m	��BY�� � A����& ��v��?��ηh_�`�;@�N�jWA3sw��f̏�ʗ20�P�-j i�c���bzr[fȠ�x�������l�y� jt��n$4k��`S^�/�Տ��_�7���] �*�M�e 
��?����"z�hiL!�^ƺ�S�n�vx5����*��ov��j���+�Ї�|N��~�\܏�J��h����UDnh1�Đ*����9� ��3$��a�!�9���D-�&<=Ω�h�/w&�i
�H���)�$� ��Rt�	��T� �	"zI_]��B8e
]�<�߂{��� }����]@,�RYRfP����/XnZ]�}��Q)z��+(1�D˸��0����T�8���L`�a�0ZF�&tȩ�A:҄��E� 
�V����rtiqD�H@x��ʕ�BR�f��&D$�)o���A&Ct;"��U��`T@`Ǧܡ�od�2�6`�>�"os������tM�q��>������~=�N��� ���].��ѱ�7�d�������G�f��ԅß��I�6��a���&N C�T�
�!|X�֘gw�k/B���������9�o=���ʡ8�{ta�\c�����~:����_,�����t�EY��{�.�8Ǔ(�P��X���'(�>��6����1/foe-މJ���zi�@D{Y[�di8���l��Nldc=Xh,`%L�������e�&�����%�/����T�����.��Y
��PN�����k��W��W������n��m9�L�^�H�i
H���ٲ$�_�����tJ���eN�>�+LSG�Y.�}�w�ɡ������ڈ$�K��TTH�B��%06�" دF@1�Z�dH �Y푯l��q��PRekv�N��?�+�t�t���f��������s� h�AYdU��&~�Zr��o����y}�����o~?�����q�x뛄��&.��|C�q�x�)�_��ԓ��&�'�������}�M�|���$k�v�t>��9wx��W��߿�_��������~ü�m�h;>�s2̇6u�;�#wz��R*o�78�P`R�����-UW�z�&��@S֒����*�ˉ,IB�|���v���(L�X�#TJ�/�#a	�1�qA�7 a�a�X2k���c�C�����������3����D��l����Z���{�����L���H� �5�һ���2���U6}�-���l藺���w���o���Ű?��k�#P��Ͳ0�U�D-
g�h�q0���A7�=�}�������G�O�.t;���46-.�A"�b��"JZ��F�!�F	�G�����i�-$�-�Uox����w�ڎ��jEz�e��VQ=j(%
�T#H�H)����u;�D 5��dj��  ��)�d4�y��B~a���;v'd��Qs��&�?��d��\������<8r����Z�����޿/��k��7�s��ϏM�O�<y����g1�����\Ҵ�$5 6���.&VB��۰Y���Z�vg����ՎA�?8S������XtY۸����'��T�;���=����>��O��{����s��Y���b�M������#���8�0����v�,�K���|��s?-﻿�Ӷ����q���lLf�9�����Yh���/��h,��yA�.h=C����n�y�<��]}����Eo�'�z��V	|�ޓc����n������Q�Kh$�����𜿥o�e�ȏ�����?N2�_U��;����J���e޸���Pc2����J�k�ff�ܸ?mC���J^������嚌��x��d����թ���Sh�n���8"X�fm6"�93Y�����ƭ�辨�&�t�E7�;���&��{���m0(�`zl-��p�~p��T�u��I2����������f.��\�m]hHĶw�ֽc_�17@�������C�tw�	��ϭ���i�G宿�i�~<��z�.��_�K�w\��c
]�M&��D��[�y�\�������hV$�־����O29�ܞk�{yԪ�YW��[�j�PiAI�i1C�E*b����  ������H
�1QR'	2͌�t p��IB�),���@�1dJ
�`���9��K`��鷻�����������[ms�|�p�J��]�<��0����SZH&S�w��a��dL7���a�$�X�� TuU�e�5���D�P�@���%��V�
@�Q�����Lŉ�A��� Z Id� F�b �B3JB<,!%Z=�q(1�Zh,��	2��r!gM�ݮSA�X��h��NA��;��s�۷�<�tmyҽ9{ܶ�軴���A��c�y�P�М�wv��7��9r�8o�M�V�NN<�dH�ܣ�H��X���F�HE[	p*��������\��*W_e�~�3M��KpF��7BP��߼{E��������ч}�3��"y1!����5�ߝZg^c����
;�AI��_ŧ�oYj���\J�2G�g��,9����c,�X�Ӌ��(�w\2G����6��"��k�Z��u ���9�V&�(ѥ�K�F�7	Hxo��b$�L�ƣ��!��~oi�{�������K1,M�an*Ӵ9q�x4a2r>i<�{��&����M��0�h�5� ?��_E7���f.�^���&�6p��kz�Ǎ��s�n��K�����ShG�h���%��{"sD�[A4q�E�a���c
�W�^h*���y�s`nunj��2�u��]�ƃ�dMb�)�I�@�e��V�Gh%��h'>��|-;��3��u�Xs��_�P��}�C  ��<�/�w2`R�p�U��/��3X���ܱEhd�7`������^�TүOgg:��#�m�Gq�]��s�[s�4�Xj����d@R4�d��"Nأ�� @R��H@  U<N >r�2K���1�ir�F�#J�#�%�J�SjT�X�@�svX��0�0������&,ң��B�L�����ߢ8��|�����6�5�P�
"O�IC�ǂGٌE����8���	O�=�햳��}a���6��jF��Ow).tYcCdU*��%Y�����h!� �{�8HDŇ����ƀJ��tw�O�� Ж�]I��:��	\��`$d��$%�tzZ�X"\�X�D��^���$'!,2�<E�@�C@K��\�	Np� ��v�TGh
S�S��k��M:]����@���~yx��iJl -���ʥ����d"Z��L*C�<Q���5�*�aMV����յ��nI 5� �\X ��_��K$$��bjniVo��&5s�~Ϛ�^����g��ϣx�QOV�Ow<ۼ"[��8ա�7�|x��F$ ��#0�"����K	� 8� �T� ��u�Es�a�oqG_��/�d�Z����}�"�>���8V�.�d�Gߘ�m�HC��d��l��������|���f���&�@zp�fMY-u��nc���(J�/�>1'ҧ�<`&4y>�g���}'Mn�$v��$w��Q��oq�ؗ2�Mh'ߌ�\�q+U�2F�	 (~����ivo�AK������/Y�~��@��''W�a-fQ�6���o?R����,�;�1L����i0�4�I�e6e�W&^4�7tOh����ܿ��������]�~T����];߽�m�L����s��}]���.�h��N�&P�z�'U4$h��9�b�>�7���S<����J������~��~�G"��6�FkN�F� ���G�@�w���Q�"�d)� Ќ� X*�U>d��,�b��\ ���0�DPY(�"(JX
�x#�k7�x�}*��L���<$�궫ۥ��f�=���]mɍv$���Z
��|�	�{�2��N�>JNK��|���f�P�c��ay�Gd4���sw�z�xn����CF�.&f���A1�b�Hp��K�A�~���ڍ���ߚ� Ƽ	MI0���B�˄�LD2 0A$�<h�P�>O��\``b"��*�癯o���v#�}g��8o'�:9��m��$isBJb��{���h~4�{r�gL��;<�~<[�j��PJN���r{����Q��6L��S��O`����ډ�9��Y�w�@kqT����J��=D�$D�2/T
��^�����Y�	XS"%WW߬�vT'疝�Pm6cֿ����dU�D�S�\M�	��lo&{6����C>���b ,��=c�"�b`�ԨӤEuq�X0�0�!9�2�H������#N�Y�1�E�.W��ZAczM�fS�p�7������9������|�[�Iȿ�8��)�I��0�Hs@H�|�B�.���I�#�A@�7��!��N��6!&�[�)s')�{��ۑ��a���(���޴�z}�{�Ξ�L�	�� 

���Ih��!,`'@�$�`��Ɋi1����=�`�k���06}�hcnf"D��+��ۏ���B���\�Q�9��Q�F�d��Ǐ?@��7ˏ�p|�����H�T�e/��n�0�N_�NA\�W�;{��ޯ�<p�Wz�j�����q���r����ڧ�_�r��/��,�5{�;�K��!C-\zD�`Q,�	��0O��AQ�G��D�"M �>� 	�\�c��:BX � ؀�i ������'!V�&vl�t�̖v�؆@<�1{O��7�����q��ޖz4'>�@���H!@)V2��8w9��a�8�1@�R�k-Ǻǖ&��;ܣ+�R�᪄˝em�KQ
��)UF�1��D���`�!&1�8N��ڢX�M�wP�s$������
8�Q���d&'�(<����H4�0�B1&M�&J")J�x0�]�`�)
���"�Q% \����Uب���9n���\�0�Je�+�_9�t�[ �+��v* 78
���A]_����AM���K�TO�Ie�����_SL\�v���ům���#��Vކ��B�cЂ! �!���A�4n�h8�����C�i��^���o�i�Qo�=n���og�L'��lՃ��)<����þ�Y��~�#XҝǀxR,����~�)���:b��nB���x�ϡcL��%g�C�c	���|��������1��Qa����Ä��@C�8�ӛ14�wO"��K� �;�m ��9��:�P�M���r޷�(>qe7sl>���	KAF(�|9�u���?�ȵ�/cJ�Y�bX��<j~�|�
A����?ǒ�W��%�̼y���z�{�x��:�\F.�n����[�Cz3푰b�G���\�8���
w[Y�pF���-�������m�X力������������;c�vj�ngg�x��t>�����ť!ٯ�<d��z�pɳ�9W�E��	.��tC�/�ue淾��L���I�e<�s�̾.�Y�:�S$�N'��6�y��ٟtM�7U�h��(ӂ3N�,o�]8� @��$ ��%I�e��9��%� tYaGp��y�!��m,�04كR  
b�U.H���.��m�}*l�;n�Vlxw�f���^�_of�՛u���{�{��$[�:�R0(e��E1N��%��Ĝ��(>�	�6j5rQ'�=f��3�\�� ��2!�C�)�.`��@�1*;-R|D��t[`�X���� v��)�&F].��w�A �)b�F����P4*@�@pA�2�4����Ё萳N��4��ŀ L�>�( 셉�*4R�(���B@��~��鄅Ѐ�PLI3����|�Wp���潛� Ϟ�Mʰ[o�q��^L�K����}�
�؀�N
^Q�)! �]_�ZY+{�z�]�� (�M��
�T'�a�]����W�]ߘ�=:~�A/=�3�m�>F��g�~ �b�ck��\>9�ϰ��)Z06�J�R�饛� @PH$�Xnd�aQH4֠�� �`�=�����?��%��j	�:!�P  Z�q ���#����b�F4G��Z,�E�e�����xK���8�7�Y��,Bx�sf�!.��drב��e���i��u����0)�q��g=�5F���l�	�&�����̬���dd=de��CZA3�rm�����%�a$i@܅|�� 4�٫ z��2p�7`�)͹N��;��DQΠq����l�\��0�� h��/͝N�3uε~�g%i�y�؝��d���[�Iz���l����2�n�:�ǝO�*�߹opmn�G|��<I��з{ ��J¿�~ݑ�:�'�(����Y��a��@��%�2���s��_7(�Ip��L�i�,ȸX4��&��UƉ (|��G��
�y�����1K���R���!�eq�Nj��p'�J�:�3cc�d�4~�u8�? "�����]�ߣ�;1�9��}���on��&8�#�:,�`�=�X�j�Wѕ�]M�	v���=��z�����v�;�Kr	^R�����%��E/~3��5D�,Gָ���19H3���&�h�T������c�,�X��`�J�8�r�8B�DLb�D�ł	Ƒ-)� ԕ�ֶzz겧�d����e@�HQ�q� �v#4	V7O�@F7]� B@x�=L�aÎ�Љ;=��\��!ܘ�Ă����Ew�h���{&.Yi��a�:�������j�gfj7!�)�U��'�}j���������
�hKe��Ps�i/5��45d���&�� �$�RKcԧ@��������~����o����׸o��ij�8Oީ3���$vsq�<��l7J@�(��qA�@
��O-
�A@ ��Q���{�wwϹ�K��{�k�6��A��8�6���2���$
�CN�[P��$�;�[ wd�����/�}����ߺ��Q�W�3EOwD�Dg� JU�y/�w���[���5�4i���f�3)27x�g��  ɭ�&YB���(������vm�\���;���R+�<����n�NQ�4$�����4��65�� 4DC:��:�ބ�$\�u��f��z�V�T�^ ����# �w����܎&a�W�m����<�u�g���~`zy��LFg�}��V�]�'i�]�
�	0�@�6 ���+ �N����29���l��N���d��3;y��Oyj^w���/��o2O�<{dq��K�C��\�] � K��B`��yvY���$�e�.y��f�c$�� �! ` �@ Z!"h7�u�}��(���z��k����������}����ݹ�v61t��՚%:�]���-�&��5��-o	zREȱI8�F|!��=�ս�8�iI-��A�u�X�,���-۰�-�wuS7�Rja[n�m�U6�e�;tO�  c�� �	�T�w���B��sF�F���B�E�bP��!A�2
���6K  
�dN�N�z)1B7%���'��
�
�, @�;���<�"h��B��.����g��8����WF�<4�P�TO�n�H���O_�U��6�4g�9��m�Y�0mE�{l�^���Ԍ����Yn�B	֓761���c�0C1�P�$���(�B ���0��U��X^5]x��wk�.���x�>���w�{�{c}v���i�( @�E�S@ ���i"�@�*�XQӊ��p?�J����ϼ�wx��L��A$6�Un	B�&̬�Z�ɋ(��HA��e}��Q�̟��uĶ8�Oz!ɤ�:ƕy�Ü��4Y�Ox�?"��85����cz�m�1H�w��rR�$���(��ʬ+���	�K�4��ϳ^g��)l�B���=LF�Xp�.���tѼ������W$3.�:1.�@T�*UJ�)p�	H��ôm�{��nF88Uw߱\΃H�2�gïouo�u�}Ҏ'���n=*4������ޟ����$�#6b!�u�yn���N~�����C���c�    .�������Q�f��48��S��Iލ�2=�z�Bg�.��r'��"I�4�8O�C��=�H�lq�ł��iK?�{�Ц�8 !m�HK2�,	Q�Sv����A��S � @ُ��l��;�����;2�7�����������������߮�+��1�a�����:�ާѝ���;W��o��~3�+v�/r) ��,��X;3��b]ok�˲,ɰI��e��/(������_=}�z��:����ۼ%:Ӿ��PO�HO�@'�L�!�>8R���K�ZX`�ߝ����|f��� �-�8�2�{(��1� (v� !ȭ���a8P$74���P�;c�*� B` ���&�#�9�#��~���n
��নJ���:+y��'�� 7s_ʓD��^7����T;e]K����,=�[1S��m��m���|.W�/�	~���LymvB�ݖ *d36�!|]��!T�t��wjS�O����~��a�;���}R۱o���g5R��AS�o���l��Tr ���E�(���X ���Jh���L�i�R��h�����\�Zךְ(�I nBhV�ZN�E�p�fV(��@-��	&��uY��X���:<du3�i�Og!�����)��
)|F����̍���g�!�W-����܇�%��`�k���3���;�J�;�ʼ��LKJ���ڤtU]�C�)|~�*)&$� H\(=K��[��������ݡ�@���-�.�־�f/� fJ����
OK�G����z����)^O~=��?�|���,����s� 9�+d���ǵ��r�����R��b��G��㳽��FoAL��V����w�v&�i�Lj���� ���hbqh,�e@� ��2�I8����(�r���Y�O�1�yz4�h�\�2M�	&Q�A0 ��t�c��0�l�)�tG;���~������ߵ�����������dc� ��F�>���]��A���]��M�v�2��f���q��T=i.#��{�:R[	@��Z��%�xT��z��W�a�-]aUCe���n�R�>1�Ȁ�FB�}� � m0�0�]P�B"� �4$�ˤĭ� � �P��p���j;E����TI2�.���s�~z$a���QE��̳ ���[�����s#߱��BIx�:G�����W �I�G�@��|�b�<G��*100 Ј:!� ���Bu��I��� x����ہ��K�cT���8`���#���� �e�f�~�Z����Oà82	�����n���	Z<K��Fd��c�AB߹��3 @�D D�(��BM�6n~��4ǬٖkRk�@�	)Q��gG,1� �h$,;h��t�	.�oS�L@�p�d�E0��u��̷y����,��6L�5r�+�'��z�����SNa8TI�B`l�"<�t�3��׸F��c\��r�����;��2jR&�]3�hJ����h=�����4�B"��ٟ��a[�36�p�V:�D���*k:���Yhi������wA�lY|�?�A����J��\�N������ߓ�s��}�9Qwh��o��>�&^\464O�����o�v�}�-�V���|�7/]o(��嶓������[C��RsDq��44����o��pk­r=C��C�W����8\wc �;yW�ﳆne'tN:OP��&F��t��5��!����Pnbh���X�m��inB����'���*St� �
K
��0 ����D�8�����w�W3�2EN9r?��w�]�ߍ}���ᾅ]4;���;�N|犜Iw��>�yv�7�O[Ğ�+�smߦ_EN,	����p�z➤'���)B*�L�yw�}#zL��IM�9�9�>�'r.}�säN������A��e�!�j��>�H�9���n���-D���j��{xy�UBи4��CqC6���	Gc 87{w�p,'��.w�]��Qţ(�������B'���<�c߉�޴�_�kQ��3��y)�P+�ڥ/ϓ4�Ķ���=�ϜM�D����H5G��W���p�!0И�i{��g4����F��pzi&#�&���L{��,��.��0{�Cġ	0`�hx�O)��DJS':@�J� ��XB��LB���x}�:;�E��1�.�p78�Q@�k�߳@`H��bXi�*���7��B�ZU��e��"�(�Aa�g���M����5=�;�c�eR'\��N@��!b�?�:�)�]:#�'rE�ܑG�hL=���|�Xgs��{J��L�$��7v�Ĺ�D�e���������o�Yő�I���]Y~S3�D'��1n.l�w������dS.���C4$��bH�F��A�z���t񵂁�� ��E��V��� �3Y� �=�i�g�
�[����3�s��N���p}�gH�\m�^������Sd�j�g����G��37��&��ç"��$�Yr��;%FI�40�ʝ����;�
7!�'�~]����;��5W��J~�^DCQ�]�,�C#��e��Jn.��X?��8���Ʃ�r��]�i��F��c��F�S~�	��0tH�'�d̀*M�S�p�b�3BԱđ��Sŷ��y�HքoPwe�'��x��9�Fٳ�{�|��������-�~��[��"�kSP����zM�	�&,Z4��~;j�(�X�o����t�.,˔�Z�Ʋ�+�-�CA%\8��x�2���C��Z�1ˈ�x�X�AH#Ò9��r�C8���c��bP��q8�����1�1�IH�^Y:�B&(���n������0�JQBpXr��>�d���>�o6æ��^dp�ό�Ν�%ӔK�R������f_~$@�R��2}��$�FӰ�56�=^x|�]-Qd4Ha�?I@�5��=��@�~X���&,��V}��E�|% �D� ��M��|�
`ȿ���P2 6���s��ϟ��ð!Q���׫=��+1̗�P}�x���D��(
  Mdg,e� 4�.	�A�V�T]U��J�R�(0 \����4l����hI�� ��A[WG�P#�� �ݡ�5�H�����#�%�C��<�K$�t����H$��@��ˉ*�PNN1`Sg͸9l����׫:mn��q��m����x�t-c,��K;�#+fB��`F������^�c�z�=֖t�D�-2ԁ5L�	[`���⿥o���͂����3��p����K�+��.�n�����(�+���)T���w������#�s{˳<�gyv��p����<�p��s�P^���x���^̕��K��}q�����y@�3��|��\>3G[чw� �&'�	,����k���;	�OV��?��ם>>��N�#\|\H��8�M}'��&GI�9VєY"	�`Ѹ<�MV���`������*MR��&˸Z�"c0�,3B�`�"T�, �������<��V�~{��z��땞�l|^Я�k���4��j{���|[����!z���߬��]�C��l�uT/����U���;����=J�h�`q��)p���2���\�l-�h�b$\ �� pH$�sw Jr,f�(���<�0������q��0C\禸�mf�I�n�l�D@��B�1=� Z�pqD���4��#�0m�B&G����)�>��A�P�g�MɌLwO�Nv������}�8���"�u�2���+���2��Z������Ǔ����+A��lpt�RՉ��7�R8�TwEFeT� �zs���j���G��{���sr���G5�d b�Ͽ1�
 ��Y�FOh܁�K�x#9��8ɜ@�a���v�m�y���������0"��
�_h���&P A,�� ��`M��"��62{~����4P�W��|�_E�Y�rMo�w���VW9V���>DNu
��Ĺ�R�!HI}]��鏓iC[<�Jn�А�"�at;?kv�R�篟2�}#���qud#���f!��Z���="c^0Ϩ�b�������3�>f����x�|��l��ѵ7�3���]�=pF��y@�̫h���[��MDY#��,s[4�/B��:����/_�7�N�dp�*�����N�N��� O/m��4�;|��릯[��~����AD�jݑ �DF=������)�7d�V^�۬��{����,Xz�~q�8�Ǐ�s��y�	�e��٣���� Xf~�=?Ǔ�w�c�����9�'my��M�����*Z!Xg�+sչ����o~��%��;[<NNc�>�dQ .NF�"�#��y��&����"��%0�2��*���X$��  ���`&T"����d�|R���/[�*j�k-~jz�����W�'��;��|������4�5��D�n���C�7<!u ��.�V�{	v!0��q.��+}�L'�2�b��S�ҕ���&�TX���SK�'�,�ݕ,���p��Η��e%;��K�ړ��M�q$NKцcNg|�\ux���N:�>��õ�ݬ"�|y�zk=FLP��
���������g)���L�3.r@�di)M����0J���h��\<���ib��ަ��7�[W'����%����.17��q��[|�v������3�>q�k�ɔzT��q�"R1��%5���ÌDɈ����`ԻD�s~�L�1����R����� �B T&�4?U�Ȑ22$���縂1T��ǧ�h�����M�`�S1�%��� B�J;�SS�\��;C	$L��4��"���-C2W�lK���7�@�	N�+���U�j��ُ�A����#��e���z��޾&Q�����-������CR�l>��q1�
��_�?��{�}�	����x�#�|Ȇ���B.���L#3��a���]�3[�'y�y�[�1��l%A�ی�DgW;+���7�����^ �����7mi9�լ��:�@���_��t����/'U�3O~o�03���gO6�^����8ս��k(5�kn�ؖ�m�����ײ<��';}��+~����-�nw���o���S� �[�k�l���ݗ���������_�ճ�wq�5����D�:Ss�vtN��(�=י2��yD��#YFYD)��zyﰽ�����;B��BA���HrJ�cH��\n���ܠJ A�0�; 	�x�O�"?f�]ڬr�S�bH��e�als�ۻ�;à9�A��08�lX�^�a�A[��S���x���f�\ƟV|����̫E*V�o����m>Q�hy~yY&n�dV~��%�k�%w��Lf��a���F������C�n�����}�9gQ�f�[2�����]I��1c��#D��K_2ڌ�k��	���VC-�b	��c��@�8�b���f(|?��g�J��(�z�W҆I��x�$�i���vHH���M�@��褝Ĉ�tRB�%�\@ 0=�&��� S��kۃ���J��=7���O#���i^�0��Ǘrt�chd���D�����4���~�;{y��C��jH�}����fƉ��zm�������� ]2�p��r�<P��5��~0~}�``�O��
!	���, ����P����8�+�?���ր�U����:Q�sg֙o����i;�L�PN��  pme�����1%*I�@Čuf"�[���v�uF�Ð٢ͿʟF����=w�p�4C�&�<�GD����� n"��\8��������}��,���x�gI�7�(aN��} ��^���_��"$��3K����s���G"�	}�*�����w�-�����`à�`<v(�#{m�I��fxu�<*# ��G�m��~J��i6E���E�P����N����)�'��f�Y2!|y[ �V����?Ϝ���["D�@��Ә��������V�Uh�����l�ۗ/�މ�B.�=|�Q!9S���C?�w���xr>Y���e�Do=�f4�g!�"�2��w��h�j7�s��%��4�r���WJ��hH�Xq�8)�3�;s���I�+�ϞO�IC�T�E0`�U BK�q>$G�.����eV�rF�&�9O��P%O��2+weV.OxR�IY�0"(�W��h����9�q�09':��~K.C�r����D��Zf�]_�8��ޑ��6v��w�nns���e�j�61δX�����4��ſ*�>č'��Sp�_P��O��ɻ[p�l1Y��ٕ;;K*>/�Mjl��RYt-Zs")�$�n �����Lg��#��  ΚJ��{Y�\��|)Ρ$�-�Y*�C��l�a���W$$�yj&�������)^/�;N�E�"� ;��<*X<�X � ( �]�_�_��>��y��}d����~�`�y�1��Œ?��wŝ��uP����Z��|����͏?dӓx�&�}Nt2�R.%���`��^��!荋RE�䒇���b�E{*k�^qT �܁��DgP)�A��~*QS��6�߰���$�;4�@��g~�W��H��?��	�`����y�_G4Ig�Z��a<?��h�L �h�e
5ٷcd�����J3w �Q	�6�e�yI\3(%8X۽�����9~Q0�C�#C��U�m����>"��$�����pY^aK��I�G�-9ߤՕn.ſ�G����&Zc��b>�� A�I%��L�v*v�"����Iݒ�Y�8d�a��CH�	�i�D�³���s���k���N�w<���*6�,�����Y����S�4)q ��'Ϸ�y��Y� R���I~��;~������+aA"2D6��o����%��f8 ��Ś� ��)���s��4I��;�~x������cn�\z|��T�G�s'�d�P����~���Vڿv�10�ެ��W����Ϳ�}�{�u0�|?�/�A�ֺ�p�ۗo�J���9��x��<*)OuU?[ۍ~��g�?��ٖtn������k����P; k�X9��X!HI8.�V�(iJ[�EHRZ�AZ��A���p�b�	#�ғQ����Hʉ�8t��̣��Qҭx��g0�G���o_Lb�nRҘ�m}���>������}Rzrg�U�+�	�G��d�כ�O����'7����=;��0,d�z�3����~��U:HgtΜ����K��n��˿��{���ޓj��g�\�h�Zԙf��������S�9����=�w�T�ĝ�������5���}�!�b=~�D2�Y��#���^��F�g'��C�92���e����k�}m�2�����=�T��Qo�o�oZo���{/}��}�JS�Q�P1� �5%U%�P�hF�@A����~�k�a���N'��}��7���P ޯ�+q'��	�?�:�4p��a����{��_=�������M�..R� �$ ��& �a��462�\�A5g0��"�G�<�2�][Q��&�ڢ&m0!��, 20�aa͉��cg~2G�TP3�(����Y8�y
y4v�v�T�C�'��������w��?ӯ_;�����_�>�)�?��А\H�8�7�����=���/�@B��Y�"�>�>p�{��Qr�'ߗ���~�}�{ ��r��_/��}���{�{��Qr1��Tn+Oy�N3�6�),��k�z� ip�T�����ҿ^�5��;�~�n�1��Ӆ�o��m5�-^�d�dpaJ�"�U`��}�����7ύ̩�T�nNYTve�`�ubA�Fde��ò���q&�/y���S< ��t0�)����w�ӻ�V	s�M����}���'�p�3��d��na����
@���:�'ɏ�o���ܿ�a����u�5d<��)O#~���k���h�3��p��A��9�Ot�'��f$�Α�� �+���9��a<4��L�Y�_�:�q�� ��J(�s��=7��E{��v墸�g%��$Q��K2I�b�2�vj������o�9��N�U:K����E�8�>����1�SEN�:p�<����N�o��.3�sƐwy�U�i3�s��]i����s��bX: ��7O�~&;w���W��M6&G�+��T�tĀ�~�'�����̳�}�o4��'� +<��Mr߼�k�|E�Q�<�>�*[(�V�E��yo�������&����G�{���j���ݪ��YZҔg��=U]Pc�	�u���ʄ$���*�x�9d��Y�Z���[0��x"���2�g#T$�; ��-6eU�CbZ�� \�̑e��\�F�	�I��"��X C�M�S��(�U��i��(N������>w�:��.h�KR0���١���� `0�{���]��* @� ���bzQ�� 6p��,P��|S��5�{tַn,֜ȼ��!�-i}���`h�>!�c��S	p@A�8�&��o�>.k|�E�:7p-\�4/��������5�~��w������������i��!�*�~]!�0{��߫�"�A�\� �� P�ٳHZ4Ub�Y8F��^����w�%��5��'�g�����)f��b�\/	@�'Yi�y0��6�C���Drթ
��������/0�2"��ŸI��$�?�QB�\73|��g�f��{�?��B����w��"Ҭ$hs��^��\�X uc�1{i&3�V�W @@��os�m҅����[�Ob��了G_�p��ù���`�X��@4w���{����n��|?P� �z�����z�\o~��#��&����B�6��5�"#z�7 0{�۷J�db��p3�ѹ*k�4����cn�omv�� h���f���ǰ7{�fv��~e�<TS2�D�B'w_�j�ͅ�C�o�|/��c�$x��R����1Zb@Ҵ1L�)��}�&X�o�#�h�8a��L`h�
OP�B�6�m�h�t��&8fԁ�:�f����s�1��i�s[}�Voﴯ��M7h��#�o����Ld����,��s85c�u�{zS'n�>nf=,W�5|b�!���`�y{S�]τ/@��}�t�K��,9���"�Q�H#�锴ȇ 
,�8��'-������
��������ۿ����]���㠧&�x�Q���A ��%� ��N�)1�H�Pq��i4mN���U�N���AQD� ��  �R5�:yiwBf/b�j�'�/]�P6'~���  �.F:�Y��a��^j����������,���5��O�W,Bw,j4��i߿:K�ҵ�����[��] ֜k�N��~���޹^5g *q
�J<��~��Ci|��2)�MOrIJ�j��X�C����Ӓ�|���&՗5�¢d�s'-%6�۝ag�;����гs4�}������ ��7�Q�~�7�G⧀��a Ds4C���8��H���C״���ݖ`�԰Lr�qނ6 A\��U_(�V�[��
�������  ���-�!�\CbRdOB4�����L�a��.��~� �g?Adgb���>.LEU�L	��0�\hk@:�u����z~��d��Qa�i#l�a��z@���
���ck�(Q>]�Y硔��-֜�� ��N�>]�y���<����~R��{|���`�^D�O'��a��?����\�L�9���� ��ܽ�t��{IM���C<��ߖ��n<�����s���~���{�'���6�������x��(ӓ��g�w����%7��Q�v�g����v�v���#�]�}��c��;�Й����n�<J�6sL3�)�$���w�)�(�e��tQ���G��,Sb�G�ufq���a�י�	"2
�x�3�|�[�d�7͍N�����&��bTZ ����$����v��b�1#�O����)�ݘ��aL��	wRx�J/.��C�/>��s�6���H(9����vCg�j̫��*1�^iN���(`Iy�
E���
��t�Ao"sr��>�{�������r)k�4N�E9�lV4o��zO����p�"{��#C�U|���N(��I��` IpR4��`��$����! 	x P�����6�L"����+u����3?E;9��n���������4Dy�Ъ��3<����2�?/��Kz(Fq|�a�51���fx!I�xe�m�w��q�RË��㞎[<���kJkNnW��Wc���#(]������uXx�24�R�{ࡡԓ�X���}������M�;ʹbtv�=�ų�6�k���9�����x��_u@�� ���{Qss?��@ТE!PڈnTHA�p-�L��5>�?ɿ�?�����������U������4�7H����[� ��m�p�
�����\�e�/�������� � �@@��b�W����m^i��(a]��]��IA�;�̰R��f�8A0�LuR{t0���M:2�	�A `#5�����> |��!d���
ljG ܮ����������y���*u�<>�ѣg�ծ��ڣ��l?��]<��ˍ�܄��
��Cl�y����2�h ��TB��pEu�i���V���2�[@'.�w>�؍��[��_W�m�M�ٻ��>�#y���I]��^.�_~���ޮ�����,��ni����O0�T���^�~��5K
� � D���a董@H�"O�!m��'���$o`i������-�|�m�̲��S1�	�=�i��6�d�	��Y0�{ќ�t�����{o~5~�K�,e����m��¦��:����=ge��������,6�l�A!�����l�j�Mص�X��@��~��Ӿ�Mc��˪4n�-7ݮ�`��W���"���o.�^�Q�4��pU��ÝG2�T2o滞�Q�;�4
ͦ���q��˴�F}�ha�!J��د4�b�`��=v��c(��E�G #��$���!��;2�Nv��`8�	� &��^l�ǝ7��O@RIM�0�����L%�.�ޞ�����H����G��2C_W�M;�� x�_�z��$���Y�d�p���۬ڄ�a�ۿ_j���Kj��"õO��ya�!�!��/}���j�dz��*"C3*k3���$fM@����q�_ƉT��h��c:n�}�_�3ԧ;?�>��5ף~���.3�X��M�wv���I	$(|��~|E_�W�6>)���/T����I~���#ͽp�*a��':��>�L������,�$��.�����J�!��ߓ!ǀ���u.9�����M%��2���9\�xL dݻ\�d{���
+Y%=؝� �1[@%�#���N�����uXK^�=�f/�Xc���VMD-G�0T[�ɨݤ�r�9W��~� @�w�=���w�#q(��X-@'�$���i��Q�(���FB9�[�i� D����s��y�v�t�����M,�Y��12����$i�w��ο�c���_��L#�����9���7@r�������#.�����6~�?���j'gN�7\��w�C"R���M-ig�5�%�s�����³�	��ӥC !�`��d�y�|�>M��p�p��(��|�d`d�d�C�H�q� P,�*���`pr�
�9V��0k����d7 '2z�z�i��*{��n�oFǈznӽ�`]�d���*mE�õ���Ͼ�^�C	̓=y�a����a�i�� ���eJ�~�*_��e<@�r�P� ���F"p�lC�GN��8�l�8%�I;+}xÁ�_459��^�0���N���#*�C�d%(���P��c�4�"1N3-fi����	�lR"M��sT��}f��A�$�%U�PA�����N0��C,Wy��Q��L-s��h��>�u@hh0'�ˣ�#��	[�������)�W�Cm����kR�3ی�;��� d��"������_�A�]��{�⻬|j� |pV�/@ N��Mf�� �`��o��K�A���4ND7dPC�7^0]�43��Y~�Rv~6�q�����|�ž K'>?��ـ3;/�Ϩ�)H"�`
(5�D�C�͗��`0����`�)�h�7�揸"zc������k<�������� ���}�pŭs��?�".?�ߟ�V��U�'~��H=�E��$"I�8�O�4��\7��ٽr�29íiGw�x�p"v`	ܞ�Ca9��h�6��mp)%3c37BGK����.�g  =ȩ\-����a�7M?�9�H��ҝ�%�ܸM�}�ާ�"����`n��⪐f���lܾ��7�ܼ�.�-zw}��j���wE-��trk/y�t�^�y������n�yڵ��-�d�u�7��q�/�Wl�5y�t]�����?;z�^{�u��Q�F������z	����_^������?���N�K�� �(�I���
=�W�U�;6b�?{����Qiu$�L�� �I*|
������P� �qH �.i�<�)j�4�6��C�H�_�XN(���e�G�q���d\X=�Ã�v@��.��7�Tĵ����� |T9�r��4n�&.���# ����z���޿�.�Ft��,�L敿M{�UU\�s�Q�R���#��|?����g�~.��'���o�R�C��;h����9��j�,��{=��n&�m�m˚�8�Ƣ����8� �T�8��A�Wi(�:�9PQ��WI� F�����8�)��� �3�!�Z ��f0�\��O_���#g:�e���O4}f��2y��ݫ㆓����e�A�x��K��0s���1++�``��u!C9�5���R�_!���q�
F� (�[��򢥄0��y�`�=�]6+��&N���)���g�@�D`�q�R��+_0�	^�~���-AuGs{u��$Fi�bڳ�I����]�\��*u�t�d����� ��>j��vdW��s|�!T�(�s�j0a��%����g����͛��`�d�w�� ������y��I9��1���J��8����+.�,#�q^��$�K�������HY�����e.2�Qw�M륑�%S�}䱽U�����w��4k��a���	*F�?j���N�YK8^ŀ�~�(O�0�z
,�|7���5aA��5��Yp�Y��p����<��zf��#�����sn���n�V�����;D�+�[~�����m�=/����&����<Okqw���B���G���ν���}1��R7�v�:�S)� �F�HO\�(�P%~ٝ����O�$\߮�rT �#f����:���������+S�1Q@k��99�W�1��	��@ӦI�!� _���%*Pr��� %vI��]$�S$K��Uj���CH����hX��d 	(H��?<���G���X�*����C0�y��������b��w�:��&m4Ӷ�ˣ;A��;��W�I��Pg��z�����}���@	v]�#_	l�;��{�vj��!���+"u�F[z��:�Q��X�)FB�����Yӱ!�!V�ƞY�A]P3+��8�͗q�S�tb�5-m(���LK�<�$i0b�!�eNi�G�[���2E�<{��4q�V��p b � `��O{�����z\�*�6z7f26�N�/�e�����]r	ӧ�8\]��}�����>Z�S��}�Yy-]N k�"	 -���z^�|��b�S�5a�����Ű�#�|� Q���n.��O��O��_��3�I� ���8�⏫$F,0P �K�!q0��%؄��>󽓍d4��Մ�X�y3ߟ2��^��|?9[h<!>�-��E�x\��_l<#����2G*�1�aA4���U��X�:?�=�o����W��=(����Y���ůx����GA�	����}��En�?aU��͚e�>oq�>/� ���!Dcx�;���#I����w�#�2S%4wV���}�|�e���e�d
I<��'l2q��K_����B^a����Q���a��a�U#�2�L6c���4!�Bi�, %^㏻�ι~�(`n �X���<��[� ���]������}O� P��:nϐ[F99�wv�@����4�Y "L��9d��3]Inb'a���P�PN�����P.vc�7d�I⽃#�*M�&Y�vɫ��I�~9��*��4�E]<�����~[�m�a��y%;r�R�>������`P��B�(�cD<�6i(�1��� ��i��x�=�T�����.0��I3Y}�{`�6�WD  B3���z+��V��g��������~�ȓ����U�k򜒃{n�z�4/36sF=�Akۅ�.�  �����(rG��"���i�E�b!��뼵�"O~E_���uVS�HA*��ǻ����3>	{���\ȴd���"ݾ��\���L^;�g{�v2�ǶER�f�R{��U�M`�,�1���!G��<�496X��b��. zQJԩsE�����{  d������,�a-��� d� ������=�Q��t���^���ψ��g�\g�0 M
H��DD����޷
���#�G����9-Q���
6�LQ��=�4r�Zȵ�kܞ�NͿy/5ӓ�v�!`8��A�,�|B�� �8h��dULNi>�תj���L�o3@o���5���λ�Kf��tJ���i�'��9�A�5�z?�}��<��G�h	� � �?�?�?ǿ�?�m^���X��B����Pʬ2$ƈ}��f�1n�xO��]~�+���d������LEd��C��L�u�h��E��u.�3�6g�]Oh���g�]��o��U���w����l:Eg8S��D�����3��N�P���r����D��
	a�`	�0��(iIr���@Kb1p�)�ukٮ� ��
���Q�d�٘�������T1Q!�<~�q����[���e�qZ[�[�����^�6�J�y>/�~�'8w���qu�������}'{_�8n������U6��`�4�������۵�O�"�n}�*�I!0j�)KYw?���K?��S<����:�c p��N���`�rL��f�/H0�	�Pe|�x���g�"}�C��PI�U<)1%/���k��x~����|�M3��t� �������S�gȴ2S�w�5������C��׼
��ᒺ���o���Z��� k/��^� w:k �b��ӽ�y��.獽Ibn�bu��)3��<a@�T^�#^e����[��qN"�ℙ����ӼZ��^�f'ng�)Y5��]������v��H;c��
;���P`�5n�(����Yv���d��BÀ9Ժw�05�ܕ�b�%�YD)p �Q��ao��?�����Ÿ~'�U��_{�'Ws�b/����hߥ�?GN�$s/uG�����׹����+dl����`=ʋ.���z��}̂N�0Iu��GB�Z�& pB��d|�'̍�]�e�L# v E����V�w'�ģ�D�#���Ly��- k �J��w�g?�*��Lm�(�x�y��"�Ǔi��Z/"쓾�0t7x�Wci#�Jo��EEh@0o��� �(N�xt8�9]Z��cV�6�i>�!ns�\r�w��|��0  ?�|��O���?�~~"��*W�縏?�*
�'<������[�(����Wh��gX�1���x&&�,-�juNE�R�����͝D8w���+~Me�Ǌ����hI���I_��M�:`@Ç@OI�ɨ�J���ki,j������r�b@��XQ����4<�}7�/!�]�<��'��!����� h��w��i�dЎy���\(��X?�}FCt_��~D)������"^	d�� �[��>L}_������ �A�@�y��<?w�}��Gw�\ŵ�1�f�p��\e>��� FE���C��y���1O���o�t�1���EM�#�0H,
�`H�/�g,�<�!0��Ԡ�0d�>��}�0��BA8!ƀ=Rh���2�O�E�h���h��;?����\a�h�p �q\��Ǐ��^���x�}ó'��6��Ѯ��O�|�`/�q�"�sd���#�B0I�G���ޚ.�΃����݃ݛ~0����p��w��[���������Ç�/vx�˔m�9A�9EU[�en�l��5u0�1�+�F~��9��g�Y!�s��@� ����Q�O�:k\�D�.r��@�ب$=J���V�٦�:�6'���c30j�9#����v�9)�!�4
hQ���a`�v]|K�&D���q;�J:�T�O�����G��z�x�������vE�?��JȎ��Z)�L�� �_r"��HYu���[���^�SJ��/y����Y�nM����_�ۈq䐆0��&�p��&dCb`��n�<-�C������DJ��i�������\����M��ڞi�@r�w��;u@�v�����x��~���h�����^��׵7~+��mp��o�a/Pܗ��.AB@
�c
����	�j:�u$���'�Eč�xw��L�c�� �(3��������4l���E�g�a�eA��C2�������q�}&�����mQ[ߕ�+�E�4r�F�~���csÍ����z�B"r�٭*�S�3�l�I?�L���n2�ՁZUۙ�\Fe8��!%�n�\�Zݖn�Z�T�O1 l��.���cjONi���~/Dr) fU����[���j�J�d���e�{k����Kv�BCC�����F�"x*|���c�x��u^�I��\�)N�>��=��� v�{��T�P$��u�%@��_��������C1z�_�Sz�Gw	�;��!)Rh� �8��2�.�9&�2X� \��p<ZX�\ �DBbh�� 痓 Yt��~��&��R�5�(&A<}�	�V������~�^��ه�*J:�uou ��-c�O�ݻ��۸������)ݡ �PHp�<Uct0�K�&��Z(Xr���+:}����G03""\<n�E�@)C@�����2����ܞ�#cd�}Ic�uf�y#$�����w�8k��1�!	���&�6Y�0�&�I�4��C�1�ɰ�"뤑d �]úX3�i�d3�)�hxƐ�:\�1������=����7B4d�j��)��n��-�v_�d�����]��P�^ͳ�h#&�.�E�lC^T T�����Ϩ��P��`�V���e˳�`&^�� �Ϯ��_���L�&f��a���ŭ��ۻ �H	�Iu�%�� �nO���85���{���܌�pV��������'���m{��/T�G9�w:ac浽���o��W��}�}Q��������λ��Ƀ���C�w��:G�`�q���/q�i^���"7y�������*�w��A������_��Cn�sN�/�0����D�2'Ĺ���E"����+�'�+iW7��~M�[=�wj��CcO�uNZ�zwr��4pbׯkD'�~y�s	�:+<  ]Hg �����g0Q�bf��#Je�e�Q	��>��'r^����1!"{\�ݏ�� ����Bis
�M�ݧ�wi2= �<B�u�^BIh�r^kW�r�x��ü��ؚ�1�"��&�\l������?����s'��������E7O2��P�t�:����G��.�O�2f�D��8�/qĕ�F'|������CEq���2$D����x�u��&C�dD�����c%@AQX?̠I�A���㙼�}�ڱ�aF2jC�  ��䲣��O':2O���x
�n��A9`)�fn��<ky�d��R���R}�X� �H
�G���,�;pG��C�|����A����7C Fj��R����ז&O��K.��]����"~�	������q&+z?9������� �Rl,�0r!"Z;P�8�!.�	���0"� HD�3\�uK�,� !R�0���ʸd$*
  �A  !/�6Y�uV�ҫ8w�I.rY�����x�rp���i=�j=���hp�h`n���>Nh#dO�D!� �Fi�)��D�ҰY�DED0k�@��`m��ZNH�ZI�.wæ� x�L����M3�H���e�i��BW4<�c$f���M�R$_�O3)���y�y((�V�}�����Q3m������dd}�,�������^��������������{3�m�������f�
���ߗ�����{s_�׃[��~������3��V�8%�Q�	 E8�d2����k�01�38lq�q6����
��_ㄯ� %�����.��g:��b����i�� �)�b�7���ݨ�w�W�w�?G;Eo�~�ۮ��$^񼔎�ٽϜ�w�ݛ���Ab��z��ֶ����)�7*B��*D�Qͨ*�{8��f��_!ф�r�m�3����a�p,K'��������;�C�#Ɠ��S����G�h ���}x:���#�x26�7�e�v�ƙ�:��0��_���[d��\(��9�(���.@�	5��ۘ�9�Z��?�-��(<:��q����G�g�B���S����O|m����p���3sӻ)�Ng��>�E� ���	q���Ci3�c��6=�԰(� ��"� �� �F'o0�'�{I��3�S���6?,M�n���sz�p%��W*��Q�G�	w��ؼ�Y\���ں����k�8��T��O���C��X���y⅋r�9�ª���3& ��*�)��' @�@!S.���.�LȌ�*܏���KY_�W�mA$�*�8��L��� �8�h� H��p4��K��c1 ��A�1x$��k�àX��w�4r p���r��M�ǆ.�ۗ��I<���,1 IQ]���E{�1��@N1�|�\�P��m�����1\���?-������E�Z� .i9w�������&�X���R݅�x�\�����HN脋f�P��r�,���Ae�Y� l@�ҭ�b�?:sόK����z7�W;Q�@_ɜ5�d.�/��d���oc{?����{�������܍좨��:�n����c���V����{۾�;�ͼ�}˾V�t�EHN����{r��r��N�)q���g|��K��o�S槟p�����(�e� �2ש��"��Q�o$	I2�r�.�s?����j~���E~�Wy�����2��+�k��8Ϥ��C�/����\�ڎ%��+O3�����V�k0�8kC��.���責�{}�	%��0��if/:���eVT�>S�
,�ܯ� 
����������A_ 9�YI��&�C��I�}��t�)����&�!8s�v��D�w,@�>������yX�kq������pI�k��̛X,@�_Q ��n9��ͣq�~�!b�c����s�=��!�ܰS�K�;;�
:�+�X�8�y�b�+`aH���1��!�\%\=(��C1���R� ��x��"�� C�  L�!���h,�@hD�1�bt��6o��ߋ�2z�N
#6��Fc]ه�G�i�2# ՗��
n��y�b�B?N�sq�!vԒE
��w8�x���>�EH��b���WgS;F�9��������x����3�:݅;�1�>)�qId̕��-jK�J,S=m��$(7��q޹lҊ�Mv��g��Ƃx�����O��h4�8
'āP`G5�2-4�Q��@<HL��8R*x�> U�
\3P���sR��s�;_�.�����lp"��_����o(��<�ï��&�����t�YNQ�j1إaq|�dFl��P\#���B,��n%��&�L��+�jH��~�_7i�=�_�.��deS\81�2�'�$&BQ�o�R3��7U0f��w
�(��m�u:0+���pW����`�j.��\{^�s.?������{0����~w�������]��ub2�Mᵇ�������;�z��n��z����m�8
N���}\,��[,�ȭ�((i53$�e�m����Sf�[I��d����`<'�俒7ŕ��!!0��W�r� -�	F�R����I3��9nQ����fz��d�/�-<����O�Ē����?Ƽ��3��Yf��+h�v2����BN�[i^�*R8$a�q����̥��PB� �ګ�J���-�z1"mj`�w��H����j�;4����!,�ְP<w��	�s�r�zN��4@/1:�|�{�Ar�y�<�D���"hD�KB���c&�	vqii��ddC�5�V��F�����ŝ�/M�g��ey�B������6�|��[� zI����<���C1� ��"9T��$��8X NE�A��h�PǥL�]zd)�B�0$#F8��A0 
` #� x!��Pe6K�`e� ��>fj� � 	3��g��*���gv1w��.�N�6�lv�������لc������F�ӏ�W3E��z1j�;��}�7�WYrN��t���E�	�.9Ԛ�Mʦ֔�D�0�ϙ�2I��Г�]%�R��Q|v�'�+�8����	��#����c� �Q04@����1p4�$U is��F �(FD���y1�j|���X�ᑟ��������-���E&d��
�H��11
&t�hR������ą̍y�Y��n�=԰65����h�/�#\�A`꽐B��8 ��_��xQ[���j��(�Ahp��M@j�$�;)8�( ��-2��&öJFFb ��y�R���<b/Y�X�d$Z��lbǍg���g�����_ߩk����M|o�;���u����Ot�G�����}��{�|M�2w_��������&x~�7�� �h�,�������e��5����	�3�Ǽ�<I��o��Xe�U~u���kP�`Cn���J�[����#f�v]���<<���]~�,o�<�*.%��p�o��WxtZ
E�q�R��݉}�k��(��(���xy�<�C���fΩ5�CDֈ�l��gf�yo*i��	��H�g0 ��l�`T{�\�P}2��gR^zr� ��h��"���HF��\���Nϙ��<��k}q�^��gL����)j���Nl=;j�<�ۯa���hz�Pޓl(]�-�.d���Ң��;SHFI����U=��Lv��E������Ȉ3�#�띣0'��^���H�8d���3�\�<�EMN����A ��i��א�![;>��/B0�s�����=۝͋�a e�iPPղ��J�Ԣ�d�.����h���api�0P���d�&��#fVRŃw�%O�v�0 �I�"�`Z�+�ph.��M��������%1�5P�z =[�d�d.{��s�X��{�wt�riZ��4�ꔐ��O��f�� �����D5#�n�?ka6��������N��#��w��|4q�eҤ�s.�x*w�pQ�Ư�����Y�2g7����80��U����B3�Xu�$<�.j��E(�[,�G	X`�9��a�]f�>���	vt��	tEgYeyσX��"�2���y���qG���B��  ��u��N���d��Gs��ؔ��TW@o�m��%�������,�`���\%�v���<5� �Ex�� t��\2˚�չ)@�]�o{4�o������[�I�b�`7N����g/����$�t�L1$5�/ �*����I &�Ǐa�%TMc`��?��Y�0K$q���<+����j�����:K�viia?m������s%��׳t=��}�]��n�/ǳ^O���v��<�_��G���{�wk_��A��`a�(k�9��s؏jo�����}~�,���1ݬ`Aoͭ�"kr����n�e���a���������{q/���}s��0eS9%�+����cy���ɏv�@�	������_��ܝ���cj�`�X�0���|���؇=Q'�h�Fߩ�c�g�<�n7t�ƭ�?�R�S����|���j������k\g�G�&�}m����L(|7�㼗��ߤ�>�n��Ɏד/�If~�0w��~��������������)s��\��c��u��q��o#��pM�D������$�������X���v�D˝�3s�]Tm_�h��F?����??!�o�҃��f����l�}4��
�<}���װk�C�۴I������V�!������{�qD����,�����Q�dD�X�j��K��^��yt�G����%#?��NJ�癴E��@��>���lD�X���� S��p� M(UB���p�$��0�`4a����������x�m!�x�O����j")���	����=5�V�iXՍt�EM�4`AD����<1S����M���n� #Rk�U�����]	���#�����̈����k+~́�N��?������Ӏc h�3�6�h�@�4:��K��	w�o��n�<�0�͈W^�U4���"0�P�!jL�@H��#nqC�
v��H��r�s<�B�Z�� "0JDу�b�x0_ �( `G&��O�:p���^��x��=A�KD)lSCM�ޒK@bJ���L'{=(�'�o�"�Cr�`�TG�L���m�b犃�F����M��?7v�����[w���HJzS�g,8KM�h�ip��]�L�� �~җu�3 ���{��f�Z���N�`�����X�(WE���8˲�	`젂��5Ѳ2[�Q����Z�^֯��p>��}(�������������W���4i��W=?�=�	�?ھ�+[�ZA!@��؀��L���s�b�-$��rp�K�ϴ�坻��Ks���S6��Uvy����>�[;�����H��aO��p�.�����2��U��|��+�%?&����!��;t?���gou5�l�������l�8�;�%����� �@N�8)���w�͌�v�l.W�,��_���|q��˻m��%��l���3��;�j"+z�������d[�C�q���O�?2�������Q����%���Qc8���g"܄#>�I{	�:��5x�6�& �mf޿$]j��S"��I�����lk�VF�g���>=X����?�����"P�0��tY��ј@�P-�F'/��bz�AO���GQ� �t`� ��"9'�$ F@� I`�Xi��1
A�8�$+��ү ��շbo3�u�U�G�������hq���8C:8���3�5$~Yu�	�D'�S�Ӛ�m�n�w�>\���j��?��xD
�\��xa�N%j��@U˺e�:��W��s��z��#M���M�s,bG��� ���2� Ȣ g�{���E}�Z}Ve���n��u>8oa�0�i��D\��"o (�jW,�B(���(�t(2Dͦy�9��+��Ѐe�sf�q	�@�S��!@ �6k�T�j<�xh^oF��u$hp�'QcSDؔ�akq�\9�g9�f�s.�c��]|k�������2�wm��55���� <���?ǄE�4\���R�lV�@@B"x
�?�����ї��,�~�=����M4��ô닚xs@AC��NI�F0_�E�T��0����zPS�Ƹe���c,@Pi�-ѴF�)�0%�9.thj�~��,����#ނU$���`x�jeSo0H{vŐi.L���"<`������Mfq/�6�.?���nuC)7���śy��;~������#`��S�<}��c�����!�	��{R�r�Db�B\�b'�栓���0o�ʷ'�}w��)���i��}�ck����sI��hI����*��b�}��;5��9�\�$\g�ۭ��������|�$l�䚑@�2�fd�98Q�z�r40 � [=��6�0����Mc%G�10����pB����J<�5��q��%�&���h��u�ɋ�x��?�}㽭��j�3�	���&N��z��O�c���Z7����{�̲�w�z[TY&��z���>�@>��)K2��<�� ,4���ŠD -���c�!EF``P �e@�<'P�DP �DCd,���t�?zw�Z�3�4�$�0��v��	X^9 �U: ϲ�NB�Iw£��X\�/׮�@앹
=K;�$��Z� !�I�!,���!x��a��
�E�̲( �\#tYh�q����b�D�'LR�Ѡ
�e
�}h�~4��^n�`�6(۳���_��  ��:P pࠃn�yVɩP�C���A�`��2��s���b�]L�T�!�E�� 
\+�13�.�sY�|Ư�������B�Fʅy�w�k��I�b��H�q�Ѻ�6'ն���ge�,,2�sj]2 5+��N��ּN��`@�ȗ6x���А�plB @��A�/1���[�.�V��7o��������q�PFE�> �_�.-�cBȀ�xP�9���aex��v�K�pD��	���i��E�{��R�y�)ja���`G��0�0�`�I�H2pW�[YQ�^��R�y�y�܂2A�"ap�)���g{�5�@y���.nb]�3Q�IvGܚ���ь�hg�(	���������>C�����.O��|�<�������PR��wW��N9���a�w�����n�wzw3�}7x˹<��g�����A���Bh�E�`�O���<��_�4���p'��4;�n]����܄M�o��r���$+����L�3�^�Nd���?5�sűƗBa�o�/6��6�1��zn8���v�� �7=���4�&�9����N��O�K�����〈�T������Yå���;�S�{�"2�x��|��a��;�8�N�@��d���?�#�#�ĘE�Z{����~"zh�KE�I� pt��4(�@��ÐD B��`q`��� �AD&M�]E��
���|�*�4u+sw
Q��`Đ�0w5Ūbxv���S+�߈H8��;�&w��� 	�>NS2����s� A��qaA$���1�ڒQ�iǥLA��d�$�ۜ��K�I��x�F�}�Y�2@7I4 �` �-��4�.��ǅ�
3=�-��	$�|`Ă���HtPe	�"Pr��L7Me�GD �k�1��Ic�A<3x��``k-�xJ" �j  `��x�鋟����L�~v������)6Ō����0JO5�S9{�#_�1m�N:����	t{-��k]j��0E��q��Ia�H�ܝ�(��r���˹K�/,8����!?���:8Q�v��k'o��+ޓn�#��@��� ��{C�:⤺�oJ�3
.�Ѝ�#vЎ e'qK>@r�\�lʧ-xGƱ��h��-��̯O�q�r�$��Tڳ҃@I�:�����6��
_��`hXp��S����I���i�,/Pa���GD�9���^���ϖ��c&����T~����|}����?3�&g
�j�U���*��ś��r�8�l��"��=����>�HJ���q���WWo=���<�����ܯ}�F�/�vg�/l8!1H�Kx��]6�n��c6n��
'�֌��t����L�,'����~����ҽ����ܯ�	g��������N�犃��k}�������%���i�` H���pT&|�rw��ɣic�7&��>�s0�I�"��_��B�#4!��^����by8��y��� j  ��}J/l�Z�[�f�`���Z��U�c4���=�C-���e8��[��6U`0��4��&1��H��8�h, @,�B�qQ04CS��A�PLb�N�.��/�TƔ�X�pS���~eQ�4�5���@ lt7lu�ɩ�a^������l�$����\kI��i�b�#"c��D�, ah@����C�5]kL'KU�8v8�4<�o���1ʊ� �0M
�@�~� z($Ǳ�&rb���:���1T�S�Eߢ�;���x����PH�9�.f!���c��1�)���0
̲���!�D�n. � ��#
��aw)�(�M�  �x �]���q�8�Φ����_"�0?NcHNUX�ZU�eA���H��zK�Ah��g���5���DD�z���[S�hE!v��5%�,\��O-m�,l#�TĘ h	��,�B` |���q�P61O�,�n����~�  #|- �Iy�$�aw��59��?�ߗ����	�����z��oi�%�?@�%�T4^�@�O:H�W��jv)!hCi��s�� ḟ�@�uWGpT[.��T��C���(������ag\>!8D���ťg��r�"}����w�i��E`HpM���Ϩ�T���9�N>\w��g�M�����N�_w/��"��ο�����$[p�,��¢� J�Y.g�x6z�w�~jx�w�앷;t�K�ݛn��1`�Y�'� ϱ��#.L��n��x�iE�#���5؍����p��y�Q�Ĩ#:ٝ�f_�tM_���j�<j�?!�G�����x<��������b�6g
0�76Wz�b�	F�'g���S�u�F/�*tp��9�+N�!���fKk������_�x A_w��$
 �㶦����<��c��<
��F�%d�j�Y���h�0��!����R~�Зw����(:�cP
(1����Dh| G �A��@�DBQ !�s8
#�?� ���D����k�F]ִdP8�r��ˌ.����&�9�J�;b�4ea'�p�D��B&l.T��:ŷœH���*��AN��]5���&��Y��g��҉�.E�� ��њ5��0�Йd��n�֎�#a�"n�xq�D����aEj?��w ��O��v�w���9�~��ً#W�H�;��|&BЯ��J7'X�(��*�V飆�*Pb�3z �3�J�l��� �1H Q��5����O�]ٗ���//�61O�jL�d�
�0��C�m@��x�3X6KV)Dx1߷���p��!��|'���)��M�	 ��p��
ٝth�H@8��`�6��U��B����T��v�md��P��+pR M����OA���Q(��Z�9ſ?
�Ȟ�6�t���C �z���X~!Yk��w�4r�s��G��\�1$K��=���ɤ��JVd	VP�M��o����"�c@��Eu	��`1�UhACW"F��/�p���e�v�H����V߰}���|	y��_���qW����&�O��矺o���������3�U��o���W�ƹ��}���<sK_b\/��E>�aa�Xr�����@����x��Ț������j��y��<7�����o��Y�E�e�� }�P�I��.��;Ԙ v|>/y�ygN���+|^�L����;y�M?u��v;K�������g&ޘ�0�x���q����Í+�a�\sj��l�9���Ln1��t�\A}��s���d	�p�&�E$�J�L����#���m�dχ101K4vP�Dy���P�:����O��N�<c�����������lqI'N�2V���G�$S�A�>�����4��P�"�6� X�,�b(P�h$`�a�C�  K��F�����w�׊��ka��ۏ�򰑢����K)�e./H}���d�z��܍?�@����XSouK�kx�7�_Ͼ����O�%�ѩ!@���t��wf.٘A�ܖ��2� #|F
��փ-����=:J�p��c�D����iaC'"mk
Z��U�F�Q���j$��t�2H��)�Vm�`����}0�"��@NC։� X UC#��9k�Q	{0�+b	(�&�x�x�2L��<�x0��,�?�X';��,��@�]-�N��w�9�P��鷱��6e������a���͉���$�
����S� )�D��nD �BRJ�`'jWH�	 ��[kʗl�����	y0�z�ˠ+��&I&`��,[�Y[ �<y5�6�W�'������@�����.&�6׍2^
�8U��X�������!��r�("v�Ou�s|� W�J*�4c����GP%b����	 ���@�0~������eN~�����=n:��?��?�������������wJgSs�~U���۟c�wxOB.�#$�)������{|�7�J�g��lQ���gw�L{�NCz�~�2{�����n
3w��x:7���A���q���\�y�����M���	w!�#�#�희�WfZ�O��ǎؿ���J��s~�����9��[��8
S�[c4���qp��:j,�9,N����؁��8��Iz;�`$ �h;ow�l���}*�ʍxV��J��X����I�����].8%Ti 7nr
^-���a���OcV�B��0� ��(U8k�~�x͗��2{����_�OQ��s�.�hs3�$T���}d��>�����K,�|�?a�����&-��&� ��C�â �������P������I|5'�]�-Q]�����@�h�6�1-�-$�g�@���]6�b��~�¼��H��"y��R~���q�~�^;��t� ��  �ӝ��Ƨ�!	�|۬a��2` �yzUW�ԃ�I⟇#��+�
��C7��(ӏ�E[�KȈ��F�f(gt'�FCO�	rdn����k�b@`��vS�V�2� ���@3���Gx" * � %V	 ���]!!��ǐ��$) ��j���H�!>c�P�N;�y�B�x�XJ���hC�՜;.��)2Ē����C;Ic`�F�R��I��	�E��Ard7�Q�XE(Y�է��� �t�,��!��
6-C6MdLO=���)�$q�Ӑ.^On���C+�%��noWZN-Jw(��H�-�hc5�s�^cVN ��aH��4M��uMY6!���Y%��d;�j�8��%�,�m$����P�e{�YT� X�A�`�
c���$��D�M>�+o�Y�b (��`��nٺY�����f��:��'��N�����s���O���خ���˺?�����;�yb���*-�_o˷�}4�q��-�(��Б4W�:�
��ģW:2{z������~[��Bav�r"x�1��I����k����{�Lg3�U	�Us�ޜ]ɽnE��Or����t}3s67���	��_z_����o��D�4`f.D�1�'���2=�{b�9�p���A1�h �X�+���)5�e���{]B̧\^�}�j�l��ܯ��Xλ���:pཾ^�L�e6j,��=�=�R��n&�K��Wd�� �R�q��	(A��4a6��n��Q�gT8�X�1!���	�P�FH� �<58��E�p d` �,��`p�Y�A��	���k����tu���f�.��b�h��t��}���G�G���G ;Z�HP���U~���ĝ���}�쯟[�uTALЀ/7LR�����t�39���djz��x�nd�����ʏ@��3S�81��U&�C�I�~0�x͇k�xZOGe��y��WZ,c<�G A"�o�T�H�ǰ(<ER
t�ȱt(�� lJJ�G� 1�*㬩���!�1�ۺ��&;ve1)DD"& �� �]��2X��ì�;���2z̐<�=㮎�eG�ީ�%��� �%��e��SC�!ư��-�&���b��#��8��d�}�U1p�|e����RA�MB
��r�@ޑ���<]�IB��9Fy��v�W��6���BB, *`]�f�� ��^(`�H|�:�^h��I?
�"��hܕd�>L��\���܄:2�,B�c��Zb�A�r�x�p�!3$3�/���V-�Y�WH.�$��p�<	�Bn�qX�g�n��c���^�l}\�t��������݃ߧ���d����߳W������g>�=�_|���2�3�0�D�����g�	�A
pٷq畼���;�σFr1���L������2b�ʩ�����g�#������^|�����	�a>~�3�9�>ތ�����<΍��Ν������@����8���LǓs��#؉��ؠp�Ղ�FiŀjL	��{�I��Q`�v<�u���;��f����(�le=Yfd~1Q��rWF�bY¨i�� ��d�&F ������ZJ�萵� �A���G�Ҧ�b<�du���D1H�O)p� �8���a�s��	�P ������	�l�C����B�H�@R(�`d|�оY�	�؅��\���}����H�@��XL��� 1ᤙ-�A�^p��,��,��I�n�.�2B���	q��0ˊ42R7�J�r��9�ٜ�s��'U\#���{K,R���H�`��
��cv5�=v"Ө����؍��_E�Q�����F}P�A��~\�tpGH��"'��c K� ƒ�R0KAa"&"�A�
�	�Ő�Q���s�"OY���N��bv�G��̒Y�(z3�<o�q�n��E�-�����t��F�@��s���H�R#̑�� @��̘�����	t�23�A��(uT�aTnx5�@ !ԁw �H,�1����Ꚇdej�>�!?�,�^%&�a	�ͮ�$4�����qw�X�a�c� tDK���@
-��p�6&$+gdR�;�Q���U
����nGt�QĊ��;X����C<����P�삱�2���	�"�9�`� �V�O�&G���v��xS?o�������_쐛h�@q�?�à��?9zF��}D�3����D��|�yٗY��<L�祬̴��pY~�����I?˯ۋg�q�۝��l� �imhC4�u���&���륚gcF�Ѯyʴf8q���|��;��;��͝��67�_���~��6n��/��F��Mx��g��e��G�V�@֨VF�	���!�IC)��`��y��������u����=21GG�ɜ���W�A�I�Z�xo�.�˓���4d�PB+"�L0��H��'K� Q.�QZ5-2	��x�s�o�)+�'%��4a �
��KB�0� 0 � B" �%b����R�  �8q�6�\H.NzKf���&f���7����Na��p���K�[>�^坟'W�A�i6_�V��w��pl1�(5~C?�&��%9�	X�@@�p]�i:J�O��7N��+��؀1;�n�|�/�H�G�h� �����F@t�$�7�i�|t��p&��ƙ��Ⱦ��jO$]�H`B��b�PCG�cK����pj�4�c�����G��aݯ�9�
u�3b��Sѧ�PeԬ�ʦ;,�b<J����)V��G��PϏs,>�g0���4_��q=43O2������s��y���xzs��7�郯�6	��31�:d ږ�9U�8��$��	��@�D
�`'%b'�����j�"�9�0O�I(˗�RM���h����4�V��M�sG� z�� S�i3��nvr-dn˫��1�pk��hO1CIѦ�[PA+��05S� 2)��-���D�e��H�|Iѐ�K�Hb�0����"�O�>�{� ��,%����</3̍�ȶ�No�>n��lL��������~F~�,B|��������t ������Y���'���O�������6�����廩ݞM�]>�.�6 � �0�'|�����C���w�2"K��_����L.՝��ߏ�{������5��W����	�H4c�
y(#\ �˔������Qh��Ǧ���'��L�1�e+�ϖ����:��������+����Nb'�\��˝m�.�|}��HD�L�ܼ��+&s��Ry�ae�E����jj�sYΕ��`�JM�yc�s@?'�j��8�>.a�t�`�*���M�9r,A2�O�'.%
����hH�H� �3�b�����;�,@����Ul����W˵�����C����y=xo�Qt�{ɦl�{K��?�T�Dd$��ĥy:������~^�9��W����-�;��->���11$���f�UW�qwjG���
id�z!͚c�/]�Qg�˖�m3�*�t�0 avh�� ��ϛ��҆\��|MB�<:��Hg������(S�h�0&p�.R(�1��g*������X`��C�P�)rj�1D]KTh��)j��e�hp�����c�.U�-��06s�S2�T71��H9~����W����I��>�}W �Y�� NI�a  ���
`p�m�`�C�����Ҫ� �9���&Z��s�ʱ1Տ\���n�%ٵ	5F`�� ZV{�!;���W%pr[#�� �+��qX�l>P�F` /-�*M����>V X�-;�F-;O�����D��w"fl&0 ���4q1� ��ӓ��՛��Mt��%����F6{&��F���$+�xD4�3@q�#�W�esi�"_�}����_GÐ �-f�p�����%v�	c�^ɻå&�����'������3���Ů3q�!w>!3�C�9��O>�!,�G@��U��ĥ�/���?Gթ���7f���a<Qh�S`�<�x|���� [��;o!Z��<��&!���ɷ�{T�������8�,R����o8��,kDG���wٻ�9I6O��u���g.��2��
�96I�!p��,J���5��뱷r��h	�I2���u�(E��/���p�,w�R��w5 2���)�2�:p(�3�L�(��O��;ɑ+`�j:�F�ޔ#�L��('�isN��c2j4�"��A�S�u�8��% �q��F�BT0�P�%���p�d
T)�(JB8 ���Q�D�x�@�Q]�{�JP�2 ��F�j���!��.�����m&0�&����z�t�K�_�[d��;7w�S��k�/f]p�WC�4�%��#�Fz���k6֤w�6�R���8sv��Г�}<{9j��).�<�M� V�1�Џ�4�%С[�z�5{i��i�WM�s����j���f%�� �XG���6��䊻ai�a����5AP�2�6��y�'�c��x����lÊT��,��N�e�׈��39(��Q�4���G�@�.J�$,e�>:,0�mœ#*�G0�t��۝�)u���]���j0�}�Lo�"�dy�Y�B�(����6���@��9��U)j�(��)�y0�&o}_^}�P^���GAC1p5����]��w�F^�P;k!l��-����!W͇Ǌ���#�S��b��������|�z٘0�$I`����8�4�+��6_8�6��"[r� #�M�9b���2��!{���
44���\��1H�1�`�c$c�OX���_ �pΌ�������7��gn���m�1۞�Uvo�K@��ǘ����C��s������,���d�Á�!)�(~�|��pi�ܲ�+��}��kCk�: 1��21>�p��7��&��2(s
ܬ�KoVw��v�K{��������z�.q
@�	��pߡ|�<�-�`I���8��'F >� 6� ��; �
1�1������ �&>SB#�����&iq���׿���Fʈ�|}�%�3��ֽ$�����5&�������5[��d*�RW�8hPT�K\{/Eh�T�Aj0d�s93d�p� Cu�H@�ĉ���1((���C��S@a�g��b��_�ytWDE<Ę���I78�,n
isT:�Et˦���Q��LL���*�/�t�E�nDx�N��P�K��˸:�~H�|ۈ�͍���񬤰 \����@��>�g�?��ֿ����f���'8^���q5��NԌw(<�[�9E�&���
!EN8�2^f6MT�dp��X�K�����Uaj����hyХ���B"F	��
���u�s�	��h���I!b�Y��e� �4�S�2}�Aɣ:we�@�^��Ć�0�<�g�*���$�S�ԥ_�9�dI#���r���[������cdA �c�����+8,��nq;9|w��7tf|����< O6��n�fk�j�N	U�ٵ��
�.~�bh�,�1  �|*�y�:��S�G-�k���;�D� ���Y�؟���yd�}Ȯ��L*d4�*�f�o�N��s��g�����'MHs132�@-��,K� ��E��|�O����e�� ���K��g:���@�Cs@`P|̦�O��R ��J�ָ��1h�h��oVx	b�g񆎝�K\�6���ܻ펺F�{�1}����pػ���a!�ގ�A8���`���f��/���i�f
#�ǁ>���8�#����9��<w�cn0y��L�be�Q�$ �A��t6id�EjD�+�ay��3�L�޵7� �Ga���)�w{�$�! ����*�&���4?Q<�u�sD���4b� �2��`L�`w�%�*���K�FO�m�Y�TU1�49E�����@v�|8�Ў��t�+�l��YquХ�c�ZB��q�ُ�9K�Z/�������YK��S�K�������#��sB?91-E�8�E&y�G���H\
@C ��h"(@Ppdh��Ɗ=2G@6�����V���t
%���`[����}�szv��go�K�X[r�B�)�7I������Z�����O�xQ�<X���OȊ�N�t��E�[�]�$����|�yվ��5ו�[өAqx�'����QzR�`���,�Ǹ�2��4���,�FI���I�,�F�h������F?�x�-�H0��b����$�jft�(�����$�f���&{Ǵ��D�SD����%�eS��a�C�iӧ����3`t��o`R�3���9lBx��~�V4�sa�
�>&��h1R�0A��$��>`�z�z��Ʈ���I4�1
�[�@��v��#��'&�o���ۑ��$&5�%}���`�?#	a�㌺�I&+��F�D�Q��0l��$I��-�����}��?�&E�'�?��-��{14�
 6#��P��(_�:Ŭ�eFN���;o�m�
����nguM3�@a�<S9�lC=�B�D�32�lr^�pr�
�~�ڿ����\Z[�No�}3/?_�� ���9�Ǚ����!\ ,� 2Pns��1��/9�@�0f8�R[���%Wq�F��x��v3K�]��������v�g��!Lp
�A|�启�?���x<aF0<",<i�Iq�͎�
x��Χ:�( E! �(�!��`�2��.�b�m��m.�ψ�L>w�o����wI��L'ӯo���:�Ν߀	 ʐC8���䗒��'W����@��3|̻��0X#9�X4��?@j��2a��+Gw�'hk��}֠ϚT��ǃ�\��K�����@}"p���Є���Y��_#�β��G[���k���\:��0r?f?l?���^Е�B�\eE8��ы)�TC�"4O�8�;��>�C�8���"9��9� ΄����� ���!�� *p:X�^VACs�F�#�Fw�D�����v��� oK/$�"/q �r�������ZE$+��ܡH��r������������V��C{��;gKr�m2ch ��%��s���#��M��(�od��˿ݑ��l�c&T'\s�OOL�5ݓ���\��������R��(՝j�(�4��y�ߓdF��kuriW�|ݣ�L��.gtӆ�|go��l�������{Ka����?Ӳ<3 ㅎ�7���P,#����6�M���|�㍘��N<��s��E7�n��rj��h�N�����L�7W�!E"��I|��@�F��<1�����Â�����;c}0Γ��?�_���Z�00b��pf�D܃�W���&���?�	�Cr4}�)��V󋙝նİjm�q�?��Ȳ]cw��$�ͬ����@���4 n�`?{��w��[���� �|hX������lZ~<۲)q�����,����R`-ݪ�X�&�zg�� 6O��[�G��CR�0����b�&�h�~��t�Z����'x�����K����AP���Y�_�gm칺<�ϯ���������z��?�ǣ�:�1��*�\������F����R�U�(���ы(�Z�Dk�jc�|�������=��NP����&���B_�``��H���&:i\�q��<�!},@v?g�L��)v�a���<����B���!a"B@f��x!G7���\eV��c��cX擭Ǒ`Β�6ؕ���7μ�Wßp|�]�;6���d�3��+�\��a�١�'3	���;P:3;cǧ5y{Q�͹*d�O��n��pN���[�\�`R�ѤHb�gH��Rީ�3eJ{k#���lVv*�U^{�t��������A;�˻���Dǝjw�;���jLg3��b�8Ba�hcv)M���D4���0�9�+'�P2t`X�aP"�4�N���"�!�2u�=�]�:�,���*dp��"�}�N$��o�}���7�Y�����X���(�v�+�ܾ���5�o[��#�l1tmyd�G�LtL�q��t:c)�g�N[��UQ�����ߏ2;���|�z3�Z��qS�m1gm��%FږA�	X�-��l2����D����Y��+�5�����-����B��L���殮䷪�7Ng���-�����q�꣟#�wj��T��i<�٥}�c|�f2>}�O��ةѻ�Y���%���j; XƁ�Y��	����٬�(_�c�E��Ȇis{�{�þ�j�g���-b@�kL��6���'1� �%p`D��G���EF�L��~(� Sl�bda�9m�*5�F ���
���.����PL(��<f�a2b��ʘ�#PB���1� !�a%�]���?X�}�r������g��9G�=;�g��q1T]�ԓ^���?��B�ə��1��m��W#��A�����9TsAh�rqEf8`�������r��[��9 ��jq.������sYH0�3A6�[���^� Ae�;��g�0%�(��$+�``� ���E#8b��E 0�y�f�MA#[o�?�v9d��Gɔ �,��̢1��������*_x� `J
�!c�u�O�C�Q���� ���q�E&���cl�&�L��K�C�|�_}�I��8w;���6���3$��L]���0NAz��,gu�xm���e+q�oB��K �0����B�(�UNh��BH�-"B9,����Y����T��u� 9�IN�b:�Q d���69e4(qT��#R��:�2��P�'��SF��rA7B�0��E����K@���P�4)��tA8��c��c3;$̓�@�5�Xl�! ���)6�r�ǻrjZ���3�O����Ջi��dh+�j��^���ڿ#��K�5;r�9�#�I0 �iI��]��4:���;��������J�d�wn�wU�ð��0����2�bڕf{���������ZZG�w"�iF�9I���}=a$+>�?��KW�RA��d�y��Gg��>4F��/�:�'����U�z�o�����r|��;a��wrK�r�y!i6QE&���L߾ųA���9IT��@�w��(��i�dWz�u���7�ۍ/ �p��,�A���φ�w�S�֌w#���{����e5du^�0��U�	v�:�9�~���N|��B]%$�
�3��n������w��xYB�z��)�Nv�s�D��oQ�-�}�~���`P�7��e���^�>n눕I����������?\�������-'��!�#D
Q�c��d�=�R�O�s0d�6Ps
*CJ~�<;��t�S�H�;�����h���^�,�4jD�-М;�!5����
����|��W������g�p��4��b�6�q2 $8���ꭿ�]0�����f6�?G $�L0ă�كb�
%������P$�0,�Ç1�h۸l��%�� 
��`������6��"N��Xr FhcYgHq��A>��~��� 	|4����9!�1�0>�"�Y�PO����'<GðP��X�x�!�0"�$9�3X�@�*���_��t-& 4iS F#�%ő']�,K��iQA#���J�d���8\�U��Q@)��.$1 ��c�.;�)pI �(��"j8���,(rFD��B�(4��hP�J�!�$�Z�s�\rda�B��\�#Xl��;��.B+6w f��^��?�n��e.�����`"C��7�X���^v]���+��N}�9��p�
�����ݘwc�M�dKM/E������>�vddb����jE�Y�G/��r�2 ��.M(��tjF��:��T��\Q��]�W�׻�N&��U�6��nk��̰r�.W�����;�R���^�gڧt�ø�C~���.g%�N��Xv_i䳅������s��RHr\~6 )��:�DiR(Y�P����`N(��f@�T������w��o���H�����޿�J#���o��i�ݭ�4�Q���Q�9�4S������t�V3�<Y	�z�g�\Y)���Zd�!���&�=,�[�@g�e"c��e#��� m�\ DK��|�`�R'�`��݇��l��MM���v�I"�@��j�x	��$1�2ѫ^�-�A�|����G؍��
�D&)A��(.���h��U�L,7�f�~��v�\�Qc
,������ۧ��iN�q��P�;f �,�q{�AY:;CrnCƓ��n�
�A��� [�� �ba�Vcz���?C��C� XF���e��!|�&�E.BI2����H�.�fd�
�@Yb��a� �&@�	%`r"Z���r�� J�qL�K|H�E� +ıp�t�ev� �J��N00�R�g�.�I^E�0�2�8�=Y$���2	'���"�A�������$(W$�2��|�cQ��kJ(-��YE�q���3j��C1  vЊ�E�zń�i)�̈���dtc�K�������TY��6@�
��"�0�0�$��%��`X�a�0�|�s,=
� ΍�Ctlɒ�A�ވ��`�2#ch��T�����BL�4���6���:`ɔh` !'��Ҙ�rӻ�n����|zh2睗�#�4�����?]<7Y���f7բ(�x���'k����7���خ�#Q��Mz'�rH�?6{�lğ,��eE��+�!���v����B�`�zqH1�9"��6��V)ݮ������?N�o�8��>�~��ߺU?�g�P�l�|�C�e�<Kg��g�w]�����~]��X==ť}2��I���;����FϏ��ųF�������L��kX��(�x��q�17�`�K�JU��BOc���x{���N�{�7Vw{�m�ޑ>���ۛw���i��`w.f&&;�����e9I�+Z�e���	��}iOS�xq����G�`0^��9Q۔�g��Qm�1/�Q#� *�!�l�h0�Vׄ�'cXL��y�d��@�m�V�$��O �Ȧ��x��l���$Vnټq��_��H@;���mc���+����ȵ�N���r<E��J��h��9,^jv;�=�A����R'�	�k�}P���L�δu�#52��3�`RrK��J�b�p�S�����5z���?�0فC`����M�A�P�< ��� �<���f0�9��{ H�MF�H
�P J��9A�EVq _$�
���$����< �O�=��TY&�:�\�n`��$��'�e��3`@�DQ�a���f1��2A�>�_c�d��"� EOD���A�r�&�"��k����5>G�������.dO�^i'^� �%*�J+sH��^�������-5r�'@N�s�� : ����9H��K���A
�P��a8cD�� 
���p|� I"��!���e�̻���N# �"��އvf�;kX ��·�haQ7�f"�*FE'@-o�� ���v�*�V�,4�M\X#��;6
tOZ	ɈY�L�'ixܿ��?m��SxbNo��� 	k!gyz�~��WV����6��k&]�;@�^/kC�Ϣ��V�}<�f5L_��֞���L�tR�Z&����ANv>�q޷f́_�s���)xU��r�+[�s�=ۦ2���,`&�y��^Zg�O4f�=}�_7�z']>I��P<{�88n�@ܺs���&�;����U�QG����}���hv����;���k����?��?�m�|y����)�3���R�G)}�?ט��KOT�D�Z�ύfI\��~oGֱ�����Q�@�1���Rt���C���71X�)�3?6P���D�56ρ�G3�7G���կI�x6ŬqK]��&��zx����A8�!�+[9Z�e�{y��5!��=�a���u��Ɨ��	Ɛu����ۇ,V�I�����/nY�3��5�d]�Lxo�>�ڣi^�g����:��-i+Y�ڪ޸NJK4�:����6�/�{ʔ�3M�@D$N����C�$�A&�hu�6]lA���q�=(
 �h4w�`dB� �P8��p&�x	@X�`A�h(
�A�r�U�8B��  CB��a��"3lxfqDd첃GX���i<
 (@G���/�_�$��&�v������p�M8dpx����ќ¡8�����!��;��[�N��}DC4 �u2� �` Ni�3�0s����|���d��zA1��� 1��62��A� $,����ln=��e�"C�ZIfmYCG������ ѡ��]B�t�@d !�$�q�G�F	�:��,�i� ƉH�ć ���Ң��.�Q�S�" ���Ob)H��岨Xq�v���0f2h�a9�o�!�<*1�j����=_�g�ǅ ������u��:J �
>.����{ț�ٍo���k����Z���[�����o��:�h��QKu�9�u����HW�gn��<�W�T�j�1��\+2�!Ք�(�g�go.�����ӕ3;0�Z�c ^6��򷻿�����؇p���?/���2�����}r��!T�����~g`�]/ϋ�����񝟧�H=5�f�{��F7uVid��k3?3����}�s���Mc����E��w�z����.wn�������{��w?����v��_�z���s�ݺ����l~����&p��kY;���:/u�����E�=�c�9=jG��X����p�c�Ƒ1�8.�L<Z?��a�A|~�P�����;X'i�6������ 5$�o�ֿ~���Bs>8���#;��<|��f��aJr!('�~l�I�ӛ�JB��������֮q�b�Z.�����(��3����J��'�Wss���_g��Ok�l���ds_�	�J5Λ�̬��=�߹�� hIt0����i���k�n	hcn��/6#�`����\uyNX෈��M.r�6���آc�ǑX ��! D�0�1(����+ls�"�� �� ��(&F�cHQ� �x��6l$��i>�%�ش�1=A��!!PFÇ�t���P8�����Oq����!�_�c�'Yf��#b��8O����U~/�C��A���g��P��I.9��5b4`�i��6�00��B����h�ʥ�'q�x��3אԳoGM����E��8ZD ��, $�DN?5�hh��#a�^�8A B� ��b�h򴡼'�g-
�C��<GRB� ��d���� C�7��3Ɣֻ��B-�M�#d`��BF��K�t%\�?\}�[��	���#keB0��m0ळ�,��,NF|o����������`'���l��n;r���y���U�k[m�F6��
��]��������ܗ������>�8x�DLP�Mh?�ʱ�b" ,�9T�Z�jg�Z�{f�� È��u��iNf���f���͗o��?���瞞B���E�EIUC6.o?���9��?�;�}y>�z�����y�Gn���IZ��R��Sw��S��-ܯ;��>�[�.�<�/xo\{�y��������[/��Y��_j<��s_�Y}F#]M��3P������K�����f8��{0=	�����~������+ 
X��?��`�����ʟ�MN�S��gP�Y�'�#<���!1�4F!��N%d�O���T��������g��D������]�[Ky@��S�UPJ���.,��hަƦ��JA?������1=���b�����}��>��M��#Cf�X�.��uf��lEY�s�+�!:��
����G�8,�-;5s�.��W/�y��H�c�Fhq� @��öG��(��<�����[�E�˫(b\y�w0\#����9����A�p�,����z�c4�1  bjLJ���a!�X� ��?&�3��1�'� !�@�0l��xNM�W��S����PEr�a�"��!�đLs
% ��by�[ ��
�!o�ͻ����w��m���
� �_��ϫAp�9J§�.61�� }�-�#0y�L��c�`ԤU%c @EϢl6�rT�,Wxi��Q�\��Q�l'A�8�}L(	��A��� �a@�nj=�@`��5�dX�u
��A�P|<��Q�H�����z��a�'f �`�h;ԐF6���O����Y�H��t@���%����P�'�y�p��+�&@A���� �물[��;ne�}�2��$��N�����ʯC�����iF&���p��]�k�N����u�ژ��Y=��k��1p���*b�=l�x�62`5.��{�0[5�N��`#sm����DјI�����f6ue__L���_RO4]:�ׅJ�.��>qg�z
�~?��pM��N���lw> 7�_Vj�M(�u�����������_s =�y��G��s�ᯆ�<�㏛؏d������$�>V2�];����E�{�n�O�������m�EfL
�d��w0d��y��A��������)�A�䀂�N��#�}(� Ȁ�
.��������K���{�y���^��	{݇���=����kq��ݖ8C�"f�w(�DM�0ˌ8�IE$f���
p+�R��� �hF�_oQ�\�GF�$ ��L�Gd���]؁*#u	q�Yr�	$}6�m�Lnf�T@��|����Y?D����9f)DT�i̖�%d�êX ���?��q�ڝ�l�� Pn0�Ax�W��:��9(s��P�A����h\"���#�&�>V�6�܂?����!L�y[����(�ďAϏA�!� ���n�gΐ:,�� ���)3���Đ���������<���0˳,�$O�������gy�����i����<�?ş��PJ�(Gxe&)�@?���u�,�罔�\�YΙI��W���沭J3��@qc��R��22��8��x���m�-aF���sO���3��fFwɆ8a0(���  xr"b��@v�i�@DJ�%���r�9��<��D,)8#� ¨�I�Kt�#�C�\�#y*	D� ~0���ަ经��S���\؄$,X�nF4�D"S�2@�lF�K"A6$Q`�Ե^�f����w3�@.��ĕ����u�ʳ�kSѽ��q��{���x�Σ�"֏c}ݝ�ڍ�'���T�u�?~�^v��d��4��gP� vD}x�XCA/s������8K)�܍��)�v\s���f�r/��8�Z�
���$�P�98N">>����Ɓ�{h���.ăn��hᾴ�����9!TpkB@���'��P��=ܺ��*���ȭ��ǃk�OB����C�۩�}8��!�Ǉ��=���Y�>�l$zT�+E	��Y���!j<Ǐ����;�i��C� ��� !�����TY#V��S�u^2�'���S$_����w�O�5��Ž�Z�vcme�����D�uRG�����f�p�����CRO��K0�5CA���'�%�Ys���V�	J�$N���?�J2K��&<+#�G(�N.�X#1h$�IO�g�^w�C�#=6��ɲ�������u`m!+��Hz���x�ِ��2�����fbr���_�W|��
��`�(��4!��r�`hCcy��c!���$�S�B� �3p�� ��`,q��|a�� � [����� ��@	ϥ>g? a(#\R�H�P�A�EB�cpvq9�Y�4�m8�)���9�56y�������旼嶩�.��	�3����#�� K#������r���	��`�)Ǔ��T�̳��c�����RI/��{$f���b�D�6+"m�T�)�J{*���s��Kv8BiRb��(��� � ��@z)����p���K�]�H8�D8�p��rDX�E��y�o�NbgX�G�YX�A��5t������6���2\V�o�Q`��.���6Ш8���-Ȣ�WsJ !0h��U���#&�0��,��d���MyX8��sk�Cϳvk�kte�����+�z2���+���t��q��S�y�V8p�Ղ8l&�����qVZdij�������d�.d�C�+T�F��3�K�������:c��5��\yt�󺇏��;-�޼��G��{ߐa�G���H��A�g�����۱e�9�f�����4���k�|��9��m�(����I�N(s}�lU���y���K�K�����b����(��-�wK�a�r��Y�m B�9>������u�3o���3�O�S�L�71HroX���yż����_���{�n�KhzD�$�X^�p��J U[qr�ܸ8k3���Oh��䞻�2m[B$�:e��@�f�W�� !�ht�����F&3��Y�CW���kt���4�tN�_�r�p���L�:"�s=(�Z�p�>_PwT��)�v�� Y)��ڠ�����ϵXLF��19�)c`�o�o�~ʐ�X���s�#��؄��<w���A�r�.䉸��:�Dapx�����,r�P$��W�q0 ��m��0L����@hc�a�@�;d�L R�~�@����є�P'	�Ĉ��XB1�8�B�Đk�I����gx�)Xc�����<�<_�0�7�,�c�%�c�'y���+Hn��&:�x=Oh���B4���\p��W8�y�o�i>��,���SB�
�|X�*��Q��W54�� Y�-"��g(��;�9�ɾʂ9a�t5�nL<9�4�@�C��Az���Y��8�y�(:T�I��,E�q2;d�C}	/!�*x/x8B��fKˡ�Ѫ���H��Q�xp6Z :�  �'�"@�k�3�srj�������	���MEw�ސDs{�f0�nS�����4���;�VF��dF����k'����=�v�#*�Yz�r1n���\�/��ڹ��L�r���y�9vy�Xv �=��k�[�~l��
Ą�w��tL�?�rV����Ꮟ��#u.����ܻ�7l~�蝩?���_�o^��^�d�Fux_���p_��h�9�n��ȫ?���<��V.t�~�=��g~��&[�y�/�5%�����c��������+q��F�}��m>��N�����ĉHf>�����L-�bp�Y���zg�?Տ��f���Ow����lx�Ӟ�����>&�z�Z�k�D߂?����5K@�O�f������u��{��k����r�T��9:��X�F��̐�_��~q,}r#f��l�ֻ�0 k�&;T?�!2��Z��+Cf�D��P��>kq�A����jd���d!k�{���%��cA��t�,_�]�gzYO=^� `�	�����j/k8��$��7�-i�_�!�M]((8f�`cq�2�����m=�5 ����������#$�H,���P `� =#� �</���k��`00^6­@D���H@iCt�� 9B	`"�	0�w Np���0H��6�I�8(� m�&�:(��,�op���:��.�\#���C�8�-vy��0H�OqI��M���8	��Qc���p���i��F�/�k��i/�5R|ڡ�̾i���P�Uq���<�O�1��I�!�l��r��\g��Ș7Y�g����p ��`<�9
xr�r
�(�)��Q � Ccah(��%F�1� f5̛q:;�ĕ1-g� ! B<��⺲��-�`Qv��I`՛��|1` C6{_f��d�v�$ެa�mQy��o�y7[����� �^YwK�fL����݇��@l�}��s� �j���h�K �������S�c����]�p�'�^i�;�{�_����9���U���W�cے��\�>
ZzYKׯ�}-�`�3W�Ӄ*��W~?��'}_����C�|��������������Q������h�����/�u�_]����ck�=�uᾗ�ox^vJ�����}������?7�'��?��d������ֿ��s����h��m>r�+7�34,������d�wW�8�$?��W�3׾��wHR]Z3�p-���q��9t��]�;m:���ars��o��Ϭ�3	u�G��0��\��ss}�z��o��A������%ȧ#�@k��8+��v6���@�?
�7�]=����P���L�����,�{��q��
�������U�����N~���3F��C.��(���`Է��c��������GtU�|�^Ǹ%}�{�e�����QM�O�To�R3���:�E=b�	�c��ɨ:� �����ڬ��x�F��=d'\�+ި}��+�+�ѷ��E�5�ڕ��09�p<Ό�\ȥ*t�X	 [�@`��I��2���CV��*!��Iq�A(�K�C���6c���.ɧA�[L��!��<?$'0����Sr��Ms��Ñ1�ǡ �)�{,b������&�CD�s4+�!Y� 
�q��)�C4s �h��*���2�UfYİ��3g�e��MF$N3�x�s��
0��,�e���i(��2_��6_����<�Kᛸ�q�s�C����qR�i�s��Y�Zz�7x;]�-�x#����e^��y�z�9�c ,JF���t�]��@���@��$q�b�PDC@(F#�pd�M��iGA�Ne�
$�|50�8����M��?צE� b�N1lR�3J ����Ii����Ж���k	��
��P���|Th�8���]>���D?��:��H���V��i��l�ߓ�䯹�_��6��3[f`��?���R����y�û���M����E���s=�����:���r�|�s/��ï;��z����[�e
?+O�{���;��}�}���������k�bX�o�5���}s����j�yGi#揾���˳�S����rߍ����n}y���n}������2?��h��{��%e�d���K�[y��[���_�������>o右��.ns8���w��w�<�8�<z�WA~Y�Q ���3+�L?U���<\�<�.@�/~�=|	��W�Rs�{���ZQg�ν*{,�F�0# �!Y�)�"��>C�n������Q�����Y����vr����'a3Ot����R?+������PۦYr~C���Qt)��G��[�a]���̷��aEl�! p�"3prML���a܂R�<��d��'�:5��4�6���ϼ]���=G�NS��,�I�?�D���7��������7K=x�'���6���U�*����
2��D��p3������!�$m(�6.�0 !��B��ÛĐp��!�g���Gp	h�Іc�H���,�OP�2�n����1C���� B":BHK���,b���c.� �{ĉ��E�`P�6C68�A 0h�Ea� �"D�A����Cl�C��[���pɏ�k����{��o�����n�?���e�g��1�#��>.O����;�>wj��\�&7���?��^�7�Ώ)�( � %� ;F  e� �Q4@08U8�N� !j�1 6kP��b����~ <�qL1F���0W�G�/~��}�����?g�'a3  ,/ns���v+&�&�.�1���*ЙP��^��Jh��]	>SȮ~z�4�|����{��G�t?�9}�����i�	}=y��Q�����4�v�������<��������c�]W����v��W�N������>���3h������������Z��_�����?{s����-���E�`β�>ӫ{?Y�'�/��/{�P���у�<����������N��\٘3�����g�׌���u���r�����L��K4���_��_|�06�f����=�=�6���?o��� 3?��������i%?�[�;���g�Q�����Ϗ�@����q$[�qcjɮʲ��lj�f�|~�d$Ϩ˧��15Jgkm�[p��X���s����jY�1��]����F��*�q�D�{���/~��n��Z+9��l�e�
d2�'��fX�rɪzc�7���MY�f��UZ��0����%�w�F�Y�j/��� \#҂�j'���ߴ�#2(�[D�'��YeWo�X����ڴk�=vs'D�Lr��:��o����ϱr?S�`�N��X�Nk丹��4�%X�%U�%�ar󑫱�i�1�h�C �YH�KE�@2�<qRD �y&@��R�..����}$in��S$�-�4�l�@` �bq��H<$��
H@�"�="�#F�Đ�	� ��`���Q�Q %��H8m|"\8@bp8��lx�J�>��d�C�},���,9bƉ!a�I��`�IfX``��r	�ݵ,r���$h�N��/Q�KRf��ef�����WO�ɷv_�+�o��U�����1�r����=�f!�L,-��B&�b�3i.�Ng�1^�^ι�@:��f^�ޚy�d��g�3��b!�8
�H(���0D P�NIȡ !q$04�@ ��ECLq��G�"�_=� @��d91��<���g�woL���ι����`XU.v�)(޸�zt82�t��@'}m��������f�8���II�����.��#�����2�џ�^R� 0��qhn&��K����9>���~&v�7s;��E�����������Q_���N�G9_ݿ�<��_��g��v�O�mZի=�#�����m��ޯu��{����4}�x�^v^ڋp�^��O��7DF���/����?�?o������şw
}�X�G��[4^s���b���>�t �G��q�g�?���w7��uɣ���p��n^V��?Js?x>�gz+Y\4L��@�$�~���!(e�,�E������U�[d�����PHt��ҿ�� ���@�L�jq�s .̦.̧�8�|6�f?d@x�v�fx�b01�R�4����+[���=�Qj[��|I�n]6)Ǝ�l�L��?.[A��:���8c���{f��ԥ��l�ss��}r�B��ވ�>p�ZD1@��^�ү's,�p1�X���1����=E����Į�!G��+�����?7u	­�7M��e���o���;��;����{��L<O�&ul������u�ʀ@�\ѫ^�zb�p���\��d�@�HO%"D#A�Fb�a��o�������>a�$b^��Tؙ`�y�*�ހA�Q `���6��,�d0��b	̱��2KNL�EH�@�t�&+����͚T�:�1v���G����Y �fa����h�`�.u��h�C�)��r��_�:K�5>�^	�c�΄b�`�@�C��!�b୥���HB"  BtԀ ��� A ��BA,�!Dx0 Cc��"��a  �P �"D)!��X�ϞȮ��q�y�zlݸyH?���65��}�6<�@���?���8��k+g�^�i��9l}^���+ݛ?�7�y����+t?��|���ӡ��^� 8��|��K��C��9�&��4ʓ�Ǹl������~M4hX���� n�����V\4�ky�hD#��9sO2��E�gf�|�Ɵ���k�*v�<��7��<��{�=\`��3�}�=z�6�����Y�o��d���G�����W\�h�4ш�L�VG3����y����J=���CIZZ�n������)�:�Wy�Rޯ`��������3 �L�'W|5}ܭ~�v����F�F,�²��by�>��g��ԩ0x�u������V&�{d�}�7ػ;5@��4lM���]oO��&;$�/��:��Fs�F�+O�w���}%�5�e,���9�m�+��5�埞��x_�g_w�����=���d /�=K�]9�d�}����y�s�.�B�u����FLO�@y&v!����1-MZ	+��y�xc	����f纻�^�����~�et��|&6�,_��g��<��RrO��Wl��;�gC�͚�h�@�w⿗�;྄V!>!~����������f	O��̲C���,��R��E�T���݅av�i�X,��5��bD8ZS��D��$	1DP����(��A1�l����;�?�g�-�}1n֐�ᨿ��*AA0B8�b����pE۲�.���`;�����"�$d�JV�
�*Y��e�a�ذ�,�
S&��� /�MZ5�j�(6�X X��'B�P04���0�C�@ Pt����9i� `$.��}&!���q!�� �{J�R���b��8��C� �� O�Xj�)�yf���>3<y�qe#o~�z�_�?Js�j�?����pe��߉�?�ǽ�W0N6����c��8=wyPn}���?��Oү�>�?{���ш�р�$�(�F����d�� �l�y�S��oB������ҍI�	��+��D�_����],�����/���' �b��>}�}"��e����V��a�jC_aІ:����l�� �����|�g�u�؂W# ��� ��yuG������u��Gf_���n_�\�4�'$�#�!���kW�ȣ��Ӡ���.�fyL������_���&�Y  � T�5���!-���P���'�*@C>{����q�l�	u���m���8{�5����:v����$s��H��c7���S��y�3��x�8\��f�I�h��=��1�n�Vk7�Ox���ia.��wn����Ͻ~��v+���\��Ag�i���m��7W��,BFy~�/�w����������n�Y��с����O�NQ碋l������l�g��i蹌������\o��g��xF�w���g;�Y���[؛�~�ʠ
?gX���6��G(��!(�x	:��ufwf��f
�9 R���/���Ù�u4�4�Pfy�A��L� >��:��Z!��T�3�j����V�\�V��L���y	�C@�E�$BP�q̀��i -ӣ��1l;H�C\C��g���F"�2K`���<ɫ �`�P,�8��#TKb��  %,	�A� ���B�h ��� � �@�x��3 �H8
D@  � ����P	�)TD��@�V*�Żl��`|���)��,�^����P���z��=�l~d�$�^=;4����F$c�I��$�7�y�BY���o��%!�r�l=+0&��B	!�x$�&�X�Q�pɂp�n\�M�&�� 2b�uw��p3=�C����\;`���RkU�+)�<�<��!',��	�y������&�  �y�u���Y`af�UG�!h x�)��ѮpqÍIq�D��4
��Kn$;s4B]�7I1.�)l�{�(.`��;y�|bRg=HJ:��i@H����(.v ��b���� &h	� �D	 �)=C&!d�
���䖕űr��)^_�=Dm���b�"��f������Z�?j��ބ2�Ut� �K��҈F"��F�F��<o�y\���kR6vs�n����?:�M�ٝޘ�xi�N��L�S���s����Bk�S�88�0PU�,#`����ڷ�������������0���g�[?ϓ�K ��]�<��E���V��V�<��C�u}3ٯ�tş��)fb��4�l�{���&��!Т�}�A8�3�LAѼ���Wpᄜ0�e�����L�1�?��H\��w��h^�����.C�[��P�C�8h�2R']�վ�k�-$y��s�|O��0�N�'�{D8����Aa�y���&�D�->��:��Q�����L/�f�/N$(N�0��a�$��:i*,�sˏ��>
�e�2����`Xm��0,�g����<���P,��b�|f_���hFhA(��q�D�������$�n?!�A`(�-PDB�H��Ɲ/zg�<:�1�Qj#l��d��vS<�<8�t]6K�q:�z����?���xfᾍ�F>{e��_��zV2��ޟ�{?��8��d?H����J ��H��(��8��L^��잋fOD�!��C2�]�h��@�739�B%js�#a��6��݀�Q�,��	�V}`{��Olf�9B���`�}�EK���E�3�\Xެ�+ܖY	,�$��d���OC�ҞD�,�{"�h�
��ޱ�G�A2�\֘LЩ�2���z'wn���t[�{u�m�J��\�!: �� DI.�?f����[�k`�h8�6�&8�� I�!��&�f4��U$cQ��	��N������Fl_~��h��{��h�
�H3Q�uu_����>�Vv}F�y�ʽ��eV�qS�d:>٬�y��GOK�P����[�޿4����'�7/�����=���'����^�|��t>G��M��'�,���pM����n������hnw���U\ю�����3}f����H�ϓ�y.��ط�F<��>>������b��=]f�1��b���!v�K�:�±l�f���8���D��e@�����SB��r��a1���� J� 9E�P�����#L2F�`�pĢ����\*��X�,�X4gp"�H�3?��&���aGX9���qb ����A�a���Y$K��xA��$�U�e�\p�O�0"@h����@�j �b�8X4�@� �X���!h ��cAJ�@,�`hAĠ B�a�D �=E� ���͹�k��9�B��F��n�;��q4	%zG�ܙ���qqǛF쵙�
ԋM�όwv������g^�]�FU����r<�|������rg � �M�  7I4�} ���/:�Ҟ%����f�������Ȫ�� ���\ �Ƈh��!g����3Z {�%���}4r�CJ-��E�PT�B6p�i+�!>�zus����6�.i��u�ՠAû��H���X9ߦز�i��BET#f_{��,{���*����7�i���3  ��Y U� e���z�
�T@�(X��MQ�;D/=C�� LoB�ɐ���#�ܕ�]
O��W �TaS�3��� ���Gh�$Q� 
)�b���3A	�'�Wg�f����9����<ޟ��Lg�����}������� ��dҩ��V�����{�@:�g��$��Q��a4�q��);�̻������yۚ��i}[���R6�Y�����m�
�����|(�k��8��B�nfv����W��F��򲝏��Y��s���h�F�"r~�gZ��Y�0�:dkX~�߼ (����P�rN��b{�<��!L�p���.�e�}�,��S���9���� X, ��&x����xd!
kp{�]��9��EP�r��1�m8>3H���9ElF���� U{K��[��:����E�b��2o�e�"�2�G�h?�'Ls̸*�N�b0 !� PP,Ā  �  b �  ����X�O=��hB4��X�  X4, Gc����	97��I0"��~θ���<Y�L4�~ݝW����9{m�mlw�v9|
U��_�悧y����j<?� �p����qH�h�q	q�(���UL�`�mT��
� �]�����~���=A��'p#����� x��D� D��5�z��
3��E�r�.=��9���r+(2 ��C��M�d�['��n D�g��}f��y�B�O� @�@��N nue�����Q���DB<���}_���#���{�Q`���|h�w���v=4���O��,�`�X4 �e�Q�!`�
�����E�� z��8	�CxcS'4h��\͎#�d�4�\�l3����Qڛ�lV�.YŴ��0j��5M��<Na�2s�!L{������ ��VXH+��f#W%���1<�çW��s�����}����v���ޞ�!��ř�y��v���:�ܞ�C&��V�#�lϓ��dک��	�$Q���A�\��ߛ������(��0��K������>��ۥ�?��3xPoQ���pڢ�XaQ`�9�PX�   �A`�Dt�s����!PF@ <FX�P 
b���D(C(8Bâ�, RSֶ�^������}Կ�ЬfR�Z��0�&��8� 	E#��H�&0i�BR�����OBU�3
�	Fҁ"�X�hsb�q��R(s	�;p�E�$�~��>��! �Aca `@�b �X � EB�p1(8��ba�Ih��`P|<P4� 4����B�0�)��p ��O�+� ��Q��>WY�m��y�6s=[��?E e0��~��^�6�*����+�'���)���;S��y�1�;?���'�׃!OL 0BL ���?�P��O�ߐ�]�Q��u���rk�M*�������'�Ӽ�A1d�`q0��#0p�	R��!�b (2 ,��J����pj�����(@{���B'�����@p_<O�����[u���@#��Dr�Be�����)�*I�����/��[���܀W�Iyn< T��p{�(dx`�"�������(h��,2 ��8�x�y�I2�E�#������W���|��4�+4�I��UVn4����۸�L�u���,r�� ��<&�QQބ�x:a��X�t�b�cfe���lt��M���h�fr�s��w_ A,���:>���>�U���\tF��M���^j:��_k�����i�i̐(�Н�5�\�&�q�.��tY~Yf�a+,���4{�2�ď�9�/y�'��P�]���F�Pf�X�EV!^��ô�Z�f�q!l#{K��9a��� ��F"�3	 hV�9.��0LC� s(�Y�'�Ų�@��q���?���������� 1��}� ��y�p!�E�1��p"�df�p�,�k�o'�`��mofNC��MP1���c��x�y ��C ��� 9��q��w�����dL���X>��� >��o�`@>C`1"8B��D@��R����@,V�X a �.��_� �p�6=�'��+Ag$jy�����p#	 ܹ�x�8so���Ng��^q'�9������'ǖ�G��1\�6Y2��e61 m� `~o��U�Q�' 7x�G�h/$���E�h/ ���l
�P�D�8&�0@P�[d� X2D)L����"X ��0 N�A���d/��=���#�(�!�D����<O��(.�&����4������*������T6���H�œ�wk�b���nf��]�
�hR��`e��R!j�C"T��" �UB>N剀�ƻ3�,��[Kݵ8���>x��|���m_h��:���<E8I�$/���	M$�L�cS���� ����>�l|�s��n6oEA�
7�23]��Σ�p��ݍ����M��_z�q�?�쟷Xm�����N���7�t��i=�����[|9��դ�Sz��j��U���Cz�����3�G�-��pP����b�[i��0����3N��Q���4
��^�A2F�{|[�0���(�@� � !PΘ���6"IȓP�wa<�ۆ"0��a(^� ��8��7� ���0"~� ��KM� ��9����S�'����+�B��_��XΡx(^�!���� � �c` ��D�a���^s��쯋�L�<�C0X!a���- :�a&�w� ,���8�.�(��G�.�eކ��O�A �� Z�"�@P8 �  A�@(DB����c�0B8�����$$��baX(
�� H`�����!h��a�q}"J)
��Z�MP������Ȣ��\7^�;��^fz�DY�O_�Ѻ�L�Y�uÍ`q@"r0�d�@,����Mp��Hq������jBAQ�"�6�$�x4AB EA �	�� ��'@��B��A؄1�����P�*	Q � -\Qs� 
p��(�|���'���`�E�H���<���[�U	�!d� x�&k ��&�du@�	��2��(@P��[P�T	 0Ż(�ZŞUv�tt q� "�s"�4hz�k�ht���8]/��kjr���L�<	3��� ��!�ᆻ�n ��`���F��-����"nX���&��:�-�X��+Ü�Z���g�9�H � ��T^so��o�~y9/;3�2�	{S��~0w{�x����Ƚ���5�n�u?��d䑙/3�J��Sp�R����G�o!A���|�v�t���&���8Uy�$	�ێݥEBo<����Se�I�u�U��)C�ǳ(N X�� ���  Uk^�zۤ�e �`F�q �(p�`��(.h���b!H����|���fr���إ�*�߻h6�%�b<��c����hQ C&˔�Q`�f����+
�*UG�v���9�`��� 3dVx�3|\  QX7��sl��`8�¹ �@��L�"E���r�$@"�@p�XB�`�ah �EB�� �$�c �A� ��E�  ɀ{��C�4�~��A���8L�L�\���Tѕ�!([���r�F^��
�ϣ1:��x�v%�� �<�7T�n^爐�A A�,��u���n�@�I@���x�<�M $J
p�taDG������B� ��b@��Q$��4�p�E cT (�t� �`� ! f >!!@IVq(�_&��h2F��<�ڇ!ІQ "�&��`7
��a\%L��X�U���HE�R�{��mk� �)�`&:	�L��,��}��T�Iv�j��-T��`n����Q��ʛb=І&�<�3�g�c�&yf"��x/p\	�#p,�s�O�d-~�E�/�{��w4�}�z��t����;�;����1����ߞvY(���=���d����S�`�J�O#���W�o�y?I_�O�~��H��u�`*��矑�/���Z<>o,�������AἩ]e�l-~n� @�%3�w�n�u�u !���D
�b��QNxQ�4�kPKH
�<�ۼ� @D@���|c ��&'���P��A1'�P���0� ��A�D�<��=���4	T�{n�7 `((Gc fa���#��@A �TQ���g�p��`��º_G|�H0�2"LU�9��`�LP�9D(�0T?i�|�r	r���y�� F9qq$�a#F\�B� 8DA!��DCA,�bA��B`X8!@�X *��
 B�T@ � �E牡�Y�'u��A"I�� ����d��R����}��hg�q��OB�l�+n�9�&�g����,�=g� � �D��7�<���b�t��T��P�:�r�,WS���RaC�Ɩ)`,��  �ՠ�(Ţ�(����Wy�Yü���3 �ZýQ~L,@��`�.W2��)�
�A�(��R�la�{��Ut9y�L���(�(@�0�Zs
 �Q2��k: ��>J�q���C}ڢ����U����	3��x�D[��Vx!���> ��,�� ���{ڙs������l%�+:�����Zi���x%"���pQ�Sy�xӓh�^����DӬ0�	�E�f�%�*⣟������B7��o���<l���6�������ytdwr�J�g��~�d���{s3<�_���|;;S�������+|g��lB_��}>47�:y��Tȭ��x��1^�/�E����u~\�$�� (��C;������>w#��g���-��]`e���p"#��@ �h	�������m@�0y��l�e���,!��N "�H�X)" 
�2A�q �Y�r�e4H���?�$�P:=7��)�����7�VeIK�	1��`�+�gs�N�q�쓚b3q0|,�|�
��PĆR�0#g���0|q�B�0�IK�F�2����4�F�$�%B�W��`�LP�!(qJ�-�K�	��BPB��/��bUðX,
�@$�����1E� $���F,�Fá�H,Ăbq��yqnyХ|�(K���"ৢE߶��U	t�5'贸�X_����Qyw���"u����El����G��h��*�<c��j�����}�k�����
X��}b��0�.? :2t*** :Q�����E��74�&T�(S �o8?�� =���>e^} D�t�C}�n=t�22��Q���( ��+< {U ��*��`㕮̓�f��-	�T2��TDѱ!�O�����S1^����]Z訋<̫<�k�נR )�6e^m7�5��=ԇ�e��>�*a^�ó��>v_���!�������G�U2B��Nؘ<���|E����gN
�N=��F��A�r|<4�[Φuv�EqE�,>��������}1�<��Y; 4 ���s�Rgh^ߋA��mg�T5��j��y~87�_K�&�6���2ߑ�~��w�.����puD*P�88���U��xX��S��4�"ļ�'6���J_�l+�@���߽�}C�@�#6Jt�	�L�9��(�?�0��&�J�8�a�w}����i�3�
r ����� ��%�1�1�AA��8��	���X\��,���67l̟��7E��2�6�[����r�v)?�2���%^���f���@d�@�D�3��6��^R�
/Q�牌�Q�L0��:h�D�Dzp�! �!��� 	q.�H<$!q� G�g��$� ���0"PP �'A��`aX(R��B���E���pB�� @D5
� � ���>#

E(\BX �B��XR&�!!���I�	�y���E)�M��X<&e$yC��o" �a�� �z�Aw���<�q�"'�R�)%ar,�"D;E	�,9@D(��ŢX
�c@�p�c� "8���	&�!0)� y�< �� r
�191&'���0ӆ 
OB !1��0��GP�$},�5\Fx��F�6`�與N�#�|�\���2?6dٻ��(�˸x���Ƴ<
����߁N��m�vz~�=�%BV�ZV���� �����u��r�&�'�x��:��9^/��l2n|-qO���|���z�^eӒ���Y��/����(sӭe�Q�?��~��]:o���W��RO�<����<�j��B����۪�a��>�[;�������P?����E��@�}}���}�<�ld��?/�W���	��'�l�[8ݫ0m7��q1v�&���y�����]�/�����9&����cNy�#9B�xby@x�x�$�:��k �,[|�9|�_�ݺ}=ϳ���,g�}�����W�w/ϛ�,�{����2K��ei ��ԛ����5_��k����;H+��8 ���9V_7�a�ȟ#�B�H(
�p
0���H8g�Ќ����).��f��� !q�A	��x���΂(��@.�@�q�q ��R�!��81�H�, >��E��q ((,�)��y$c��C�Ј�����$y
w�MPڥ���l���L?$��;���� �3�G��@���&008�NJ�����2�T(B��xE�xCA�ãFN	���̔0��±  ��rZH�8�4I��2",Y� �AXrC�A:�1�1�a �3����A�Q�k����!����9Dp
�g�.�����vB���)-�#:n�#��'�ǦT�d{co��+ �I&�	U���:�b�����󈹯�9=I���ړ_����%�(����F �㍫p7�{>��bZH4���ܓ.{���ܰo�v���8:LvS�ꎓS���D#��)����N�7��D:xg�܉{9!�}�;��M�i��YV��"��矺f�|)�����S�w��1�'h�pwn�b����������V��=����O4��%�,kJ��(:���9	G����8������������&��& 1��wy\,oaP8H��r��c�@��I)�X�� �~B}(���obP�8̣amd�����1Ьj;�@�4I�ǈ4:l��}@�{��o�_Rf��׬śk�@D�AE��;� 4���" P|(!�#�� ٥������H�bI����P|8@H��@Q  �ap�$B�X]R��`�3�!��� 	�F`b p4�A�b� #^� �G����H�B��2;�y�O��^����
M�X���6�����$�u� yф^�;y'�
&�'�4)����rBbB�y�	��8 BDcӍ'�<� �]< AA%�AM��PE"�	��
��P4� Ar��+\�%$��@B�P���HXrRE0С�6�b�`7@
c� ʴb<�H1Ĵ�h`E0<	)1`�7�������#A �`H.�E�Ͻk� 'B�0�4.3�K0�'" (9I���x�;�p�R?��'?�\��<p��+�t��)�-������i�?2�����s�Qx&dB����g����Y<Zw�I�칬d&����4��Q����+4�o�S�ez.�{�����~�����`<��Ul�O1_����V���;;��m�/л����N9��ff��⾣��wOv~��V$��~����߿���3�g<��jl�c������������D|B|��WF���ׅWf�%��w�[N�IB@�v��K=�~�r	���	�o���g|�Ѽl�|�X�b�M�X'�<;�r���d�e���=|�mf9e�f�-���/�k�>k���&}}��k��v��'��>3��� �!D���BHC�"gLin�<��C��|{8�Ǌ�$,;��k�Bea�	��r�v�<�%^��#��$H�-Vh�d�5^d���H2<�M.b�ʈ&�If��?��"�#�B�p���A~I�%���Q ��B_n�h@�A��B�#�"�1�<ɫ<�:g�\� ���-&�	�p���G��0M�.3<��`�#4����߄�Q�-<�\q��2m�|r�O\03������S���;t���	��PyS�nƸ�w��!���ͳ{%:x"���<�"w6��=�=P��,�q2�t �z�8���1I����k�9à)���"_��>�{����y�]�Y�y�y(e�;g&pP#�(� p��9e�����:�z��2b��vJ[FP8y�isX~E���
b�p�@�  !o0�O�).���ƥ��<�m���&bg��t��.+�$y��(�"p�KZV��n��_l��`:���5��UlJ�������x�f�}u������c3?�}�a�L����gq�I��@��#�L�d��m!���!T�f�v���\FW[gz�e��KNh�$����%V�-�)�����2��|��!��,��j�g���<r�8���s���W#�ڐ�5b����,>Ɨlf_c+���f��I�u���A���ٿ��_��M�__ο7�ǳ�_� ď���  &��DX8
*"�� ��7��@��/��QVs��`����>�B0��!�P��@ ��
#��1X(�+h�Z2��\��eOP�69lg��~�}��ل�hq�o�@� ���&L����gr������f\�t�I?_ �; �������2�w� p�aH�e,�ej��2d������4hQ&"��B��b�%�((��Aa� C0��|(.�C�@��(�X8!��a1P4� %�a��xD B ����P�T��:5ZP�,p�< �K��^�s�9Zv���A�H\<����-
�AP@���A %`BJ �9e�WŠ����!��J�����J|������U�!���`�Y�h1KD�F�0 �3/�FB H�)"���c
b��`E < �KK�F�A��#<h��WL���6K��T! �!��%�xLG��p��9�t������7��4��eG.�K"Tae��w) �HK"�p���3��&
�����7z+ǃ���.|���޸狩v�����7~_=uF�9�+��.#.��懾/])P�n|��O �\� B����ʳ枝���9E��#�dȉ�#���|r��6�p}}�ّq�y�p�s�W������y�����6��nr�z� /���l�͙{�|����{�?h��U\�������\�Qɔ���f�T�9�f|b_��qb��������	�����%������m��yȥu�f��%z���屋��ɍ����%���[��_b�O��Q2���pI>��p����-���!3lp�e݈5[��4:�Ű��n/�.~����
�yy�j�Bv&'�\ak�"�)�	Mr�  ���4Z)�㠾��1-�ѰZv�B
�9�VC�E4�����F��ۤ�=���^��qi �D�Y��	8� ��"th1K�D2�F�@B��E�2'쓃!!�h�F�1$N�,H�<"R� �AA@��D0IZd�H``h4|$B�M$ctQp�D�i3���isN�HgX�v�2Ũ��!����霵�����ן	�g��l��G��A"�.pe�\) ��KzQ�BF��f�b<g�� N ��Xm+`�OyW��}ٔ\��#ډ'Fw1Y<��A�!C�fX��`�\�"1��3+cCR�D
MKe G�C
�LP�B(�p	�RC�j�UE1��0��P�9�,y�	�IA����S`D(�K?��Ch�00�A	)©1R��1�d��D��g�PBq�X���a����%��Ƴ����X�C��to����lp��o2pn:�.��$!e��9w�����N����3��-tZ����g�_w����Y:�i�m��N2��7<A:�/f�W毬=#��9*k�I��hq�v|����ܚh���O�8��Q6�g����������wdγ�FK-�S������<~��|���l����K�����%S򽫍�8��� 3?o3{�Q�$#MlO$T��9|�8������Cl,ߧ�M�c���B��R�C�C��x덅A:9���@�O���kar`��.��!TC� ���A� ���e��I8	�ě ��|C]��$���5R�BQX��6
�����8 �   ppst�Tv�(FG6�@��JT2��r�*�y��s<�]���p�&��L����x�p"��=4]H �iΠ\�.��ѧ����p�PX4_�%N�(8���H  �xt�P�aH ���aXH�B�X �`!	!�$�AA00	�0�B`Hk��S�j���V�>���&h�l�eַK�Њ�dU��w�Q�U�X���̃�B�"<�2�!�e�� ЦH��0c ����(�)�TF����1��Y�`s�yB�M����U>b�Mb4�  H�IF�9؆ �Ga��Xr@�q�"�"�x���"E,«�B D��� d@PB`��%p=_+.]$�B4Vy�K�>Of��U^�w%K
�G�~@�]Rc0�������Z��'��'���X�e�Ա�������l���t��)�a��ٯĜ�V^����o������9�+��e��M~ה��-~��!2����G�}�����}ٳ<���P����Ƒ�`(�(���쏃<w���V}�Gm�؝�p6���&hR�g���4��|y�Fp�~唂�t�!���HN)���P����	�j�$��t��A|̾���|��|=��Buy|��7������e22t����%j��dޏD��^$��^��� X^�����46��+�� p���z~=�%�-�빚�5�a^#F���ZC}:K#�
5w❺�N~h�f{��\�� 0�� �����	�a^��X  ��^ ˣp�=xŌ¡��R܆KFh��� �\d��D�)P!S�w%(H����D �p�4�q|��]i(]"
&���"K�;3��D�
  #,���h"\�� ,�@�010,b��( ��! �FA�(4�M�P���WG.���nM"���	4�C��>σ���9~���i�CJ����9�%`p��� �� ��M��(J<�۽�q%<�)ēQ�j���!f�$>�l� �G�P!"�i�(�	���0�rNG����	vPX
X|�������4   � E ��
x�$��q*�T����]@!FA5�Q��(� ���x"0HN�Ʋ���'$�*�����d�e�O��(I��Т��8ԉx����ym���{������d �1���ى�N�̍��w1ZЉ�1���1)��������R ���O�С���W̽�w<1� ����B5����xe�������F�������%�9x�����?{���/�Y�o��L�m?3���?�?�O?~���_���4'��/�rql���P5��"��t�_�%I9����A�%�4М?Js1���轾��P:�G#Ѿ.�Ӿ9&�q����!#�&�1�>~�ly6��X��e>��`p�G"�,����A!��p/��^��#�⢳�<�=J.ד��F`f"V�*.������>o A��":��P�ĕ�!HO��zeDd|kxn�.�)J�/��(�	�/"�i��3p@iA�G����Q����%Γ�iR�M�%N�P"�@�2�+ �,�H&9c��B�p0D4I�`DN�@�H@	<�8����H��� ��E(�8����i(FL�H�>���'DL��Dg ��`�v9#3��N�Y�.Т[�xG1��#X��!�Q��
L���8�o��P�t���H�`��޿֛�w�V����C��Qg�����#;�#�H�p0ʵ�� g�����[H�S�G[H��!M�	(
M�	^�g
��� @ Ƣx !D�aST��(���0��J���S������` Ԁ@��(  X��C�Ҵ�s�@���p��O�A��=�Q��G��~��p5z��|��v@��t��ݏ���<�Lv}�O2�'��o�N�����GqM��2��,��w���5s/<��M3��>�~<�7�
t��?��g���I�]�oL�!�@c g�x6������O�>s����^5�䱭|��4����n�M~*��}�(����'�����P��?�����k��9\��8223����Ԥ�_�~'��c��r�
�5�p��9{�U&�!W.�LH(��A�,��Bdi�M��Fd>M�0,��
2��)~��/2�X����Ϸ��&>�ED�Fp���&���X`�54�pB�Hܹ �тcQ0�'�ZmWng9��9�(8$,�� 排AФ0���I�)@` ����cL����<�� Jq �QrO&F��$ݫ @ h����r5�����fĈ!

ECI3��Qh\",�4>�1�6!�iN@b$Q�]�����҂������ �4!�]qZ<�{�8� 4�>�$���#I�� M�P�3����� �����#�0D#����-R��̇�x6�	2�Y@���(1m�\�K	�9����pBRB�֠M����:c�x��is�*v����o��K��O+�}\k��v�xL�9��|ZY��ND���1L��sC
�@Q��a"���bp�@(H��YG"(qJDJ�H� ��S���S��]�iah3�#ႀث���V��~E��9�Aa'�)` bN�3��i�3��N�$u�t�8�b!�!�b!Dx��5�#�Z��\���PAJ��}��M�i��|-��twt��~�|�ܛ�b��;:����JF#����N~�
!�v(m6��a�=������NH�$x��ݯ��-������$���#�SZ�uZ0���=�����m� O��Gs��;12g;��� :�D�dtQg 3�h9i��&��%O�vţy�J^�P���^��܉��ay�|iP	���ҡ7#������嘐�&�(414u�a0d9�{o\���,~c�0wpP,�	؃��@�	j� ��Ǡ$����&�A�^
��!={h��
X<�1G�a��*�T���x�̥��4=�N�C:�~9<�q;��� X`1a$@�<{(�}X�x����:��&}:L��6S�$�@	I��/�<AI���G� ��)�l0 �S�BЅ���YJ�!K���Ф�@��p�� �Āh�.��.��r?���`��q��9:�q�S���8 Z��6O��KTX�jV��� H̓]��ĳK¨$��1(��"�<d�^�̯��b�5<3�eCXnr߂�͐*%�c,�}��/Y7�>Q��|4~8Z��W���m�������{�͓�Kw��Lq@�ۆP|��Q =�|�Re�in�"C��,C�q����@��#%	��v٤J/���$��� ;D��&v���qI?a��0�](H���P�Qa����K2ʼ�u�� �ѣL�!x0֨�����?�c���4�r��$H���.�O�K���~+�rA-�r�w��y��4�#��J�3w�^ՅkG��J��W���?/a�p��B���Nʉ�;<�����+ cA2LGP�9��U$�'��+��?��&L�4�ԁ �á<��>9 ;� $�	$��JM"�9�褳SXC188Σx� ����(��bS�	۱����J��OQ9���>�����S�C�4S��q	� � ���6��PY��b���#\lnE�}��Ģ���$���{�'ΐ�p��c=��h V��0���s��h�tF`9ϳv��p��k�X`�R�@�>�E;v�����A����t�Ă��8ݝ3������5i�S�J�;�c��Ȑ����������w�	2�9�|��H�E��a����-!N��C��1h��-Z�H2�����$GN���]�P�� A�$�8
a�wi2F�:}� �>
$�y�:�ɐ!N_�x`(R��\��S���۳o����	��@ފ�&"�dF�QOB�A���Ϝ1�u��9<2RNi�OB�OPc�]d�W��\ B����t ���	�(_�t�����:O.�d5@T�. �^�Y�Qn�1}\Y�<�{|�ma�9ㄯ�2.!c�89����1("(��	5�N�1���91��V��`(Ӝ)��%=�P��4)�0�� fy��(��8D7
H��ę�	��A�!��_�g�f�eOZ|U^�GW���GuL��uY@����0��>q?��7;7��@db�w1DH�mL���<<�`� |\z�D:�X�����Gin�?:�,@(
u�Ii��$�%:Ąx2����B��K�i�Q�F���'Ǣ ���� C�k%��ЄI�F��$ax�m E��,AJ(�d���~� ��(n�N�2�g)8v���w����מ�9�Z�=@J1�,bGc���p��c1,���jmR��s�� t	��p,A� xs��! �;B�b`�^C���A�����`BV5�+�/r����4�D~�Ǔ[���`g� 2#,�`�����m���|
����
;���'ѯ��=�+@��%�6�qV	��0$d�)�A�H8�PgBĢ	���+��]�y�
!B������� I��d�D1h	i:(
4��1]�^�!F֨X(�	α �|�W����!ɓ�,q�I��"YR$I�����t	�@�_�P�>�	{����A�8$��#��!�`U ���@��H�Y��B��:�\P�G/����̹1vu��;��������wI<���`e>����V�3?��饋Ka�B�eM]���%?�� �H�(�{˳�p @NH�:�%"���A�<�)���*����tч#���.���;�@�߶y�J�0!#J�r�J�!���� <-�.x�0��Cf�4�%�˻�(N�~_��fL��vdM�	MA����V�.�ߧ̅��'�+�OU������s���g�CA�5:0��Mh(J������lw=n�/�?�}7��I��ี����9�tb���Q�7�hQ  �!`
(�RD�0 )�Z|����`��PbM�^"7dg� re�/���s*(���cH�Z�ĄM�&��zB����id�_�����@d�<< Itܓ�+4Gs�(�����{���4!C��P�!�� ��|x	IrL'9��PTO@��Tb	!°�u,!K���?.6$ 3
D@�w�1~�8��mҧ ��WCÍ��]m�� �G`1 Ƈ��|��J�z�|�uKL {��y��|�����C�Q:�^�R�g����h�V����~�}N�6(M\$��<od���4H©��	N���%�d�GE�.�Lp����9D@�i����&�"H�qF�t#h����l��!FS��J�y�H��!�.��S�QX:PDb�I �a�BE�y��9�wX�z�i�"�k��'c Sa��N`��pX\r�5����K�s��MV���8�M��]J��4�������hOqW�T9�HρXn��.���a���,��@���'����X52 �t�5�q秜���K��>��,e��0� X�*����2L�����[�b�6C�����{��hGS�Y�:���S��CH�A)3�[�H(qE�<
A�<� I���s��}y�+k�}��`����������d�>�2�}8]2��AS��>O��������{��*o��~�ߵϏ���un�7�;9��;��6G�����$3�����+����U=n7-�.n�1@V������CDF�.��	�L^ ��D(�d�dtU=96xc5�X Ƴ��n��y��;��'"�柿�����2���4�E(���?>��7��J�38���CJ;�"%:8}�y�O�@g0!Rz\����N��k�������p�ҡ�$�e���	!a��x���L��m�C�.��R�Y$1Dh8Z���܇�O��$H
C�A���p�� ��D�  ��A��'��4!���#䋇�}C��I�Y�fr�c@~�􃎨����<6�z4Q�6U��|;��d�$\|.��8&V:�rK�gx'ߠ��5����z7����C��e�����t(!�@�b�Y2��Aqpi@i�@��2'đX��_⠐hc!4�.Ђ$J�aۅ P"�u�kc�'�.RXB�C8���gH(@�Mc���}�T�4`�]� I� @D�:�XF� ��C�2J��K�@�:fv��t�M[0)_�,�YDi�C�sJL�&C�iB��Z���tv�n���F� .�od�-�?����?ٱ���9U6޷���Kcv�(\�S�*^#4 �8�3�X��0�΂FL\�5,�x�c�<�8.�@�Ι��れa�_�g�3���*\�ȸL!�>���������zmD�?V�lu�x����®C�n8g �%�*t(������OM�=,B�*6e���+?��pB���Ҩ�;'I�J�r�+�ҜV����T�g|��n���s���}���Gͽ��^ج��M���9��l��1�(���)=���D�w��fN[T#����N�w�W��կ�CQb�ϻ�_�H7U(�'����I��[�z$�J9����w~}���{�:��e��F�}���z=GibJ���n����;�����+����}˓�hxQ�Ҙ~�;������q09OL�sDxbF��g�������g �$k$�"���;��$��i�I��2�	d�D����;��1�����]�Y De/j�������b��T���X��]�g�M� ����%FAX8!��M���q����4�LP���7�o,pH����H>��K��ӿq`0,
���#��m����ۺ�CF�� �uέ�S�OV���^�N��؁�	\8��#�����~n)yv`��+:��!$��"�1ir(4}H�$9�H���Dp�.-�a�3���1$z��a�
A�&��/�d8�bQ0!C�\��*��T��CB����8Gp��-b8xd�0rT���[ �@!���c�ˌ`�Z�.E�XB�iR$�.E� A�e8�y�C������Gj��1�>���'�9��������,[���Sp���c�}��1�Q�E"��S����?��ܐ7q��*A)>;ص��0_���0��R%d G�1DN'�C����(�	aXBy�s�I��'��G�&��Ee�O�c��#<�O/�gb�ԭ�*���yĈ�������5mG���O��d#@9�K��/�]���Q"�b�2X�4��6S�atP$rDtH�"�9.!.9�7����&��d6�V��A�4`�<��v��<���g�g�ys�7��_��W�l��|<��oW*w���4\KOy��&?ߥ?u����N�ȿ����竑OGǾ�Կ���
�Y��q3�`Gv?o�+��_��/;��_�~}6?7���|���W-<�)E4��<���zB�w>��&+����y��٭����]�%������#��X�ͽ��(�a�c��>��s;�L��c�q�����cG�<�3s���W�~'�1O������:��顖��g�_�@�a��y����y��h�a���;�$�"
��L�&I�E�ת�9_�Ʌ�t�ӦH���5�� �APf���A�ᘽϣ'`���h:�у��J��9�&� ��-j,�a\���CER|�8�� �F@�W�X�=�_�#�z���蓝���ṛ?4�ǒ5�W*;���^�Sx��w�ce$��[\�F�c(.q�0b�1��Y�t��I(<Ȉ�dɢAzX2��#Y��Q�=�$�zD�P�(���,�%k;(<Be|�#,��aÀFp(]"(NEC�!M�D��d�v�H�AFđt�ا�C�ꔸ`��0�y�2��iNB}\r��q$	�Di�E�Z&��)L��A;����U��Q�@F���)�dw@���)s
�� ����dd����i�w=9��ŨSb0�nȸ6�����s,e0F����I����G��y�S�p#F�.�����M"�規g�S�g �ǻ^���D��(y���nG.�*;O��@��!4���0D��Q$B�Re���P��c�$B,1z�XF�5J;�2Nig���ȃ�9��2��x���|���۷;�ܿ��z��v�����H:a��O��Ig�xF�M��^\�:����ί������x7�����0z:y�����o��l<[;Nx�i����ƿ{A���|�x���������.sp�����?y�����?�1%<�xv�z5��g���>��@�aj�^�y@o�y����1��x+3����|��O�?n�'/p� ��^������/>.Tͽ�;��ݸ��ٱ�s\t�s�ܻ�K�_��c��q�$At�/��8O#ս���$&E1y��m�D_�����U����ď=z�+h�S�:����G�P0 N�$w�X$�G���`of�`�Y����𞆓�����0%�'��Ü[��Xtǻ��Uװ�W���{��A;0�r922�c�n�Jh��+����ߩ�|�ܵ_���6�1������P�����&�!�\`�u8���Wl1�wy�>�d�é@�\� %���#C�yv���`�؄��< F�t�G�	�%�2U6�`Y���<�?��q���	��(c@2�qH`��ф"0� ���8-:�3b�ts�+���x�3:<d@���Q�8nq�J��/�G(u2�`XW �x�~"�T(pF�c1DFE���Q�-�,�4ke��4���i_��D��k�C���7}�}H��x�Eij�l/u� � �O�,�5���u&���`��<B�SΉ#A��N�X�	�=�&J���6��gm�X���\�k�X%У�^�ߺ����"{[� �l���j-:ү�lSa`�e�U��G�$�i�#@a��"�H3`�K�%F����T��\��~�v)������"t��ǚ�{1���<;�30}��׍mN	��O��k�g/:�)O>7�]�^]��k/����[��mv�~ݯ�~��w�������ypO��|�~}{�z�}�~��_n|g�ӭ/��^�{��ǽ�c�<��ٟ��}?U���㾅�]����f��y>�L'y�O\=)��ݝ���_�/���s�����������/��4ܼ���n����	(|��ʧ�\0�	O?�Ƿ��8���W!t�������#6��ݫ����}=d���dgs,s0n�?�����w��3i��Л:��M��R�L(O���)L�U���@�h�Y��@I��a��e �IA�H�CfnB $��F��k��30(�Wp�JDln��0d`�pe�p�%BӜ	X!�l(Zy�LD��S4��7��%Q�cN�{(	���'�q��f«x�����듫�������~�Ǆ ����?���8R�3f�")�$G�2���Y��B1�g�3�̫��y��3�&"A@	��x��`�%N9g�D�O�e�:�D�B�G�&����@h	����2��3J�Pc
a�Kc�+�A���D�N�K�UB�(�L�e�������0|���
���F�:�J����0���ǫb(��cW�؍�rF�M���s+��(� Q���9)�/M��]bu��nFk�5����~�z��$~"����+m�C�E9SO_<�fk�;���(z��ӃP'�i���k�F�!)a�{��bBED�s�$����!'����sBØ��]V�@F�..��*�Υ��Y9�
�|��1�pB���u%�X��p���Ia�6�g0�tّKr��]�%1��1ٺ��Ȏ?>O?�����g����<���s�{p�3�>���u7����ϯd��w���36�l������WO���d����w��;?��4����W]���K#s�x��	����Ə����~l��M���9s'd��c���-Ti�v���<���F�ϝ����y���o�W������_��Ϝ�v�����E���P>�z�\��y7����i$TͽW��Qs/T����"�yl���+?�,ͽ���$�N�����?c e՝�f⑴\�	+�c�� @2 7y�-V���̗�t. �"�+|����^2L҃�)8��1��M�r~3g�q��4o! %y��7@�/��e��\�6n��A8�<1� !bR]�a�#X�9�c�
'�Qx�pݛ8���.����԰���p-��=�GFD�����߉�+|r��Ȉy4S�zc���;����G@`I��C���h����h���9�DqD�6���;��%�D�D��0|�Wh�9^�QΩ �Q��蒂�C�D#�c�ⴌ.��"�Y���ĐG��[�B���S��C�ZX�d�TaLҧ	���MF@�104u���-b��1o�y[��6襆����Ǻ� Ǫ�7�H���k�2�k�OI#��2��B% r(3�;2KĹL���V���v���>������ߛ\�^��ӽ/���~*�٩�����9����|�x.8�2s�T�gL�)����`��0M��Qc	���Lw����h���9��#I��^犗�;>�9�T(r�3��}����n�3*qBC���R-�x��W�W���3�Ǭѯ^�����h����	-B��9%��b!P�4فP�6�|�_�e������x_�������������M���g{fS��10�_�O�t壸BW��:�{�w����^ �I@s��}b��t���}�z�7�s�r��|$����l�Ɠ?��}��4|��f�?������O��P���(��`�[�Z��_7�N��: �Qn���+�\�j��'e��ޗ?
 ����3�}e�"��c�(��*��w�3�������hqG�=�ܸ.����߹�'����|p�{��}���;'c��~�?����(Y��%M�p��R��a
������i�2>�qB��pr��'�����/=�Y�b9Bcc���7C�`�a��aB�d�b�C�����c憡ah��Gcvv���Q,��;C�Tq	'�H�t,:(JD�6�>�D�u=.�z������k�'��y.��k�#�W{\ͳKg�����ȷ=�_�;�����~^ǲ�>E,9Z��,Q�k�,g� �hK�����Q�J�Y��Q�V�����|�W��y*d��T]`�k��:>>E�4��Bk��Z�"�,�D*r	���5^Ѧ>��hU�f��u�K��,]Y���;6X�I��:��d�].q�|�e�Ë�7�k*��9���|�F�hVr�����-�m�ʉ Yi
���Ϋ�� I�)��& a�&=l�M�~�B�3f�fƸ-|��K���z��;H�`W^Ki�4�5���m$����g�'�{�o�ע�C�d�\�y���G<�z���$�s]��z�B���7XT�VԈe��Q�y�&���%�MU䵍&'��c��S"E��T�" �����\%�PBq�|�:e9�$5�Hbp���1`�7!챊������cM7X��{�t]`����,ꠚ����e/wޟ�d�=J�~Z�jΣa"�����{t>J���1��c�,.���������w�{P�� �+�I����Gn�=9�Ys/T�߷�Ƚ��.�,���8�H�d�]�w���㸅ʋ�{�����+���B��6�{�.�#�{�O�dp���7�VD#��ש�z.�sG��[�̯���w^��c7w�.�#��}I��Gq}��'47��.4�G�p�'HF2܇�[�#�?�U�{%��x����{?���yy���w:ΖwIi�>&t�i��pA�V&�p��1���h����")�;	�h�� ��b�S�����A��ǐ��-RP"&9K��%@��a8��2�ȹ�|���� 0 C� 8
�D 	�A���h
s58��Hщ��K��0:634��g�����ld#"��6{=
p�Fx��Ή��<���*��s52�H�$�9	 �) A�:E�6}��Ȱ�#�!h8�"�?�R�ut��P4 ��(�a�c�#IF��Ò�%�'�(�w���P�G��@ ��eN�c�.	���z�$ɰO��s&էA����
B!h���`��.)ރ�-ZDB�����"�b�ʙYcK7��sM�\�H�0�*$�A�b��c4%~�9۸���BĂ�j�kW	��}���"`�Bo�k�.�%�ގ����j�".FK4�M9��& ��� ��%� �'�L�O�\�>ν�X����s��t4�G�"��Ȝ
'�2���6�b��1C$E�\4#>chF�̰��4�ZL�AӄѤ E��k'�G�jw�ҧ��Q}|��4$��-b4��'Yn��E4q���R���Ի9��m1���ګ/��n��6��� }h\�4����%�*��d���
�If�Y�f�B�[�>~t��$�h���;��׽B�]	k��Λ��̿o'O2����ҎJ4��uuI7��]B�''�����+�� �^���х{����/���f�'���^K�i+Ks��\�s}?<�}������Fpi�撟�d^�'ԡ|�үO��J��R`�9,��5n`�S��_֟W�W]�߬A� ���!ݎK���P���P�b� 7u`|��ރHΘ���@p����''°gN#�FCA� ��N Ae9QK@,���޶a(��)%5:� ��(���Τ�ˀx<�Q\��7�Y}$y�?q����6�Мd^۞��� .�|���'\�'�/��PeM�:G���+쓧K�1}�������i����%�`ȗ�g�KĘ!�uNp�"�Bx�;\b�8#	��E�di1��C����*�ҥ��B9G�@�+�	�AY�i�_d�CH����6���Ѡ��O�&+(��h�e������a�)V���$�y���"Mt {�67����L�e��OV�B�}��]A�N�ǧ�[�h�����P�U]R�Eip$%$�lPOSؑ��1g0��U�ρ���S�eZZ�V4�3u��ޢN) �{�}����]z����8▖�B��J/OI��K�����I�7�f�M����[�a���@�Ls@���E>�>�a�F��|2x�YBj�M�HQg�,d$�Q�̀�lcy��\�S�Y"�Ԅp�
!�Th��(`h�������|��9��G�q�f���%
�6UJ}�̹�������W�c-������W=)�UV�D.ll����Sq����nq+�@*���ժZ%G�B	!����Mv�o��3߷Oz7f2�v��f����$����0}���fY�l���)~�'���n�� nY���y����w�4}�}��=�ՠ�v!t��m>��H�|��$��N~�9�H�"� (�N2��;b�)�^�:V��g�i�_�ߟ�����3��Z!��X��dx0bd��q��	p�3&�Y!�����M B��"q >.
A� �.I�$�q��(aa��!Bc��8�B��� 21(�Ѥ�$�=��p���t�
�������Q�8��Ka�S�l'ӈ_T�o�;���^��d�$�D�dO��H4y����qoB\�6�I"�t�$��eΑ���r�"g��O��P�M����g�4{��y��c���X�S� 	^f
 �#ٗ�29,m,%�DX��3�[ �1	69�%آ�}���:�,Q��p��s�@��a!�(r\�2G���(����'�}�(HS�����q��nOW�~��(�[Xa�[�L�c&2�3��c�i$<�8D0��̇d0 g&�&
�x�s����+��F"Ѽ�\>���Vi�Ƶ�@9RK�������@�:�"�xu��i�^FJluH�E�������Wy�%��E�������� �po>�E��ӄ�$"���5�Dc�l���`܂���L0� 
�q�#ɡ�8��r�*%>`�m8M�1�K�]�����c �L�i�D�7�Q6ٶe\BY7�Ҋ��Y��j�U���7��"��Vpu��t �Wݝ"X��\)h�M�  �	Dd�l 	W2�`��vC�nn��Y6�wv�Bs��m{�
�<i$jy%j��*��
�i<��	1�,n����>q'=v�=��ՙ��>��I�	�*ܒ;��}�)?���W4�w\�E�w^����ggg��������/���} ����x��g��0	�	�$�E��3�3���rY�Ĉ1�8=���\��D�Dİ�p4��� ��X8��E4
��PB$)���}�1$��,m\�CqPس��7O@���6$�
C�܁ 7�{�a��D�O#��O�~���B����pً?|�����, hѥ@�yj䩳I$�7����	����	�,� �p��5�Q,qN�a@��<)&�a��� Ar��t8���2 �C+k�y�Ƙ6UPAba���d��)!�!Z =�,4��{j�g@ģ�a��r���򧙟�ֲ�*����P�/�|�]w�۰I�mg 1a���4���%�`(���\��0Ti��G��.	|&L�*�ebc�W�J;����0��oSM�j]��T�7�
E�Ǽ�����i��з��V��+�-��*Ϲ���I^�SRo��Y��������8�p�wT�.!��3O�<U�'�.H�.J�c�2FG� \�q�; �0F(�a9a�yjP��(��h2��G�69��1(3�sN	�,ۼ�W��K��{2��g7��R��N�J�[�|�s��"W�H�$��Ѩ�\[�t�þyk�T$� ~5�Mܭ<H�`���0�`�
!(��!j6>����Q`G��@{�� �g�x�E�>o��Xȗf[�N���v�l�a��&G0(�cj��8I�����}��7�r� |�����<��6�ܺ��ٜ�������ql���>s�Jʹ�B�]�Un��4�! ���w.5\( ��c�8�ڋ�����:�A��h��b@\|�ens��x¸g��:k�,	m��p$�E�&�P"v���Y���zsΛt,C'r� &'w���Q�&+tuD����Lm6�+S̍o?oớ��d���������E~�b:���+��=���<����s�8�A�qئ������K�y�E�9 ��p�[<���S�j�:8��:�f�&�8�@X`�I��� bq9�MR���h�;p�d�i#�|��bd��i�b�D��	�`�E�hb�����N�+HE����|�OyO��Bqr���e��E��Mp��%5� �8�����!�� ���ߦI�=F�Bx��)�44�H�xđ4�F�@�#�	s�X�$�c���Eٖ������E�eu�X�훹�
��Kh<٥�YB��}^�k��|���Y8��|�����9TX��u�r�R��g��q^�	8%�౉�@H�Y,�HrLRA�8bß�e�����X���!�<��d�b��'<�;0�"��O�y6��7�&u�ph�})�s�K�~f����~Ǭ :�4�h�8&���h���xjXU�!@�!8,^�'P !A���D�;U@1�"�,91�Tph�7��,�FD�F0���e�)�<
pD	��h�#\q��[�0,n���� ��"�S;�;�Z�q�e#/�H`�M�����''�?�-� �g�{��h�M��Li���'�d)��0�fP1c��� � dD�#Br���:b�cp e�>��S�8�1�E# �G��G	'���L�� �v��{�N6I�$v<��1 �HF4�(,s��C��:��ɷ���m|����vL�C��y���#�����Ǣ�/��cћ;�\��"��$5֘��>���6����!��	?e�G��-,%2Lq�h�I�)��)1�
����C�0���e��z��J�� ����g�#�QP��b��l1*�`qA��pL�=�d�+�s�Q��aFJ�%������8g��Z&�-8c��7X�	��(���\�O�&o9�׳M�'Hc��p�ì:z�MPဝ�rF9Ӈ��KHN���p�<�Ȝܕ5���لRz+��u�Z5���:�c���=ߓ�?���/�3�닖�qk�4^�m�ˉ.z�~�MC_ƚt�ّ}�g��Y^!Z �4ܤ��2�6��G�b�c������U�L>[���é0�M�y�M����
7�0�&��c(
p��
<N���l3��I"�Pt�b�&G<�ǻ��0G�Mcr��T�k�"�(��{����E��i/�z���.D	�0��%�,�O��o[���w"�� @,Q���2��AQ)XG�-��G�l1mЩ������#�J,��R"_7�Ob���-(��0��5J6��E��$��"�p�[\���(���X!��251AE�gt{wd��L���z�6�4K���/A�ӣ���eq����vHx�l���p1�Ȭ���荽��̆* ���>4 _x�q���}��63y�Y��|w���r_�V~�o�KTgI�ޱ�~�� �7�!ʢ��# @[� q�̺�c�e�[`ks��S�F���4�Dv�w�tj���$�p��T7nO�����;Z��� �����+~_C�}-���5���R��~w%x�Me>�4r�~��c�ٕUo���#�:D2�3vA\%jӌ𺛟�;K�y�!0�)�,сP#�1`�c�e6X�M�.�}IJJd1|B���]"NIH2�pB�"y6�K��]4]R4!dh�X�E� �s��9F��'�B�"�R�f�M��i�E�1 �4�X$��q�,5(�	A���	q��	S�O6����������s�
�<��&q���� ь�e��y�4C(�.F�2�J4�$��S�-�#9Mƈ�&N�6q��`�����@<�A����}����ʞΞ��Ô7�H[��>Egl�k��#S��8gԱ�+|J�y��G(�8�)� �uN��96�S!G�|
Z��>%I �=�ԐDtYd�c��b��FiK��ġ ��'�$��2.]4ct�����R�
'ΐy�9f��S(`�f�.p�:T�&�9�_R$���M�&���y���5|�\���
>~#�'���<s �����Fq/:�`�9�	>p`R ��Ag��Ϣ�O�+x�����z�J��������u>���wʭ�A����@y3�T4��} 26�Q��ż��f�!��<*�%�!S	Y\�(Y���c}��� *�e��`��	
��{�a�+��X��(�	��Di�F�z�l�J�`:�r.t�x���Y!ɘy�x��Fl��f�{�� N��c3,�m�Wy��m�}�N����<��E�a���3��$���C[��@�� k�Eg���*K{Fأg���a��G��G��`�ɐT͢�z�|��!jn�!JTy�5�>3c���~�$d���������&*0�||h�����'�7�ύ~�Ɏ`���=t�|=K�F<���2�i��hS��$;H�.�-�e��B�g��1�p��� �U6��(�!�+J<����Z�B�8HF�!c��h�	�YdEs�'#b XL�N�)DA%J�2Պj��Mڊdh�b�wT)a@�m�+���Hr�t�ibz�s��#�(@���&Ȑ4"w���h��"A��ţO��<C�� f
�Ȳp��Cs�-4}*����4�<�����~���}�>���}@})�������i0�T�G��������n��r�)��H6�%W{�<��(�4�\�pz�Pbe]*Z,Ť։�k�V�c�b�Ӣ��N&�L�6� g0$�)�Y"�u4*S�J���P�j�r�:R�T�ڑ�<=�4�̦"8�0�B������(1]��K���o����aO�~��M��D|����&U�nhT���4�u	ilqE(lB,�L�B�88�`�!,�a  ,�K�p@<�� F���G! �" 
`vac(�0(;(H R ��X��A8 &O@  `x"889�"<B�$�SX��(��h"B	�BZ������;g�7�wH�3��a((
 X4��b� �EÑP$��b� `�����A
K���sC�7�@t�7�q�X�R�p��Â��C ��6�H3��P�ȁ� 
f�0��JBg�]>!�*w��u�q�O�"�,2E��� (B����O���Uw�d��s�KRE#�!d�R����*��d�.Ҥ��ˀ댣@69�`(vIaPPr�h2BP�Q�(P�=4)4�Y*�"q��M�5v8F�"�ʃ��V��%�ԕM�E&�I/O�s�.'La� �,�V�K	Ő9J�@I 蒤�%�D�C�J��K���Ӥ���3d���h���(6�),�>����A��=%O���L��!j{r��J�D0���ɀo�Z��*�܏2sr,S�-�q��}O@	����,Rǲ�!+0�.+�����2���R!/M�҅"� ��A�H<0�Gp>�>�[��FA� �����2N�����YaCcXd�ߠ�:� ?aI�)�J�߯\�s��~ԗ�|#i{���u��袌>��%X�!\X 4|� B8��(�  GD����F �8E���#0eS-C$�SbG	�8���D�$T`�MBn0"�I�A�&!��\����lv��pB��t��f�4���q 	�d�	!@��zZ���09�AQ��ᘐ9ܹ!Fhj�����g�e�
�� @�C�`p9�`���8%|+���b�X( @ |b�}!,
�(����`ޝg��7�E�.�����c��l$� @HH���*�}��ũ�+u�B@�y�� 8g�>m.���L�:~��*�1�$�wXc��(����M�È?��åNK���8&�[,�H�!"N�5~�Rti2��M��g	C�L0`2)!��� f�  �'0���!uA���2L�e60��	J��bD�r��=��YnAI�@�G,2ǦV� I���2i����%��*�9��C��XV�ǈ:>��
��X GWj���#(2M�6ӹ!˜�4ԬJ5Q�1	��!�=AD���{�{��U�O�>��9vhi�;v�㻭�k�G��yş�^\������;3�,%78bޛ�h�F���#G�)*,2��>�h�Hq��f�u�� t�=F��b�85@��c�!�3���c �C��@�h�c�(ҦM��6�2��3ŐS&hR���-,YVG�,&_�$߁��R��q}��h/b�S���:��"�Cv%�il��)�Uխ�5C��Q��5$0�2Vo���]P��c <� 9�' (�/�P�Z� ��p%���bHa�%���ӆ
���"��2��A|�� "�;<JH��aP  P �C�(	흅@£���j<� r&�0���$lc��A���"q �J��8$����1X,���� h4����h"\h3$��C �c�D ��!��  ��;@c�q�(1���R,���h�v�@ �'�R��٘t�}f/�D3\c�@�Sp9b�s�9""ħOH�����Fb�â�� �; D�I�4��!�gD�<i�ؓ#ɲH��L�<
I|�p�EF���A��.C�1���rM�̳��P���<�>s�q 'C[(@h��0?$�� 0|����s�R�S3m�Dp��Ť��A`�d�O��m�p�U����P�1(�h�̰N�)*��4�� >!���4H���.U9���Kz�s4�5��|o�)���>m:�m��|(�eJ.���a�$�;DXF��U��{�!��i�&��E#�PF(��}l���,���X~�aEDK�	���<��:EB�8C(��Q!�8��"x�K�p��m�8�E\"RjLqDF�RH��A� Q\q0�Wz�P�����A/��kܾ�r���g�o����j�!p��0����x�
 �|��3��B����P}����C�\`#����1�g�|�.O��&m����O�ޠ�<�@b�H�<	�L����Q� S�1M�Sx��s�=௢��_�M��$���,J�Y<��`<|:d��e�2�¢y���&Q��I��ֿ����q��2�8�1��	��u�CB ����9�r�]��*cX�*�� �A�X�8P4�s&����N@�o��1I��"i0ˈ�[{M�`�D�)�f����3 W�w[tf�.%|���l�U(��Ƚ&w�g&��y�U�xB60��}n�أ���>_�C9�K<�sH���IN�h	 J�m>�5]�K�1��!�|�x,rH�7)��E�&�<)ns�6K���<�X�܅�������gM��ZU���a$����xܢ�"C�u��,q�9�Y�1�XN�0�a����	t��$[<�x��A9:!W�w��^1)ph|��;,� �s�o�$C^K��g\`�۲�s�H��2-�tA�7�4��u(\���e6I0��B���H�	��
T2Wܬ+k�-)4�k[��;��3�_��-��S��d�^e#��}N?v㽯r�2�?�Bf�z�"HJ8���c��e�a�!I2�m.`�Sb�E�L���<�S\FL�uٕe6��E�u��&	���S$c�)��*�3�&kL3b�]⸌�9�%�P�:B\�b(�C���z���޹�g�$���/�� �LzD,�(�;I._ݍ&G}�X�)���F����wDu3� �s�717>EGx�pT�1�@����cI�H�Q ��T!�R�xh`׆3�BF�@�HA�����L�I��@BjHF�C�JB�.� 1)f&�OL�"�&�bP��J�t9��#P�I���MB ���(�1 y�_%���%�t���!a���!@,K�ā�0P,@#� >@ "�EC1P!eHs�k�x�	G�����A���g<� �A0h�����f� ,@�(��Q �IE�B
}���2�UT#�� fנ��2I�$E�!�,[�qQXc��e@��'D Ðf�cj�(!��\b�9��UBb�"��:	8>�T�H:TI㡙ģ�E��"�aɐg��lQåC��qQ�C,#6)�����b�$����S�� �$7�����t�QH�b�»$��T���d,9n�*�H���lBX�a�q�%���H��5�BI���	ns���^�K`�_�Pq�Hc�y��e�]�h��5)�2�5b�8 �=�_�_X�5�c P��h4yrT��h��Yc�,a�8%#�zlR"����p�ig��.�,#�����r��],�0(*��M	�C�=58EI��c�}N���!�.��O��#�� ���r�)3�W��W?͞�!1�����9����Z�Q�����@0�Q���p��ppA�r� � BJ�}4�5)� @:XU�Ҥ�yv�}  �A�T����851)���]�QS<B�Z��btӈ��Q5zIi�bzhS�B�(��0H�`������ȋ���\t��� ��` j���B8�}�СH �P=�PZQ����a�2D�b�P$%�18m<|4G�%i�G���04F����-�6rX(8@����v��6��!E�$.F|RTᨱ9�d 	-��'�
����?Z%�
�1RR�xwNUIt�#X�OP���x�Gy���)�個��9��s�Re��]c�'L�1
�1(-6y�8딠���L�{TB�2"��a�H��
!͆~E3��2o�`D(])�9�Q-�KI�S|HGq�B�p�c�����q>�q�bN�Vy�Mw{s2�9��k<)��1úr6�I��$���xG�>h��#dٔ��$�GĂ�������	}To���)]�$7y���9�>~.���qYQ�I]ъ�y�zU��o�*�����E���������3��[֙��i�L��+zJ].�2�,��ܴ�1Ñ���<�&�٠���
T��5�K�.�xL�X'�c eI_�X,-HR%΃|B�6�16Hsȳ|J�:+���)Y��<N�� c� 9����b8g�Mg�M}�-�O�1�s�s�Ӝ��~;�f��,����2��W�����[e;���f���b7��ɉ�{TEt�Э&�1r��e�G�  �B@���b�*��8��yrJ�ƨR<�'�`�@�)����٘O��`�KDjDV�a<�p$�ʵ��00��`��1(�Φ82����A!$�d�$����0(��1 >�'$�!�!�c��,��cah�(bD04�	,�G�$N��l�h����o�uD$��Ѹ:��J�$Ca d@��t����,DO�L���c e�x���"�x�`�Kls��M�$�R@r��2'	E� ����9=�T��8-(9�4'�I��%NLp��d08�[�0\n��Es�8�9#G�s��P�h�q�ɐ�J�G< �MK���$��u-�8
*u�j��m��d<��oM\(�0�_(IZ:�i�DU�̇ @��mZ��Y&9E2�1_@�C)JT��x�9e!�`D F�I�t^i�)�I	���D/]J���n)&ݕ�������_[_K��>�=��sK��Ȑ>�6'I�yyCgu�9���STu��)��bp!B@�S�S��1� ���K�.!��q?��m��L2@2ÞZE5�T��4��IN���e-(	��H�#�4�0ʜ�4��]����B(1�)�F�� �� 9����@)�
4��vjo���ͅM�1x)~X���:.O��2%+U��]7&��6Y0��Vuu�@�k�g�Y��n�.�L�ؖYe�G����hل����S>�[���f�PL<�y�mVwslЋ��Mvp,��x^cm��	��S$a(=a�]fl�Ev)���r�0���x^�)7�9`�^�e�%s��,���.��Kn�������lz*L����y�ͱAy�]���#.����*K�E?H�����渏�,�OvZ\�����e�M�=28���"���M.�MB�5��r�������T�8d���*���i���I�%����z�B��O��L��xn�V�!u�%к�R��e��np�
G��H����v����n���i�;��ϳ�j�?�/��0$$l�S`"�Un���'�#�xB��Us��UX���b H��A	EHS��s�|LU��Y��A���A�a��@,,�"Cr� �Р�9UF2)V�(�XGb���*� L��Ȏ�sM��,� �P �9=�@�NBVtRF�5ۦ���<q>�r=��k���	gc�Gɭ�m��V�]�E�����@ZB5$�G$���AXE*�㖎Q��"FkQ�M�/��;�����l� �Ty����2��!V�~Ԟ�I���B�+�߽�O����~��O~>pN�����)|tB��sh3{�vA�8���vM�/([L$��96�̣7���-D�H�Z5J�`u�7�w4�&�K>�9��	����C� Qthi	�;�8}|��y�hA�Tp��Q�(#�n�b�@�c4�
��rN��$ţ-9�1 9,�
HO:�b���(���|�}&�����᳃}���{JV�C��+B#ڠ$8n�Z:}۔�Ѧ5���&��0�,��^����φ��+^H����ݍ�&n����a���t�D8 ����1eZ|R�^ꝛcO�f9$Q�{�2ʉ���]��Z<o��uX����J<+�Й��{���~"�f�N�-�u���C�:{�R�-ĳNqw�Kl0��\�"�3^�u}����~���x�g,�r��Y�g㩇�<���>ͯ��.p{1�<�)�M�{xf�#͐GY�H����3<�־W����3����s�r��O�I��fc���avI@�-��P�����S;l� 7x�[$�S�1�/r�2>�f�s���x���1�)�l�Lp""[��~����C��l�3��xj��m��޴��d|^���|6�=^�v�m���K�ӿ��0����S�*	=�Y�W��T	��hQ�5��u)���6�� Psl��,�%.|,��U5,
����$�N�e@�׸���`�s�(�&�h� �� >!�u��NI��2����c R���_��^�>�y���RK��̜�Jd�m|��D�$o&O�Ʊ��Xj8��WO���\+�IF�)y��Ǣ�L�1�i_�B���,bQ�<�=��9Q'�9tΞ����>�<�&�p{5����jƯ�<�I���7�V!Q��u~[o��4#(�J��h�'��Op�Cj�IF�$�h���m��� A�I�}�MB��C�Û<EA- �OduV��4�"�C`�*x���!�0ΩN�!ڽq���IR���ɞO��)��"�G���ҏ3[�i��|�?�3�8}��V^��M~����W����w�������R������4���/J΍�Ck�ĥ��x�����:���&O���:��o�X���ٺ]�E�����:H���gI���g/�+[����^js��&��m��O��m��9�`v'���4�?b^����R����g�,�#N������s<�G܍�ɿ���S��q2�	�ߥ�mѠ�%��%��Cn���2�3��q@�#��]$��,1�F�*��2b�{x�}]��^�_�QD�s���˨$N�*y�|���/:q���ގ~����up��!��6b�w�$�<oq&�Q4�s�vJ;��4d$�l�|K6��vɞ�[�-�m�o��{�S$u���w���w��/�g"�����_�-k�l��Q�6k6
�{�L1�eD�UjL�/xF��4H�3>Ǜ\��m�x���E<I�Ƞ��'��#��8�p�(ʼF�� }��8%c�,jLP�'<B�P��G G��J�"�8+\#�2�5�1�*�9�tI�819���=�d{���A�6��$/S>����i�J��_�yV�(�i5uJ@�9�}\���UȀR/��@[-eF@�M�|��L�H'��Ӑ��->`�Q�Ce9`�!j�F�Ӏ��P�cΘ�@5)L�".���j�,/�(��ed+\@HF~�3�u[�^��q��.�kE�C�XN)���rZ ��m�e�$  �Hf�mQ��!��Đ0�0�\�'��Sr�3����-�T�=Xt�0�c�$((C4Y>�`p$E�-AÙ��,��L�6+���<�K�6�R���QwF���4��=�)��g�;o�2���1R8#��e�����a�u��e}�;����h̛rT^
�|�;��z��ՙ���|���ꃨ�\������[��D���Sӑ����ɜ2�R��k����i0�b�(AR�pWNo�"��]�"�䅽]��:�إ̹���G���6T\��m���/��9�}g���}n��<�b�sb����OAV��\h�#�4?��K�9�@��8g�,��g|�K�LR�8�S���g���������b�=<I:,Ѐ���P��x��k�O��Y��@��q����n p�w̆4��9���gz�����ub��E�C�" ���5�Lkͩ6�1=�G�%ig#3��[v�vg߆�x�����zI�f�{�o��x����x��5^��M�՘%����K<E3��͐u<�&� I��p�T)@p�hbt����0��I�,��0r���/��2�U�Pb�,+L�a�:!1��X��b�]\&��i�dM�4ö��	f�X$_"�;p���.yH q�%��3��6�����r�̍��[ @fFD$h�e�ے������验J�_�c01�x��Đ!KNZ��ΐ�VB�A!i��:e�%-"�ɂ��m���I��hb���U>ϟ��*�ܧF�	���KU
��+rD�" "��3G�&Y�q�)���]|�IB�%^bZ�h}����<�eH�*]�XC,��'�����hͰE��,!��$ef�4��,)�"B%�hɲ�G�$G���)�H"(!B�����F��$D���9Ed"��X�)(�@���Af�7Ն�3�LBL�&-���t��wtԳ=�s�O-~�*U�N�f�گ��K���xv��d&�a�2G��X�sHOY�3k�h�$�f�9�d�6�Z�g�L�j�ֲy�{��<U!��fe���^�E��,ekщjMuf:�]��q d�u��)^H�!.�5:�3N��S&�CԘ�Pc�&�:��m�Knp�d�s�<�O�Ej�<�m,��:,� h�Lƿ�g�s4p���C�i|5��r��'�<9g�!�7Щ֒�~b.Rqj��ІÉCR4y��^��>�u�I��)�١�䌥l���ܾ9�܏����X#9pK��2G�r�T��5^�v
[�iZxj{/�X:X<b��<�Lr�E���e�-V�c�<u:����1E]�I�O� �lBi��r�4	�T�(�HJ4A<&h�����NA�*-ȓÒ�M���x4p�:� J�V[�H�i�Xz�)1�#�`pP�9��l�������'m�RI�T�f|��Ipp3�u�O���&i����m.��$ )b�A\SЂ�m<�dup� �9�Az�f\�t����Im��4̜�J�I=#wF<<C�R��L]����K��}��R��]�\AyB�!cRb��(R�a�E�,���F�\���e�)
M��D�9fN�9�G�Ox-!�\K�M�m-�i��wm��C�{P�6i��c@��g�1TѤ�d�(��s-]�>�u�oLR�o(�M�S��i�bD�&Z��d��FV:H�!�!M&��q�"Y�9��.�D�38Y�b����l�{��-����0渋�hc�(#^��B.���o'}���o��#\�jF�E�7yIOfC���I���ϑ������V���6۸���g�8�q�gLR���q<�X��0�	m�b�Q��S�6l�3C/5�@͖HA���)!��.��֧���lmUt[��۷�L�u^u2�)�wW�A�Y���N8�P�g����pEJ��3�${�8�Xd�Ihp@��X��F�.gX,p�=<�̒bHA�6��g?�5�Y��<;�h�G�5�9`��5Yd/Y�"g�����ZO���"F�1�S�AM�iNd�	=���L��m����z����&��}��L��Yҧ����٩k��Y�,���:�U䈦��4@�*�d�H�]� ��`��p8�>�l�p@q�ü&������h���P*L�a��>�
�f 2��P B���BS �L����8�a�C�2D�Aqȣ�8� ��PZĠLҧK��p�G��0	�	�-���+�����g��ğ"(�: �2�>ZD(�X���1�����T�(�iK��8"C�6�}�o/^��h,�\qh��xR�Y�̙ l�,��-;Ɓr.�1#4K
�L1X���Y@C@�b�;2�(S�L�u�0xJ@�����b�t���"�����G��8�h�����h��i�ɐ��3�!�a�k=WGS��RD�I�I@@\��v�9���D ���8Dh���� �Q�q�\`�9�a��Bc0(Ĩ�� �丯�vŭ�K�#����00Nf���M#�ĳ���e<���-w:���u���qݫ������w%N�g�y�,��V��9l�ӲI����3�C���&�����Z6�!��t��D�����];�;�w2���0��"}wX��Y��9���G�;�Pc�UbΘd�Y.��}
�1�.79d��Kf�d�6�l�i1�&��s�8}.��C�Y��g�)4����^����<{=Ő9v����qv�3�3J�G�H��mY`�E�+�7te�&#m.�t���5Z\�>���]Vu�� 5���%����oWm���{�Urm�gX�Y�ܖ��s?3�ƞ��<5f�"��l@1 �8�6	�̢���(v�(
�!�O���\��i3��2��� �e�s�y���M�6�@�;p<"��P�s�ܢ�O�s�8�b0T)*e�#�4!X��a(���GY�LCA.7�=
*W����q��{��{S�t&�_\B_\�&4��㢜�h8%R���� �"Y"M���$�� ���'��g��.O�u!�0�Cz3ƌ��gR/�Ui�L��Df�(�c�!c)�"�T� �H6���Þ�A��_��ָ6	A �C��9�"�`8 ���E�0��bAt�Y> 0T�T�J�`�=�Eh�,Svg�q��ׯ��m��Am8 ���:\b�[M��L�6�4����8A(�C�A�LH2�:"�X�ő��	'.+���S�@�ZV\��W�@p�aG6�5@̂ ��$<h��ȋiٚ�XFj�i�X��0�5Ǵl��d�j���b6�&3�H�q�XЍ4�5��cl��B��93�3��'6O�	7Xe�ˬG4�*���z�ްj�@�hU'ٯNq٧�	���ΎƓӠ����
s4@fu�9�0 �Kn���82�,���u�����d��G@�U6��g���2����tu�}�18�X�@�+��r,+r�,P�B{V:I�2EQN�5�]�&�Hڬ�1�$�J`=g�������fzWC�=�g�FH��&6�:�����E�8g�m&h`i��)�P�F��}#�X�9�`�Qp$�}\� 4����
�M�m~���e$��ǇX�̓����Z|��$<ǃ���%r��X�8�͈�y�5��1�L�%晧@�"y8���u��g�149�E����4� v`�1���N���|f!�9u�BO�0���!����1>X��K�B���*ט�0-._��͢�)uőJ�^�w�������ƺ}T��7	�m�k9�%�BT�f]봨i�r	b����q�Wx��ShRa	 �+4;��ߋQ�1=��ak��8'8T��	�B �8�%� �LIQc�m!�3@�	�K��7yK�K�qd�&Kh�y��rw����umBL��*\�&�� �+��t�E}����&�!q���|�1�E�aX�X rH�.��ic�!؄��� ;�q �<�1�S8H!`���Ժ��l��ţ�x�j��jK ���N�3���Y:��`(4B��D!pR,��O��@<�	�P �j�@���Mp%�h^3|��gRB��H��#�O�q f� �7� Q ��x�GI� �����<"�1�q"�X,���E,���h41B�(�"
.�$�gT�Kt�h�r"��E@T"�bD0D Xd�� HF�<���,J'�x�9�EQ%�b�1�"�e��HА)��qFx��PH�.'A��C,EP��B���8�t�Ӏr�<�:���
��Ӵ���p��X8��hc�@�g�G�:90���>5�� t؁�(��N�..�(0F���$�I�#"A+��-�8�:ْy̛E���=m�4���rw��d�g���q�n1�u&i����8�Ef�Z�呤y)���B�{i@]'{	͂����=��--���FP��sF0�p�)3ea�g���	�3n(��"%Va$�A����&i���=�V,{."�*%����8Em�g��Pd��c~���	:$�!�HIN�>��\�՛Pb���a85.r���f�>	B�i�Ş|_@���"ː#(iƥM�#��DH �$E�!�R�HH� ��>IE��L���&&Fd�E�����sz�_�ʀR��K�8��㪆^�܄��<��8�@7�i:\"S` $O��<���;�Ц�9@C(?=��n�@��)(����x���:���9�9$.����
�+������)#�RAo����@Đ5i�S�$ Z�!�f�A �P�F�3rN
2E��sH?{0.!�B��.>�),��3�-�ܓcG	�<��d�)�0 ���d3I�(�)Q�it��U��9���4
�i�>av�6b���o��	Xė
F����3�}7d�SX@Ȝ�7s��)j�n�=�E@"ZTI�e��%:Xn� !@����`5��` �%E�R�-҅Ha����q�a �cƨѤG��8�=~A�=� >My�AA(�Q��ψ����G�49�$�8�s�T�]T�Q<�u���U=� h����ˤ$\D̛8iYZ�RVE=g�N+��Lce����Ӂ�X:�axIz
�`zFR	�Пa2�"F�4YE�A��Yv��[vyw�T``r$u!#���aN�����W��e�Xxvm�@xbzZ��Cc�쓂Bh���ЄS��(���O�(RC`�0-�Y��d��Y�a�c�0j��ƍ�ӤKH��rJo�iJ1�:.i�B����`�PZhA��c D�(8	B$�l�`�����1�Cd�a����SLDg�}N��c�6Ǖ@۠$�U�Y3K�K���0H�C  ���H"E�!aO7	��)�C y<����x�.�"�GN�!��؝ί�!�@8�G�b@�Dt�(�08� �9��"�x4O��q�(j��"W<E<�G@b��q�F�8,��± ��hC�B0H�gs$j��H.
����0"��'��@b0F8�#ejC:
m� K�a���цL���Ϫ�B����� .X�ߎ�P��+p麜Ϗ�*�SKJ 8WX$�6�*��	$�H�d�#��i#H��8�ƨR��b`���E
B�>J
`�*�&���%N�:��UZ��9g�.�d)�1�2_�[Ti3�V�j�c�Fсq C��q1 ��3�h�� A��7e��Rǵ�'�T��k3���f�D-���|�BDOרپp�;�/뉽T�Ro�D�3 ��e^6�|�x�ŀ��='z��4���3\�  �O�DR�`�p����B%_N��E̜$1
�1����Kl��K��/}�>�K��B��7.t7M�7�!UPd�s]'�!H�F�QC�àr&J
���h�����4�9�b����B��|a�����NT趺o"�*���`:bO���$��PU�'X���0���Lq!�Ã �	!|.We�h�'C�Pd(0y_��$��+~z��%Ӓ�j[��Q"d#Q�
�#6T�	��㧨Q�X�ws��{#�����sB�si1�E\��;�>� G�n;a˞"�$��x�iS��9g�F<�� (*��0�mP�PQ "��D��%`�6�)��Ml�w�����"�!.�!:8�D( ��3N�B0���E�P
,  �H�k�c��A���jO�,�ܐ4=f2��c�qŊMLO�j���%�!T������$��XL�B��H>�g!HzB�p0i<1�.5�7��V��6�*�����$�㐠D��^�b<WyK	 �!�1�����.�1$m������J��p�$��xK�$ �w(�0K�R���'d�9�\�~)�AI��P�T��[�|�"ĸ��<��AF�pƸ���d����p��d����c����P�>J�%e�E_�Ә9`cFALE\��v���o�v�h�=�K�"�O�1bIZ���B����%�@(Iαh�L�ڄ���D�g���S~$l���� h60\s���x�7�k�x����q!t�d�Ё�v ��(���yZ�ትGX����a��YTΗ������`^�H��|� ��i�7��I�	,&8�A��]%�"�}-���B`�d�7E~��q�i�؆r�Vƹ�&�D�$M@sB�P4$1�]�D�##��ٓM�bڒEh`�0���P��Y;����ER��B\�-�+ƣ��'��YODJlѾ�o�Y7'�=�]'8�	���	>��VVO�"�h��&�w���lzhB\Q��&J��s�Y�Q� �"���e#��ΆvS�Ń�5�`���) #b<M
(B   �O���A�H<F �0 �E�P@�a�@��p0#� �  	�Y�R$F������:d�{�k-\3T������=��иP|%h84�xH��x�����{&:�Gڱ��-�n���rX
C�� �x��t� I
��@�� (}A�� @�8
�X�\��!.�Eb(�I����Y^��u
4�g�c��z�9�-�J_vdYZr"��r�z�JEh�*��Y�'T`$��K��e�s�6 4P�����<�G1|r0�蜁�D� -S�h��!�$�����qNd�h��/��8��7Ma��+5L�z@ET�G��9�YbK*L0���˕�2bΜk,Kr-u�v�u�!��AL�ԮŜ	}b��p��P��=�H\BČ�)aOc�a  P,s��dhqb�'�D���F2�K��S5�N�4m%l���"�uA|��	�kܡ�N�9 Yiv�ؤH��R;�!d�1� J���1 V�p$� �^D���{����Y���E}��e
CdA7I���ךeD�[�Q����l@��	�vL;���<�EOl�}�t_�aG��!	��$��  6�Q�
�'"7D��jD�"�����6
��(����E��  G
�C�b2-�"�C��b�,��;���#�Dd0�X��C��!%F0!!B1,�B�(��!�1$��U�o�pN	G� ��P �x�P	T� F8�$N�s*�_�]t��
d�Q���g�h�#����F�C�QO�ߡ7��lW��R|Ho�/��q� ��4ƓS�I�@��p�����xPZ��e^$I��@�m��(���d�
	���)ScI�&������!PbD�6"��0]f!,B�@)��e�@�S�$�B4�$	: ��'L��Ӏᡐ0�����-c�I�&&]�����g�`���$5
3�<��)ғ$-r2��{Zs��Ӥ�t���ϓ�行x�L2$K�6��T"�I�@���!%\b .��8��I�ȑ�a$la	�2�6?���2f�b	La�X�B(!�kM�Z����v��KʶHH�����8�Sc�.J�!S�i`)Re�!m��t���RX,U��4�Dq��Qg�3��ba�4O�� 9�XU
$��e��HcHƐ*0����OK�>$I�*��-^�@St$K�,�$C�W⛼�ԥ�^��2,�p0����Q��d&dxX�s���kxaon�-543��1�a)j�}�JYk�5M�2�N�խ�>���v�'��S��Co������\��)#�[/���ߡ��G�@/�������l���:#�.Z���I�[?��`��bNJ?'�O�N_���Ҧ��\�e�cо�\�+���j��EL���]���M��ꌲO���(ӡLG��6i�6?f�3��Ư�=~���I�J����8)M�"#չ���7�gH%MJ�P��POu���)�/y�I�~/EOsT�3w��� 7�G��l�I&5��N��^��'�y[��9���v�'�6���_ޝ�ϥ�k��tYk���g�h�rA��п��6�q�	[0,�rM`��"y"%�(�U^"�Fá$Is�9q��l������"a���Ӧ��@�c8�GHŧ��,
I�)(g��pĈ>u�#�È.�4K�3��#���[�`�%&��+O���	-Ӱ��ȵ�~�r�� �4�6�;����m@T��00g��U�丧Cs�"��0چ8�V�I���I>AFHi�!1ْ>113���PrI 4(�,WČ�q�+r�P� �H,T�]�'�3�D&y�Ώ��̣�D π�f~J�&"N�,;�	S��綄p�褕<"
X�#�P�l`ACD�Ac,���҆ m%��O�[ �J@E	TK�:T#窸`Tph��<|"|���0h��
���)��O(��j� �"d1���a�4�L���
�i�O�Y�����k��[Y��c8H��7��F<e"���U颙z��K�˧x��ڬo�F/�iR�SM��<?С�i�~��z��CՆ9�~�(U�hj�=%�*�R�;c�|�qn��� 
�2��]�l�*} MX-W��}��S���tQ���� g��voP�&�\d+�4�BiSd�_S�pJ?u�9g�c���?��:=�3D��21R��5
�����~M����Pg��9�UR�H�$]2I;�a�ɧ��55Ɲ���ŵ�)�P��r����4��;W���8e*�N:��53�r�O4&�j��~��<m}��4ݫ�zhŧ���uﯱ+J>�����ONu��Rώ�� �s�t�7�9����d��1Λt�CŒa
��<�+�h� B�D�M^ N�q$��a1�	(�� �x �s��9	�r?E�Ð���@�L���$
B $%d���<�W�1�8�L�!M��Ay�1�(BH�H��F�(�.@y y�mɐLd��F9D�g�crR��H @,(�ޚdն9�SI�IH֗(��B�Q͸1d�DƠ|���!+T�H(��m���RDg�$o�}�̡B��,��B���ү�ZO�+s�۹�oŠ�I��H`P��z�\N~fƒ�䍝�S��#�(���LƩP�b� ���8H�(��m,� i4�!�����3C� ��"�� �ւ��QB�5I�����vr e2���by���3U���4���: �����i��b�H,���1jd������[Ʈ����/bO��4�7�j�$���3x���Ǳ�=��ٍ����9�����+�P��Ӡ�Z*Ѥ����������͝�43U�H8�~�?�~.����^����T������pE	CM� .��\������E��BӺ)���H���+ziRiP�8f����/���G�S�A/�tѠ��]�W7F׮M����9� '�.I�*CT�JU���g�sz��B�=!.� t�
/���8-���4�ǯM
B�,��79O�
i:I�z��o%?$K�,ԴI8J�W�j���I���i��t5K��eAu0!�M^�I?��?��v�Ԧ�hd��!Ͱ����o�������PpC�=3���o��O]���j���3��ߡ�s��d�s�h�'NC:���f�C�_�g�s�#��b@"<��'��tH� O���eZ� �)�״�� IcA 9٧*��a ��Lg�P�KQ���@C�S�I��R& .�.M�d�AѤ��A�� ���v���/(�R��C�}rX��_��@Z/9�Ib"�A�Ph#�M3�kΓ$��!1*D2 �a�%-�)b��(K�W�Nw.��iZ;7�}E_ݗ&eW#����p%	�1�!Iu$*j
���c��O��w���s)]�9�$�Ƙ�ָ����Ȍ�p���CC�ٹN��_�ɭ�F�iI�"I�BUi�;Aܔ'���I^P@��ФHE�R$��A�4R�VUE'/�
��#d�u����Ik"H!A.q!R��$CW4�e�hЁ R�|��1AI���(Q8�Ͽ���4�;ӛD��<t�!�a�v���߽o�m��>�>e�^,F�1�{�����ݣznrN�O{?�$�����/�䤃�������@���$M��u�%�Iɵ��w/If�+�i_�pA����ǒ��(�	������/��ŻB�Vy�]UL:2z���~~AZz�@@R�+��b�/���%�tˀ ���-i#�ď#�Y��Ύf�d hJ��?%M�M  ���3
tz)�A��|�������s|�?��:�+���u�U��	Nԩd�YɆ����u׽��ɮ����p���=�3�׺z�t��N1��^���Z�F����馄�*�0_������J�};�E;���w�+���[����t��JFP�M/?���M9�&�N�9@�1�%ߒ�Iӂ�!C"PP$@�&'` C��B	0x ��H,��E�L�x��2�GH�O�I,!��#��AA0ɈU�A(s�cT���衐��i���X`���	i��$��  �3�h$�@c� �&>�F`PX�X4��i�J�Y���h0�U
eA��	|$.Cα�P��B��h�+������b�ot���p��АHR�4[��!��FJऋ1P^���(�׸���J!#4Z�Ţ@
� 1J�E��kAH�G��N��G1������$�%C[	. �$Y�[�V_z�fb�U���ѠL�$��)4]��4D�� Q 	�q�#��ðp�ł��30�f�9��]]Q�
�E�1��+rC���H� F�X1
G#��AC� Ab�>&��B\B�.�u��+��'�KJ���H�#B��P:@�
�ł$D��4 ��@���B� ���a�P(8�P� �� 0b��`X�PjDH "���Zd4���o#��] �\�Ax<Bx&�r�##`�8�m�����} ?�����Y@Hݠ�Y�����(k������`P ���*��4=� D�y�}��P0�y�$m\ �)�b�9�3{P\>P�S�c�*ErJ�],.F�=\4�3��R8���(8]��8 �#,5(>-{B*N��qH D�a�G�>�F�1����3�,�,�et+�@=��
��Ĳ��G�����]$##�(�R],e�!�9�1���;$ikP\�o�yr��q�dLF�qBb�tH�d��6'�L*0II�tvDD�o�&x�Ѵɐ�+8(�9
��@s����!@P�Ң��G��"���I0����0�7����"�.]��7> �M��>�-B�� �� ! |<&x�	� �a��d�����a�8�Ƣ$�_HM&��1X�|���=��>MzX&���P|��K��h,�����Ȼd�pBz�d 8�x�>��ږ� �!��M���t	 �G�w(RP(ZX}h�d��{�$@�
�ci�0P �E^%GFI�DA'�$�� �bX�C2T �&CF,q2�A�&���%��C���xG���/��)H�P	����	�.&�G�����qRh�2}E��pI���B�J�7�M�$i6j��f�uF�A� ���b0dA�
��#���f
����GA��@y�&�dpY����q�XšK��pdha��D� 1<�#I���8ӥ�f��1|�I����
�QT���`I�a�/� E�B09(% ���VH!p��&�D�/ҥ�!GO,s��2HF�7@
�d	N [I��HH"�'x�0E�fF�?�`Yf�)��AfaX�y��<��x8THHF_塉��	p 4�8�>c:��X(	%F�H�ASpo�Q$E�2"�!��8Y
�OL8)ށ��2ȉ�Ӈa�FL�fj�*y��n�}$�0���<�"�d�_ ��?��#�E��`X�x�(Dh E� �L� @����(���)���9`��\�)�G���(4���Y�%���%@��ER �h'�a�6!9,  .�C�d�4$N���I!D�� gXʄ�뗁�$�A!�H��@I�#�1$�� fɢ�1��!Bc~�Pr�p��ಆ�1`pd�`��k�cp(���c���(�����ɰ@`���r=�~�����&I>?K�,.5��ȢP`0��>�8 !�����i����BA��A4W	y�4=$DA�bql����X4U6H��R���@���J�$��)RX���$��!9BNh�!H,	�P��C�)�F`�1KJ�&y2 .C�����m�� 8�i��/���c�E�$��P�:1�0�A��S�<���T))fh���L3G|	ٕ,%B$q�4�M2r*q�� �!�����ed�s&h����K�%A8[\"���%}*�R!����L���8PZ�Eެ��O�S�����c��p�\c�&�� ��C�"�ƈ1&�R�P�' N�.%N��Y���Q��0M�b$����S���Q!z�%%!�*�C�E�r|J@��s�1P��(2LP�W�! �F��	��	�49W�'tϯ��TA�0(�18Wul��O�{~F�!�(���X&�C\p"��@��	E�P��5wL�	�y�d�:FJ�� I�tq� ��.��Mj��� ��̙Ѧh�5c��wc��I3�3�:%8=>$�9��K�p�'χ���0�IH�;$��A4��u���A��������J��P">0��D,��/)s�@D���"���/��T1�(r����L�*��
g|0?JH�'h�Hq�<�!p����I�Y!�[d�C �EI�&C�q�I0����x���`�C �a ��ǌ�!�#� 	�3�����TC��°�X<#>,C,�!+���S���0}�$Ha�@��P4ӌ�x��hC���@�";��($ 8jp4 `|���)�A�xl! z�����1aL�M�����ҥI�<=$�FP����L��Ӥ`���Q�C(pL����uC<bH������@�7�~�4!	<|!$	`h.�3B� 4@c�� ���cD��%��D��c0�i�����C�9&��!��+}|�Xf8C��P������%���С��c`�a�R���!��8 �8X�0�B@� q,�b9[�� Sk)�/�s�σ󐃀yA� � Ĝ�*
�(�B �\�'��2N $�R�Y^��ad���  �J�@aI� X I�]�@\�XJ8�E3#"��Y6�@ ��c!P��-,�#F��K�_$� ��4k�(�x(���8a�����u	��|pSָK�29@9� X�&�:Ѡ$��%� 	�]n�M�|0?��'N�-�JDH�+!�AF�<� �&�P\ B�]	pF��q:h @�!�H,�O�BC�����p��.����G�>�C�6��,�84w��X�i��È2@q���  �!���@Fp�$� G�p!l`q�8:��P�8�	Ar@�"E����AZxtT�&�#(UF�+�p|#��@�q�!D�H�BbY�O�s�S$!m��˖L  ����C����9D"R�ad�N���%��$�R��Dm�)JC<4H��#�!L� ��h8��.����������4 �"pY��*�:�6��T�7�oP)V�� ]4��$�6Z����ň	*xH����r
 h�I�$ 0��@(���i��1c���:GO�{� ƌ��  ܦK�4�� �P��T�D���	u8��4(�� ���I���OI�L0�2	&�X��^?�"4C�""I�����E��B��q��=~�����1qq�bH���9!� ���DH ����h�A����B)#��Kb��(�d�1Jd3vlE���)Iy���q{B'bN`28��$C�e���x,=4�Fa�q�4�-�A�&C�_��M�6.]\H�<O�T��%E�@R#CJR9��ɢ)�P�t H���9�� @��!d�#C�o�d�
@�p�m�$
0rh2|J@�9�(�F���1����!O��+|B�>I�$i@Ab<�[�iR��u$@���� M�K�xG�<DW��8'����).�T��"Y\�"9l�sA�^�)$� I���p��`���0B3�6!9+�qx��LȤt�e����p��&� ��)� a4(�o2N�<}����i���"��(R��$% �&�f��x"�(q��6�Dp|J܂S�޹�5|��%$�y�f�@H�҅A��ϳd�M8.��0P
 i\&�`�)�"� �$y �R��,o��NA����b�Z��(��PݴE:�,����I�B��1'�6��JS8��H�$�0�99�$BQ��΀�yQ'I��%�&��x�,b8ıp\�*5J�M���"���+����>��N���B`t<���R���p�t��=2��|���K� @pΈi�1F�	d0���~EuE���%�|�1�T`
 9D��S��25�U��!0jǌ��&>�E i"�-���c�É�h2`�O�Ӥ�&��"�4�<ED2N�!): `'� @(�Eq�CCX '��A��0F���9]�4�A�A� ��d蓦E�����c�]
P:D�P�IQ���1A�4=24�&��)ڤic1��M�&�#�,@Pd8�`�@� ��A"04�>H�&9��cҧ)�:)T�fC(W�J��Td���$�&E��E�%�=�y��2c(��`K��K	���&	2�\�@���P0���A�g�G��|y��C�D+Z+VEQ'�
��(4R�H�>�8�x�}:������XZ4h����$�K"�R�/q�Բ�m@iR#KP �y��= 2X,��sJ�%Ɉ�,ct :���O�c,9.�B�p�`�` �B�$�8�g�U�P5�՛��vsΜ�	)L�(A���T�`qDB`( �9��"���1`�06IHRnI��`� ��
!�aqф CC��D�rDcŕ�	��&0���r�K���0.BK h(@CS�%�ŀ@�Aj2 ��p�C���� �]ϳ���ǂ>8��	J�Qr���8�3�E5*���ؘn��>�����@<�
ç��� �&�h��X,�E�1ΘA�(ME����3G;�>= �&���[.�z�h�0T���G����E0��!9��ԙ���A!�$`#FF�4=4(
��aP�܀1��$OI�>H�'IK�F�@
�AQG�B��@,�ǒ��E�>� �C>�����N�$m.�L	PbE��X&(�4T&0�}�>!E(�I�����4�))����\�} J���Bp�1D0= bp�\"R����OI
#�O����S�� �$Q�(����0�	� :[6(�di��ԙ��Ёa�xtYi0����CK(�"H��� �"���Ƣ�P��mU�㵬aF&p�� �!�����P,��.�"�6
��!�&�&�!^��"u�������%��0`�"Ab��OC�H�1����gY�g�A�P�ba�0��?�18H�P� B� �,���B�F!.I1(����q|V��ϩ��o�M�0�ÀJ���Ǹ�������P��E�Q���c(�E�8

#��(#�f�}(�����0��d A��\�!)J�3$F�{XE.[H�H\���h�� ��>AC�E���!A�Pʌ�Kj�a�`Q$p����0d@ 	��	(\
���1�D��4�� lB (�c\P��e����((m4w@(�� ʔ.C9H�8-"��g-'���P�P��rQY9�5b�;�l#���0��NIB�8%-�$�H@��B�%��"�߉���ĕ:}(G .�S<ΰ���%NÈ
>,�PjH�h8���CL���B��*�e�	Ч�8�!�hn��}�M�
.�@N��E�X �4��"��"PXuu;�����9 g�Lh�������:)4���I|bp(
�2����c�(3�d���%!>Z ���(b�0��(� �Ą�W�	0L��!���b $Ha)��4��!�~�(\Jh\���   (�d���Q, ��T��������qT����<�o�:T��>Z���R�Y~��P��" d|�� �.eQb��>�g½~_��C4q.��ch����00:h�����!��8m$E����ahb�\��,��#)����ę����(�Hd�}	�(,m�B�$
@c�0���� �A�Iz�8"A�4�1���Ĺ �\,�6@	i�)qN�
@���%N�M�9�o!����-�͐W��OE�� 8\����# bQ(q��Iʊd�}��<Y:,�#Y4��T(1	��M8����yBZ8�0�I� 8H@@�!)Fp4Nģ�K�|
��*�ހ�&ICL^C�1(B�`$��(.�<o��0�E�Ǡ��(�$Ddxd��Mᑑ>OrI�!m�p�S�%�"�[p�,p�E���P"4
��A�`� 4qI|< ������v�+:J		f��Ba(#��~�0>CeD:!X�
�qi钣�&@0�e����A�8��b8H,��1�A��H`ȣѸp�&~�,>��'$	G�(�Q��b0C�9�a2z`���"�\��,��g��������R���{�P����stc NF��cp0B8����g���3K�<]	�!�҃�@�ȳM�!����<���Ň�T�)pB�:�8�$��9b��P�q���&9t��0, $@q����%N�M4HFHFI��`����1��!-1��0t04���ą0BaA� I�u��RACq� ��ħ��v�3�J�!�i�p�"M�g�y|�AAl�6�;C������͓����3T(b��C
�t��@���N��u��� mI�OW��qq�L�ː���G�8�w�@;�H`���"�C�>�R�D�F 
AJ�25��` Z<,���F�ɩT���O\���8Ǵa���DP� �4���Qc�P�c��pNHF�:��CB�B���1X����$�\Z"d,��(yv����#i@H�`~/�>	|4ubH8`0�;�lϷ����$L�	!�c�:�.�1ʌ1h,�39���9 r�UYbu[��>��A��(�ahB8M�?�E��PRh�T  �!=,���%��9����������wZKj�����Y~)	G�᷊�`%!g��Z,J�Bis���>��oD�=|��D8h��&���P�D 8I!�@�6)H\B4�
%�1DHH��%a(F�1$i�P��!���"� �!H�2\$-X�8c`�: ���%E��>�� �@4i(%v �A4��#$�%�`��L�%E��th��"�4)#�0�pbp�:ڂ8�SXDRã�P" �҄p���e�FX\r�2M!�KZ� ��s��(�4J��pjH2�1ħ���>.}z8��Cq���D#��(�`8�G� 0Jl����Ҡ�K�>
J�
r��KM_"!>>cTpp�3��$G����0PJ�>E:8h�h ��b�#,My9����=����������\�ä&���8����9 f�%����oy��r(r�1����3F$�!�@F8��3��e���'	��@��^�������CP2����`D�8�F~�ˈKX��ta��qY�� �v��~�@?	��Y~>�������E��R���H߇�<�9@LC��4$!Ž~�{��^�g��A4�H��6���q8>r��&�!!Y,ň ����h��0b�"9D�SF1�q��*�m8.@ �8�!-4�S�X ���h�9%�Bh������i�G������XRD .,� C�8!>](D2D�hQE�8(�Hڄ$��Dc��#\n�EAiB�0�8:q@��y��"ܑq��0z�8$C�N�����Բ�RB�S2h�)qF�H�(�!H�O�tМ#T����Gr����$�!!��1!.�!5� �X 	�h\(I\RP�q���mNh@9�3 H��G��U���〈:��EsBMJ�����GPG���7$Ğ����ܢ��Yb�d�	�k<F - ����	�h�hRH(MZ7ice(H !���sEKN�c���1��eU��%�l� ��x�J�\���������O��&�C� ���*z�$�hm� �����t�&mNZ�������?$�K	��~pA�9mz	P\j,w��A|L6��6�� �>��/O�H�w�f� $���I������� ��H�G P|U߇��A�hr| >%$��QH�H�1��ɡ��.���BqQP��x��A2\ ��#,y$iB��0��r�Iށ�kq��bYb��cɱEF�u�ia@b$P���9¥���eޅ�LE�w@2�!�  ��r|�%A�$(i>���]% �E�|�k�:�%]��2��A!!�0��d�1ἧ�iF,�{��D��C��ԡ�K�>
@C�GR��@�#A���2<D����ǾXb��Y�f���I�>M)�p�@���T[�h^&�R�0A@Mų-�:�1y_��f�$���d�4a��L�Ñ,�{���d���B����C��Ppr�X�Xj 
X>����a�O�!cRp�8�Ar�aÁ�C����Ɇ�CE�I,�Ap�_�@CC���g�p(����	0�O
@B������M1��@�ÇAQ�ȸ�0@�a�6E�O̳�>t�g����!9�g�%�$��ƀ��Ǹ����            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://vo0yqr1aqkhn"
path="res://.godot/imported/temp image.jpg-0bacba6fe06845af68816dc1a9478098.ctex"
metadata={
"vram_texture": false
}
           GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /��,� j�Fj���'|$"���X��qj��mC�$� �O� �\E�$)} `��;�� m9�����������r� \.��-�q
%;���{~��s�(hۆIß�.��� �H-(]m۔�����0+�|�1�3���Aݶ���Ke���U����0��"�N!���F��H��a��p��h�?�����#I�$I�="�������>ti�ʐc�ڲ'�{��V����O���ҹK�ܨ��:�	�m��ȶm����"3;8#9f�ҸFi��8�Q�"Sg�9�:�(釯�Ғ:�pٶ��n�>�����'��̌5�Zd	���L����,?�m��mۖ����K�N���f�5�@���Ysѻ�G�@T"Y �������A2�? ���7M��m�J���p�m#I�Ĭm�ݽ7Spd�V��C�����-t���Q��	�D �HW;��z �'���s����b��}�c�J�-hA9hC$l1�?���OO����ߞ���ŧ8�  �(�t��	�����:k�z ����s���������MV5�Q@14"g��l����p���#�?��P����ٞ|?l��h ��  ,9��lmD�)!9��ܞֱ�s8�,�&`��������;�G/�v唱�~����5 �p��7�3�xά��+�t��\�2�"hSdІ�y����W�.w��.�rMO� �N <��3�9����ӵ�vݮ�Ё4*"Dȱ�ͺw����\�*j u�����(�qӸ|qױ��  R�DB�	 ��eԆJW�  Ĩc��w~z7n��%t!_'  v<۞	��/��4�z�� Bdd�W�"�T�D4B ��i�R���  4��©'ǝ뤁 [�lur��x��d{��F��S�1�" 2��P�"� �`d1T&+;����% P���x�F��F]��θ��Xv<GKN���_�o`E�\�b�t�,� �
 "�,��+���P�$ �����bn#>�f��z��Ҏ灿vi-� IJ�� �I��Lj�6I  F���?��θ�(ͺ��4W�t�v=�6 H�T&}��ZjM��  �������g� ���.b��\F �2i��f���.&c� :�k��m`���j��G��;�TE ���ж!�b��*N�XO�G
�{��c�v�!� �1V�
�6P�Q� �(�}���s�w������p>�"�c��@w�� p��1�刯��Wz��I �1hY���PI �r��}C����x���,@�,�"	h�$:�E@�ܝ�ys�3� $�WL@GtJ �JXsUR��"��B�E @��"A �K�%��  ��� �H�FDB �����0�J  P@*� �62 @U�  �h�  d����$ ��� ��'�GCu���n��ִ�)3�������w��
		�/�}�>_u:9)��3�����+i�t���N�o�k�Mj]8  ���&ɩN�� @�r5�Yf�%�-��S44�x�I ��m4����ih���Ӛ�9�,s�.3-ݪ,�zZj�N�o&
<��2,s�r���3�:�  Pɦ�'TK;�|�j<}�T��vע5�P��=���E���HM|�i1���>{��YI5)�|���l���d""�F$�>�ӝ�7g/=��*�LI����õ�n�L��I��pj�VI p�`;[���$���gj��\���sp�`�|���$-� G6P�.\�p�.�nMpYKФE8�<9X5���� `���'�!d�0��e���iJ.�㮚�s��3��� LF"K \lY,.#G�@��9@5�,��\.$a�aW�:ȯ|���&`p� �\��-�j�2Xr�J9Yt`���fk#r��}��&�.K�lg��&.[Er��&`a�H.���	���`6�M�:ӓqHR�E@]�,�<�N���v))���{cD� �G�H�@��!kYs4�q�%	i�>��/Ph³>�����L�!	G���(_�<�ҹ���b�֯���|I��+u����1Bf-�y�w�c��O	��呵�1�ј.��Tl��G�ߍfC�� @�E<�1{cD�O��Ox�����ƾz*��]c����#Һ�3&�iq �D]�h?�)�r���  D@�ۚw��SGx5���AK���nOp�7���;igI��v8�x$P�j�ǫ��z (<�^j� �ݙ��Z	
%���7)�;��;�p��|� `��g�G������ޓiLcn̫��;�( @�z�l^S����F#��'@P�)i׵L`E�@����7lolϺ��'E��E�8J}�Q`]�H; @��%"v�l�*r�����?�SaHCD"�J&�1c�
"	�:Cd%ʉ �,�����b�#�숞7!� 5�xD�
�é�D�ː:�����m��W%*P���M��?��M��p��@�7�z����=uc�$�*?����ɻϦٚ%�Ru�������i���ɲ�n�Q��|/�?sfӀ��WUw����Og���Ɓ�\G���{]�hW���I��:�u��qT�=X=��/���̙"�e�2]�u\\4*�W�ҧM���_~���BrR������]}o_��9����R��U��O]�`����&\�l]Z�1*�m��:��&���^���|��U��߃d�6{���|gπ�,�2�?�K�շ��O;��[=x�H@�u����Up�?P��a���%7Īb�m���-��o�f���'���w�O�BÌs���jg��{��g�Cn�Z\9{s�Y"d��ֹh�p�S�1��]��&�;{mqE��)^�P�Y��{����ے��a����7��_��?*8�,��s��=��N��&�u����[r�廎^8��uy�rpйp��v7|X�|T����=������k�F�J����?����E����_��m'/����JP[���|�[�Q?�0�pp0x�;��[�m�iёȦ��Oz�S��'B���)��{�>�������������i���_��GO��ٔ�����$�F��ξ5���*8x��>+: �+N����bZ������^��wm=�l��=��ջ�o��d�ew=n�����e DB=�=�Ȕ]p������ `b�y�{�u��ː��ۜj�l�I�O�^��LmEG�Yކ��}��cO�-�Ϻ��Ι ��)�fo0&� ��W;S@�5���w�O�������H  p��]��q)@��'��D&�j�=��C�sr�L���$��k}����I  �	�-~���w�P��-Urr�8o���c �O���ߺܯ��_��0����Q����~������������_�����ޡ�P�ֿ������@��k�{�ߛ�2 �ٖ��*���=��#�]��)���Ϻ�t?@+8h��\P[k��z��=~f���Gm=����g�~\���RK�y*<��#��'��)g|�u5�-@Vmt��Tn����EF,W�ˏ� kZ>��$Ƅ��6k5ν����� r�>��5�[�[z�C�����&��r�� �j��r�g ��R���#�X�v�32k��yN5  �۵Χ����yjˑ�y]v`m抏;}  �rS+�ݝS���-K;g�Lp �!WTw���H�Mz	��eXL9�l  �TWn��cJL`4�R �'�]�Z�Rnd cn�  Qn�n�.*��-&�f��%w�i�|y�w�}�3̲���  @c(���� @�ƣ9��Ms�������|fק���¯,�nTr �*�r[\7��9�P�Y�2t��ܚ������n��7n�GĊ�:���\\�n�r[�M%8d����7��3k�����_��~�S�Ϣ.�^�a��	G������⑵�[���yw�C�f6_�ͱ�}���r�z�������?�-k����_���˿�\M�2���a�uW�h���?�������vYC�W_#=P��UN֛���X����"˻�������?ߗ�,��G
������������g��N.���+����_�y5�~�}�3n��vm��v^�z 6���zs0J.֗�S�8`�_�����}����#� �o�?�|��?��?���������W�8�+��׉gj��u/��n��壻z`zO|����ƕ޻��f6\`���EKJ�U»yK<h%�������������֏?��	辷�W��?��������_7?�t�Ω��S���E=���Ͽ�����?�O>q���=n�n��y����p8�y﮷��m}����m5�,�����w��VG�Y���j�:�1x�Kq�����('�U�b܃���uk������t�{����[����0k��>{�� l-��>�M �r���<����Ts�8�.��JǬ.W�w_��a��-i���Jq��s��R���'�m��q���p`[�]�u��M,I�t��7���c�W�p1z�D_t�32Mk�8z��:�.�Zp�\�:���؟���w�م�-N��o�դ��3.P�:G���P]�D��J�r5���Z%2+�}�w�~u`�`1�ӜL �n��U�}�����2k�n1o����JV�ۢ�F�Ο�bL�Y��sUG�����M��>_�R�x]\������x&J�|�Ï�n!~�*e-
�V��۵hd��b�|1�u+R���īpV�?Y&�`q���ف_LF$����?n��pr3'����G��"LD���&�DDZ�_J�H���g��a��}v؝�V<sŸr+��u�xf�bU2�$��A+��C �\�'7r#7r�\�\��O��+�bZ=~��z=.���0�)mq��$	I�uI�1�4�+�r�uuj
*P�@A�KB ������b!j�O�aW�,�s�lYٲr�s�}�|�%%�h6b]\)Yb��Ȓ�����W�M�bcp-����D��( @ ֜�>���S�X�򔓱E��ȣư�3�X��rf�a�V�`��b�bӸT@0R�P@�@(2@�La���:��=�i�]��v���!��xn����� \0.���!�$I-��fg�bq,�����w�@��<���9�||���,*�Č̓����y�x(r�օ��X�ʁJa�.��X-�4)itӤI�F�cq�����/�7)�*`-j2  �B�S()�:�B�P]��%�$��c�.5�������*��La��e;��f��L�����fb�Yx �Ű�Q�Y����z5�5T��j+� �Ȭx�D%˃��Yr3�2�a��}�;m�
�1��3�<��0]u���Oc�{�W2���9�:5s+�ѱ��Õ.. h�?mQX�(rY�-G˱�'��W�>�����	d�ΑM�Dq K�#^`�b�
�xE#�-@��T&)?*�u��j5e�+6�������D�" �hl���Wł�ø��m, �*�����`,W� �Sl%�"XYi�$� `t�e��3g_^�x���1u�L�t8 �p�C�*��*�K�v�X�Ԃ���u�hg���"�
7_ ���V6^���Ã�ӥ����fr��X �}��X��-���<�lYg�:����l5h�
�բLa��l�]8���j��y�$2���Ȓ&K"#:�u��᯿�Ѹ�M���O�=�(� 2�N� x<�E���4��^�ҕ�.]i��՜�%F�X�����7�ڟ��LuQQ���&JH��(1C���� �t���I��~��lod�������o����  �x`�x�0c1<1,b��S�s������f=}��������PTZ���Њ
EE+p/���y��Ԧ���x��^��ԟ���������z�@������ܔ��řk�ց��/:��j�&6�vF��S���G&��=����~��}��&6bC+��h��F[bMlhK����F� nJ�7�2s-}��Kɻܞغ��x�=7�=���x�=���~n�}n�M���M������@Vǁ��(茧5�!2 ��/���w������y�y'�iމ��w��;���? ��g��N��|(��Cg��쯧��q�\�W�^^zu�Rz���~H_�/�W���/K?�^�/�����+��JE���1%�իy-�2�"�āX�hE[bMlh%6���m���m��:N���g�o�|�c��ܝ<�^��o���gE����M�&{���=�����p��>7�p{n�}n?nr{����~Չ�~���Օ)_y�<��ɣ���u<�<1ܝ��>���eo����a��O($"( ��;3e�m�u�^��Ł�d��т�Qj�՞�l@)R@� Y�,��Ws�Q	.@T8�	��3���Y@�|lA�����m��3e6i�@�Bu����#��b-H-(�p��H]3!Ji1FIK���o۶l{DC�
%��űp��E�X���i8��(I�r���!E��֦M�<���ҹ��ʢ�(oEc6Pw��7O��pr�m�Uͻf1�@�CDHg6���)��k˺���I��q��A�ѤEs无p�D��t̴�80P��jմ�F(_�)	(a\�R�X�|6�r���T��fZ�i5|	��D�(��q�����f��f�rp@�
d)RU�z�VS(����[z��B%�ș�q@5�|�����CI�f
���d��b12���t#M�d��#Q*k\��J�̏'����Q~x��t  �"��q���q.̸x�hR����tҖ(�����]��V  ��R���4Q��dOH���ř�ŕ3�9s�e�f��� �q������D$�BG ..x\\\���p~�ue~���  �F8a�3 @,v�F�  $l1� ,���	  ���R$ ��|Z!����_8����P*I4Qy �a��u��q��(�ICM�J �O���� !�be��4Q4���xL��뼗׵��� �����+I4Pn$'5J���`1�>���O���1�A��-��M��Ɖd�<�  0[V������i<�&@��Z� ���/ ���ыŧ���ەy��b JQj���ٜʹd  p�߻��}��(�2�~8�3ku�$�b���M��S�: �~�Zp�п�u�so�=�  $Q*����D4�hd�й�" ���R<���  ����K߶���& $1cmԚȩ�;�( ������� `z��5���:n�
���A�*]$�$���$��%�  p�n��J4�m�� Lo�\j7��҅SO0�2b "c��ND���F�� 	#$�9ϸX ��WoKԫ�U�Y����@��'��:��<^`e �It�)}�EB(�f�S�7�\#5��  ����V�}.�E޿�=����� �������Q-KH  B$�#&"�"	B�)  Tt_7����s�12l'��)���� ��u���l�^gЁ*bhW6�������x��E ����Ǔ�v u`��g��{����u�Q@�$� 81�]���*��5&g������6�A� ��θAiֽ���~���d�т\� a��.ﻗw�6l�V���߳���N `��3n`�l>���y����r_htߩ��5�PDYd��#��a���ˮ��פy���B���M{Vu?  og���θ�Yw _|5�}�/G|C�n�~�5�J��-�"�8a�)�2�����ca�ŤqgO MO�i�ڿ>��                [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://2egrpbichfw0"
path="res://.godot/imported/index.apple-touch-icon.png-8085a11cc297d91deb55511843765958.ctex"
metadata={
"vram_texture": false
}
               GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://xey4hsa40spm"
path="res://.godot/imported/index.icon.png-5665fad188e88d1e882500a4376bfe02.ctex"
metadata={
"vram_texture": false
}
           GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|�           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://vowvqonqf10h"
path="res://.godot/imported/index.png-5122033cac747157decad52589e2295c.ctex"
metadata={
"vram_texture": false
}
                extends Node2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	globals.win = true
[remap]

path="res://.godot/exported/133200997/export-9f330184d302f963210401f366fac9a7-camera.scn"
             [remap]

path="res://.godot/exported/133200997/export-64ab26dabdd60ce38fc2265837fd6dd0-cat.scn"
[remap]

path="res://.godot/exported/133200997/export-e3bb96a559a93b8955a8bf42513505e8-portal.scn"
             [remap]

path="res://.godot/exported/133200997/export-03ace8ec62696c994a26b08f00a50623-spike.scn"
              [remap]

path="res://.godot/exported/133200997/export-8ce014383d74eec877e5193cec6fbb80-test_tile_set.scn"
      [remap]

path="res://.godot/exported/133200997/export-619ccfc39272d82250d4e12a78737bfe-lv_1.scn"
               [remap]

path="res://.godot/exported/133200997/export-46339cfc876de426022a7fde78e090b6-main.scn"
               list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              d�H�f   res://char/camera.tscnB<Oݿ�
   res://char/cat.tscn4��q�0mi   res://char/portal.tscn��p)   res://char/spike.tscn�$��x{�#   res://char/test_tile_set.tscn������   res://levels/lv_1.tscn?G���g`   res://resources/ghost.png‱|���_   res://resources/icon.svgϿ��҉]6   res://resources/portal.png�����C    res://resources/sox.png�ګݩ�M   res://resources/spike.png#�Gu���   res://resources/temp image.jpgj�-���   res://index.icon.png1���|k    res://index.apple-touch-icon.png���Y#�   res://index.pngq�D2��KS   res://levels/main.tscn   ECFG
      application/config/name         src    application/run/main_scene          res://levels/main.tscn     application/config/features(   "         4.2    GL Compatibility       application/config/icon          res://resources/icon.svg   autoload/Globals          *res://levels/globals.gd
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script      
   input/left0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/right0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility 