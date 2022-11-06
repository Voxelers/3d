extends Node3D

const step_distance = 0.015
const step_distance_up = 0.1

# Called when the node enters the scene tree for the first time.
func _ready():
	# $AnimationPlayer.play('Armature|mixamocom|Layer0') # Replace with function body.
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pos = $Armature.get_global_position()
	var new_pos = Vector3(pos.x, pos.y, pos.z + step_distance)
	# $Armature.set_position(new_pos)

func _on_animation_player_animation_finished(anim_name):
	# $AnimationPlayer.play("Armature|mixamocom|Layer0")
	pass

func _input(event):
	var pos = $Armature.get_global_position()
	if Input.is_action_pressed('ui_up'):
		$AnimationPlayer.play('Armature|mixamocom|Layer0', -1, 1)
		# await get_tree().create_timer(0.5).timeout
		$Armature.set_position(Vector3(pos.x, pos.y, pos.z + step_distance_up))
		# $AnimationPlayer.stop(false)
	elif Input.is_action_pressed('ui_down'):
		$AnimationPlayer.play_backwards('Armature|mixamocom|Layer0')
		$Armature.set_position(Vector3(pos.x, pos.y, pos.z - step_distance_up))
