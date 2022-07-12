extends Spatial



# Called when the node enters the scene tree for the first time.
func _ready():
	MultiMeshInstance
	var myMesh = MeshInstance.new()
	myMesh.mesh = CubeMesh.new()
	add_child(myMesh)

func _ready_surface():
	var st = SurfaceTool.new()

	st.begin(Mesh.PRIMITIVE_TRIANGLES)

	# Prepare attributes for add_vertex.
	st.add_normal(Vector3(0, 0, 1))
	st.add_uv(Vector2(0, 0))
	# Call last for each vertex, adds the above attributes.
	st.add_vertex(Vector3(-1, -1, 0))

	st.add_normal(Vector3(0, 0, 1))
	st.add_uv(Vector2(0, 1))
	st.add_vertex(Vector3(-1, 1, 0))

	st.add_normal(Vector3(0, 0, 1))
	st.add_uv(Vector2(1, 1))
	st.add_vertex(Vector3(1, 1, 0))

	# Commit to a mesh.
	var mesh = st.commit()
	
	var myMesh = MeshInstance.new()
	myMesh.mesh = mesh
	add_child(myMesh)
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
