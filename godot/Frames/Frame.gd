extends Spatial

class_name Frame

#export var url:String = "http://i.pinimg.com/originals/bc/f1/09/bcf1098b58e8e28a4b06e6d9443404cd.jpg"
export var url:String = "/originals/bc/f1/09/bcf1098b58e8e28a4b06e6d9443404cd.jpg"
var thread:Thread = Thread.new()

var rssitem:RSSItem = null

func load_new_image(new_url:String):
	$HTTPRequest.connect("request_completed", self, "image_loaded")
	$HTTPRequest.request(new_url)

func image_loaded(result, response_code, headers, body):
	if response_code != 404:
		if OS.has_feature("JavaScript"):
			process_loaded_image(body)
		else:
			thread.start(self, "process_loaded_image", body)
	else:
		printerr("image not loaded!")

func process_loaded_image(body:PoolByteArray):
	var image_file:File = File.new()
	var new_image:Image = Image.new()
	if new_image.load_jpg_from_buffer(body) == OK:
		var new_texture:ImageTexture = ImageTexture.new()
		new_texture.create_from_image(new_image)
		set_frame_image(new_texture)
	
func set_frame_image(new_texture:ImageTexture):
	print("setting frame image")
	var new_material:SpatialMaterial = $MeshFrame.get_surface_material(0).duplicate()
	new_material.albedo_texture = new_texture
	$MeshFrame.set_surface_material(0, new_material)
	var ratio:float = new_texture.get_height() / new_texture.get_width()
	if ratio > 1.0:
		$MeshFrame.scale.y = $MeshFrame.scale.x * ratio
	else:
		$MeshFrame.scale.x = $MeshFrame.scale.y * new_texture.get_width() / new_texture.get_height()

func set_item(item:RSSItem) -> bool:
	rssitem = item
	load_new_image(Global.get_images_url() + rssitem.originalImageUrl)
	return true

func _ready():
	#load_new_image(Global.get_images_url() + url)
	pass
