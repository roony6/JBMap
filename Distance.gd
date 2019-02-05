extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var player = get_parent().get_node("Player")
onready var complete = get_parent().get_parent().get_parent().get_parent().get_node("LevelComplete")
onready var o = get_parent().get_parent().get_parent().get_parent().get_node("Player")           

var distance = Vector2(0,0)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	#var distance = vector2(o.get_pos() - complete.get_pos())
	
	#distance = o.global_position.distance_to(complete.global_position)
	#var d = int(distance.x)
	#print(sqrt(d))
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass
