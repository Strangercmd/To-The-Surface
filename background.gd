extends Sprite2D



func _ready() -> void :
    $AnimationPlayer.play("Background")
    await $AnimationPlayer.animation_finished
    get_tree().change_scene_to_file("res://main_menu.tscn")


func _process(_delta: float) -> void :
    pass
