extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
    var player = $cubeArmature/AnimationPlayer
    var anim = player.get_animation("ArmatureAction")
    anim.set_loop_mode(1)
    player.play("ArmatureAction") # Replace with function body.
    $RigidBody3D/metaballsBasicAnim/AnimationPlayer.play("ArmatureAction")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
