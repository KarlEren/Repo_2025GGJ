extends Node2D
var dias:Array=["玻璃花窗爆裂四散，人类的文明自此不再",
"神祇的垂青落进虚空中新的蚁穴",
"死亡，亦是最后的温床"
]
var idx:int=0;
var imgs:Array=["res://Assets/Sprites/over_1.PNG",
"res://Assets/Sprites/over_2.PNG",
"res://Assets/Sprites/over_3.PNG"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$CanvasLayer/Label.text=dias[idx]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_pressed() -> void:
	$AudioStreamPlayer.play()
	idx+=1
	if(idx==1):
		$CanvasLayer/Label.text=dias[idx]
		$Sprite2D.texture=load(imgs[idx])
	elif(idx==2):
		$CanvasLayer/Label.text=dias[idx]
		$Sprite2D.texture=load(imgs[idx])
		$CanvasLayer/TextureButton/Label.text="回到主菜单"
	else:
		get_tree().change_scene_to_file("res://Scenes/ed2.tscn")
		
