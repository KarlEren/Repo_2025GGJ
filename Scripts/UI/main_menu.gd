extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




	


func _on_texture_button_quit_pressed() -> void:
	$AudioStreamPlayer.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().quit()


func _on_texture_button_start_pressed() -> void:
	$AudioStreamPlayer.play()
	get_tree().change_scene_to_file("res://Scenes/Previously.tscn")
