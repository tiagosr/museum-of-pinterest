extends Node

var rss_url:String setget ,get_rss_url
var images_url:String setget ,get_images_url

func js_addr() -> String:
	var addr = JavaScript.eval("(function(){"+
	"var addr = window.location.origin + window.location.pathname;"+
	"return addr.substr(0, addr.lastIndexOf('/')+1);"+
	"})()")
	return addr

func get_rss_url() -> String:
	if OS.has_feature("JavaScript"):
		return js_addr() + "cache-rss"
	else:
		return "http://localhost:3001/cache-rss"
	
	
func get_images_url() -> String:
	if OS.has_feature("JavaScript"):
		return js_addr() + "cache-images"
	else:
		return "http://localhost:3001/cache-images"
