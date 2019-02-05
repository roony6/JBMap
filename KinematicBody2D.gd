extends KinematicBody2D

const UPIS = Vector2(0, -1)
var motion = Vector2()
const GRAPHITY = 20
const ACCELRATION = 55
const MAX_SPEED = 275
const JUMP_HIEGHT = -560
var fraction = false

# Called every frame. Delta is time since last frame.
func _physics_process(delta):
	
	motion.y += GRAPHITY
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x+ACCELRATION, MAX_SPEED) 
		$Sprite.flip_h = false #get_node("Sprite").flip_h = false
		$Sprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x-ACCELRATION, -MAX_SPEED) 
		$Sprite.flip_h = true
		$Sprite.play("Run")
	else:
		$Sprite.play("Idle")
		fraction = true
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HIEGHT
		if fraction:
			motion.x = lerp(motion.x, 0, 0.24)
	else:
		if motion.y < 0:
			$Sprite.play("Jump")
		else:
			$Sprite.play("Fall")
		if fraction:
			motion.x = lerp(motion.x, 0, 0.06)
		
		
	motion = move_and_slide(motion, UPIS)
	pass
