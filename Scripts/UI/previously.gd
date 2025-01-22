extends Node2D
var dias:Array=["信众们的教堂形似鱼缸，上帝不断变化着形态，无数泡泡散发着奇异的虹彩，垂怜祂的信众",
"全知全能的上帝啊，请为吾等推开门扉，消弭琉璃制成的桎梏",
"扭曲的存在自鱼缸外显现",
"人类在祂眼中如蝼蚁、鼠群、游鱼；仅仅一瞥，簇拥着、蠕动着的神祇亦向你投来目光，令你的意志陷入深渊",
"（WASD移动，在泡泡面前点击鼠标左键消除泡泡）"]
var idx:int=0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$CanvasLayer/Label_Pre.text=dias[idx]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_texture_button_con_pressed() -> void:
	$AudioStreamPlayer.play()
	idx+=1
	if(idx>4):
		get_tree().change_scene_to_file("res://Scenes/main_scene.tscn")
	elif(idx==1):
		$CanvasLayer/Label_Pre.text=dias[idx]
	elif(idx==2):
		$Sprite2D_Background.texture=load("res://Assets/BackGround/e1.PNG")
		$Sprite2D_Background.scale=Vector2(3,3)
		$CanvasLayer/Label_Pre.text=dias[idx]
	elif(idx==3):
		$Sprite2D_Background.texture=load("res://Assets/BackGround/e2.PNG")
		$Sprite2D_Background.scale=Vector2(3,3)
		$CanvasLayer/Label_Pre.text=dias[idx]
	elif(idx==4):
		$CanvasLayer/TextureButton_con/Label.text="前往关卡"
		$Sprite2D_Background.texture=load("res://Assets/BackGround/B1.jpg")
		$Sprite2D_Background.scale=Vector2(3,3)
		$CanvasLayer/Label_Pre.text=dias[idx]
	
	
