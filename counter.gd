extends Label

var saus = 0

func _ready():
	text = str(saus) 




func _on_sauce_collected():
	saus = saus + 1
	_ready()
	if saus == 5:
		get_tree().change_scene_to_file("res://win.tscn")
