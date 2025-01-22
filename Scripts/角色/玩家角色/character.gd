extends CharacterBody2D



@export var move_speed : float = 50 # 设置玩家速度
@export var animator : AnimatedSprite2D # 动画类

var attack : float
var angle_with_y_axis
@export var bullet_scene : PackedScene  # 该类为场景类

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#var rotation=get_global_mouse_position().angle_to_point(position)
	
	
	var mouse_position = get_global_mouse_position()
	var vector_to_mouse = mouse_position - position
	angle_with_y_axis = atan2(-vector_to_mouse.x, vector_to_mouse.y)

	attack=Input.is_action_just_pressed("attack",true)
	if attack:
		$FSM.change_state(1)

	
		

		move_and_slide() # 根据速度来进行移动角色
	
