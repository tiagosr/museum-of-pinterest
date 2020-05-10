extends RayCast

class_name Interaction

var current_collider:Interactable

func _process(delta):
	var collider = get_collider()
	if is_colliding() and collider is Interactable:
		if current_collider != collider:
			current_collider = collider
		if Input.is_action_just_pressed("trigger"):
			collider.interact()
	elif current_collider:
		current_collider = null
	
