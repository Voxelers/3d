extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var total_stairs = 10

# Called when the node enters the scene tree for the first time.
func _ready1():
	for i in total_stairs:
		var new_stair = $Stair.duplicate()
		new_stair.translate(Vector3(0, 5*i, 0))
		add_child(new_stair)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
