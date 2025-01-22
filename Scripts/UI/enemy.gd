extends Area2D
@export var speed:float=20;
@export var vec_target:Vector2
var death_frames

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	


func _physics_process(delta: float) -> void:
	pass
		

func _set_target_pos(pos_target:Vector2):
	vec_target=pos_target

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position=position.move_toward(vec_target,1)
	
func _enemy_death_():
	
	$CollisionShape2D_Enemy.disabled=true
	$AnimatedSprite2D_Enemy.play("Death")
	await get_tree().create_timer(0.3).timeout
	queue_free()
	

	

	



	
