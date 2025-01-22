extends Base_State
@onready var ani : AnimationPlayer=$"../../AnimationPlayer"
@onready var monster:CharacterBody2D=$"../.."

var MyInput : Vector2 # 输入向量

var direct:Vector2=Vector2.RIGHT
var attack:bool=false

#var gravity = ProjectSettings.get_setting()

func enter():
	ani.play("移动")
	
func do():
	MyInput=Input.get_vector("left","right","up","down") # 获取玩家的vector输入，需要传入四个参数
	$"../..".velocity=MyInput*$"../..".move_speed
	

	if(MyInput==Vector2(0,1)):
		$"../../AnimatedSprite2D".play("向下移动")
	elif (MyInput>Vector2(0,0)):
		$"../../AnimatedSprite2D".play("向右移动")
	elif (MyInput<Vector2(0,0)):
		$"../../AnimatedSprite2D".play("向左移动")
	else:
		$"../../AnimatedSprite2D".play("Idle")
	monster.move_and_slide()
