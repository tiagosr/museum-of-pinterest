extends Spatial

class_name Frame

#export var url:String = "http://i.pinimg.com/originals/bc/f1/09/bcf1098b58e8e28a4b06e6d9443404cd.jpg"
export var url:String = "/originals/bc/f1/09/bcf1098b58e8e28a4b06e6d9443404cd.jpg"
var thread:Thread = Thread.new()

var rssitem:RSSItem = null

var image_loader:ImageDownloader = ImageDownloader.new()

func set_frame_image(imageDownloader:ImageDownloader, imageUrl:String):
	print("setting frame image %s"%imageUrl)
	var new_material:SpatialMaterial = $MeshFrame.get_surface_material(0).duplicate()
	var new_texture:ImageTexture = imageDownloader.imageTexture
	new_material.albedo_texture = new_texture
	$MeshFrame.set_surface_material(0, new_material)
	var ratio:float = new_texture.get_height() / new_texture.get_width()
	if ratio > 1.0:
		$MeshFrame.scale.y = $MeshFrame.scale.x * ratio
	else:
		$MeshFrame.scale.x = $MeshFrame.scale.y * new_texture.get_width() / new_texture.get_height()

func failed_to_load(imageUrl:String):
	printerr("failed to load image %s"%imageUrl)

func set_item(item:RSSItem) -> bool:
	rssitem = item
	image_loader.connect("texture_loaded", self, "set_frame_image", [rssitem.originalImageUrl])
	image_loader.connect("texture_loaded_alt", self, "set_frame_image", [rssitem.imageUrl])
	image_loader.connect("failed_to_load", self, "failed_to_load", [rssitem.imageUrl])
	image_loader.load_new_image($HTTPRequest, rssitem.originalImageUrl, rssitem.imageUrl, rssitem.link)
	return true

func _ready():
	#load_new_image(Global.get_images_url() + url)
	pass
