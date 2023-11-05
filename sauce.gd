extends Area3D

signal collected


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name == "Dave":
		emit_signal("collected")
		$Timer.start()
		
func _on_timer_timeout():
	queue_free()
