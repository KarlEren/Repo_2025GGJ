extends Base_State

signal death

func _ready() -> void:
	atta.emit_signal("death")

func enter():
	$"../../AudioStreamPlayer2D".play()
	$"../../Area2D".look_at($"../../Area2D".get_global_mouse_position())

	if($"../..".angle_with_y_axis<0):
		$"../../AnimationPlayer".play("向右攻击")
	else :
		$"../../AnimationPlayer".play("向左攻击")


func do():
	pass

func BeginAttack():
	
	if($"../..".angle_with_y_axis<0):
		$"../../Area2D/Sprite2D".visible=true
	else :
		$"../../Area2D/Sprite2D2".visible=true
	
	var arr=$"../../Area2D".get_overlapping_areas()
	
	for i in arr:
		if(i.is_in_group("Enemy")):
			
			atta.connect("death",Callable(i,"_enemy_death_"))
			atta.emit_signal("death")
			
func exit():
	$"../../Area2D/Sprite2D".visible=false
	$"../../Area2D/Sprite2D2".visible=false
