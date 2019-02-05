extends Control
#Start Menu


func _on_StartGame_pressed():
	$FadeIn.show()
	$FadeIn.fadeIn()
	#get_tree().change_scene("res://World.tscn")
	pass # replace with function body


func _on_ExitButton_pressed():
	get_tree().quit()
	pass # replace with function body


func _on_FadeIn_fadeFinished():
	get_tree().change_scene("res://World.tscn")
	pass # replace with function body
