extends Node2D

func _ready():
    pass

func _on_area_2d_body_entered(body: Node2D) -> void :
    $AnimationPlayer.play("show")
