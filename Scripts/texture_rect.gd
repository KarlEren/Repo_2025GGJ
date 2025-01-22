extends TextureRect

var texture1: Texture2D
var texture2: Texture2D
var texture3: Texture2D

func _ready():
	# 加载纹理
	texture1 = load("res://Assets/Sprites/Win_1.png") as Texture2D
	texture2 = load("res://Assets/Sprites/Win_2.png") as Texture2D
	texture3 = load("res://Assets/Sprites/WIn_3.png") as Texture2D
	
	#初始图片
	self.texture = texture1

#切换图片
func _on_bank_menu_button_up() -> void:
	switch_texture()


func switch_texture():
	if self.texture == texture1:
		self.texture = texture2
	elif self.texture==texture2:
		self.texture=texture3
	else:
		get_tree().change_scene_to_file("res://Scenes/Main_Menu.tscn")
