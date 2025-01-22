extends Node2D
var dias:Array=["那个声音自此消失，教堂穹顶破裂，鱼缸之外的神祇不再光顾",
"鱼缸内的声音也离你远去，你的话语，徘徊在人类的概念之外"]
var idx:int=0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/Label.text=dias[idx]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	$AudioStreamPlayer.play()
	idx+=1
	if(idx==1):
		$CanvasLayer/TextureButton/Label.text="回到主菜单"
		$CanvasLayer/Label.text=dias[idx]
	if(idx>1):
		get_tree().change_scene_to_file("res://Scenes/ed1.tscn")
	else:
		$CanvasLayer/Label.text=dias[idx]	
		$Sprite2D.texture=load("res://Assets/Sprites/WIn_3.png")
			
