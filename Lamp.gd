extends AnimatedSprite2D

var caninteract = false

var light = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if caninteract and Input.is_action_just_pressed("interact"):
		play("lamp on")


func _on_area_2d_body_entered(body):
	caninteract = true
	$Prompt.show()
	
	light = false
	


func _on_area_2d_body_exited(body):
	caninteract = false
	$Prompt.hide()
	

