class_name State_Manager
extends Node

var states_array:Array=[]
@onready var current : Base_State=$Run

func _ready() -> void:
	states_array=get_children()
	current.enter()
	
func _physics_process(delta: float) -> void:
	current.do()
	
#切换状态
func change_state(id:int)->void:
	current.exit()
	current=states_array[id]
	print(current.get_script().get_path())
	current.enter()
