extends Node3D
signal change_camera(camera)


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
    
func _input(event):
    # Check if a key was pressed
    if event is InputEventKey and event.is_pressed():
        # Emit a signal with the pressed key as an argument
        emit_signal("change_camera", event.as_text_key_label())


func _on_change_camera(camera):
    # Handle the signal
    print("Signal to change to camera:", camera)
    if camera == '1':
        $room1/camera1.current = true
    if camera == '2':
        $room2/camera2.current = true
    if camera == '3':
        $room3/camera3.current = true
    if camera == '4':
        $room4/camera4.current = true

