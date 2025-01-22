extends Area2D
@export var health:int;



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


	




func _on_bubble_damaged(area: Area2D) -> void:
	if(area.is_in_group("Enemy")):
		health-=1
		area._enemy_death_()
			
func _get_position()->Vector2:
	return position
	
func _change_image()->void:
	$AnimatedSprite2D_San.play("Death2")
