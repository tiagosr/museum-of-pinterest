extends Spatial

class_name Interactable

func get_interaction_text():
	return "Interact with %s"%name

func interact():
	print("Interacting with %s" % name)

