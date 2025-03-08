extends CharacterBody2D

const SPEED = 200.0
const JUMP_VELOCITY = -245.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void :

    if not is_on_floor():
        velocity += get_gravity() * delta



    if Input.is_action_just_pressed("jump") and is_on_floor():
        velocity.y = JUMP_VELOCITY




    var direction: = Input.get_axis("left", "right")
    if direction:
        velocity.x = direction * SPEED
    else:
        velocity.x = move_toward(velocity.x, 0, SPEED)

    if (velocity.x > 1 || velocity.x < -1):
        animated_sprite_2d.animation = "running"
    else:
        animated_sprite_2d.animation = "idle"


    move_and_slide()

    var isLeft = velocity.x < 0
    animated_sprite_2d.flip_h = isLeft

    if Input.is_action_just_pressed("exit"):
        get_tree().quit()
