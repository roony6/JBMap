extends ColorRect

signal fadeFinished

func fadeIn ():
	$AnimationPlayer.play("Fade_In")


func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("fadeFinished")
	pass # replace with function body
