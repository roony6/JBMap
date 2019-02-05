extends Area2D

export(String, FILE, "*.tscn") 	var WorldN

func _physics_process(delta):
#	# Called every frame. Delta is time since last frame.
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(WorldN)
	pass