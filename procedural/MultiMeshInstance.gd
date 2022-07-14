extends MultiMeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



func _ready():

	var multiMesh = self.multimesh
	print("Total number of balls: ", multiMesh.instance_count)		
	
	# Create one static body fo all collision shapes
	var collisionNode = StaticBody.new()
	self.add_child(collisionNode)

	# Let's add collision shapes for all the balls
	var shape = multiMesh.mesh.create_trimesh_shape()
	
	for mesh_index in range(multiMesh.instance_count):
		var collisionShape = CollisionShape.new()
		collisionShape.shape = shape
		collisionShape.transform = multiMesh.get_instance_transform(mesh_index)
		collisionNode.add_child(collisionShape)
	
	# Let's drop balls to test the collisions
	
	var total_balls = 200

	for i in total_balls:
		add_child($Ball.duplicate())



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
