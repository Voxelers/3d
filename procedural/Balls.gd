extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var total_balls = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in total_balls:
		add_child($Ball.duplicate())



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
