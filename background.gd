extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("Background")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://main_menu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
