extends Spatial


var total_balls = 10

func _ready():

	var ball_anim_old = $AnimationPlayer.get_animation("move")
	var ball_anim = Animation.new()
	ball_anim.loop = true
	$AnimationPlayer.add_animation("move_new", ball_anim)
	$AnimationPlayer.play("move_new")
	
	
	for i in total_balls:
		# Add the new ball to the scene
		var new_ball = $ball.duplicate()
		new_ball.translate(Vector3(0, 2*i, 0))
		add_child(new_ball)
		# Animate the ball with a new track
		var track_index = ball_anim.add_track(Animation.TYPE_VALUE)
		ball_anim.track_set_path(track_index, new_ball.get_path().get_name(2)+":scale")
		ball_anim.track_insert_key(track_index, 0.0, Vector3(1, 1, 1), 1)
		ball_anim.track_insert_key(track_index, 0.5, Vector3(1+i, 1, 1), 1)
		ball_anim.track_insert_key(track_index, 1, Vector3(1, 1, 1), 1)
