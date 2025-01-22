extends Button


#初始化文本
func _ready() -> void:
	self.text="  那个声音自此消失，教堂穹顶破裂，鱼缸之外的神祇不再光顾。"


func _process(delta: float) -> void:
	pass


func _on_button_up() -> void:
	self.text="  鱼缸内的声音也离你远去，你的话语，徘徊在人类的概念之外。"
	
	
	
	
