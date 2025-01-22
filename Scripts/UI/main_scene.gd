extends Node2D
@onready var timer_spawn=$Timer_SpawnEnemy
@onready var timer_count=$Timer_Count
@onready var san_value:int=$SAN_Bubble.health
@onready var san_pos:Vector2=$SAN_Bubble.position
@onready var label_time=$CanvasLayer_UI/Label_TickCount
@onready var label_san=$CanvasLayer_UI/Label_SanValue
@export var enemy:PackedScene
@onready var left_time:int=$Timer_Count.wait_time
@onready var Anim_Player=$AnimationPlayer_Red


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer_player.play()
	label_san.text="剩余时间: 180"
	
	
	


# Called every new folderframe. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer_spawn.wait_time-=0.2*delta
	timer_spawn.wait_time=clamp(timer_spawn.wait_time,1,3)
	san_value=$SAN_Bubble.health
	if(san_value<=0):
		_game_over()
	label_san.text="SAN值:"+str(san_value)
	
	
	


func _on_game_win() -> void:
	$AnimationPlayer_Red.active=true;
	$AnimationPlayer_Red.play("End")
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Scenes/game_win.tscn")
	


func _on_spawn_enemy() -> void:
	var enemy_node=enemy.instantiate()
	enemy_node._set_target_pos(san_pos)
	enemy_node.position=Vector2(randf_range(-568,544),randf_range(366,508))
	get_tree().current_scene.add_child(enemy_node)
	

func _on_timer_show_left_time_timeout() -> void:
	left_time-=1
	label_time.text="剩余时间: "+str(left_time)


func _on_timer_change_image_timeout() -> void:
	$AnimationPlayer_Red.active=true;
	$AnimationPlayer_Red.play("turn")
	$BackGround.texture=load("res://Assets/BackGround/B3.PNG")
	$BackGround.scale=Vector2(0.655,0.66)
	$SAN_Bubble._change_image()

func _game_over():
	$AnimationPlayer_Red.active=true;
	$AnimationPlayer_Red.play("End")
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	
