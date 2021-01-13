extends Spatial


func _ready():
	$ViewportContainer/Viewport/Camera.transform = $Camera.transform
