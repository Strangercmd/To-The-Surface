extends Control



func _ready() -> void :
    pass



func _process(delta: float) -> void :
    pass

func _on_home_button_down() -> void :
    get_tree().change_scene_to_file("res://main_menu.tscn")
