extends Node

var rss_url:String setget ,get_rss_url
var images_url:String setget ,get_images_url

func get_rss_url() -> String:
	if OS.has_feature("JavaScript"):
		return JavaScript.eval("window.location.href") + "cache-rss"
	else:
		return "http://localhost:3001/cache-rss"
	
	
func get_images_url() -> String:
	if OS.has_feature("JavaScript"):
		return JavaScript.eval("window.location.href") + "cache-images"
	else:
		return "http://localhost:3001/cache-images"
