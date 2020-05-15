extends Object

class_name ImageDownloader

var thread:Thread = Thread.new()
var new_texture:ImageTexture = null

signal texture_loaded
signal failed_to_load

func load_new_image(httpRequest:HTTPRequest, new_url:String):
	httpRequest.connect("request_completed", self, "image_loaded")
	httpRequest.request(new_url)
	
func image_loaded(result, response_code, headers, body):
	if response_code != 404:
		if OS.has_feature("JavaScript"):
			process_loaded_image(body)
		else:
			thread.start(self, "process_loaded_image", body)
	else:
		emit_signal("failed_to_load")

func process_loaded_image(body:PoolByteArray):
	var image_file:File = File.new()
	var new_image:Image = Image.new()
	if new_image.load_jpg_from_buffer(body) == OK:
		new_texture = ImageTexture.new()
		new_texture.create_from_image(new_image)
		emit_signal("texture_loaded", new_texture)
	else:
		emit_signal("failed_to_load")
		
