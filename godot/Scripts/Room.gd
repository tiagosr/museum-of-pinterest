extends Spatial

class_name Room

var frames:Array = []
var unattached_frames:Array = []

signal room_filled

func _ready():
	collect_frames()
	
func collect_frames():
	for child in get_children():
		if child is Frame:
			frames.append(child)
			unattached_frames.append(child)

func consume_rss_item(item:RSSItem)->bool:
	if unattached_frames.size() == 0:
		return false
	var frame:Frame = unattached_frames.pop_back()
	frame.set_item(item)
	return true
