extends Object

class_name ImageDownloader

var thread:Thread = Thread.new()
var imageTexture:ImageTexture = null
var linkUrl:String
var httpRequest:HTTPRequest

var imageUrl:String
var altImageUrl:String

signal texture_loaded
signal failed_to_load
signal texture_loaded_alt

func load_new_image(request:HTTPRequest, _imageUrl:String, _altImageUrl:String, altLinkUrl:String):
	linkUrl = altLinkUrl
	imageUrl = _imageUrl
	altImageUrl = _altImageUrl
	httpRequest = request
	httpRequest.connect("request_completed", self, "image_loaded")
	httpRequest.request(Global.get_images_url() + imageUrl)
	
func image_loaded(result, response_code, headers, body):
	if response_code == 200:
		if OS.has_feature("JavaScript"):
			process_loaded_image(body)
		else:
			thread.start(self, "process_loaded_image", body)
	else:
		httpRequest.cancel_request()
		httpRequest.disconnect("request_completed", self, "image_loaded")
		httpRequest.connect("request_completed", self, "alt_image_loaded")
		httpRequest.request(Global.get_images_url() + altImageUrl)

func alt_image_loaded(result, response_code, headers, body):
	if response_code == 200:
		if OS.has_feature("JavaScript"):
			process_loaded_image(body)
		else:
			thread.start(self, "process_loaded_image", body)
	else:
		emit_signal("failed_to_load")

func process_loaded_image(body:PoolByteArray):
	if body.subarray(0, 3).get_string_from_ascii() == "/9j/":
		body = Marshalls.base64_to_raw(body.get_string_from_ascii())
	var image_file:File = File.new()
	var newImage:Image = Image.new()
	if newImage.load_jpg_from_buffer(body) == OK:
		imageTexture = ImageTexture.new()
		imageTexture.create_from_image(newImage)
		emit_signal("texture_loaded", self)
	else:
		emit_signal("failed_to_load")


