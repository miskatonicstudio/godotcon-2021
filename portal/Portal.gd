extends Spatial


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Panel.material.set_shader_param("tex", $Room2/Viewport.get_texture())


func _input(event):
	if event is InputEventMouseMotion:
		$Room1/Camera.rotation_degrees.y += event.relative.x
		$Room2/Viewport/Camera.rotation_degrees = $Room1/Camera.rotation_degrees
