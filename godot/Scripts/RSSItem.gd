extends Object

class_name RSSItem

var title:String
var description:String
var link:String
var pubDate:String
var guid:String
var imageUrl:String
var originalImageUrl:String

var imageDownloader:ImageDownloader = ImageDownloader.new()

class RetVal:
	var result:bool = false
	var text:String
	func _init(_result:bool, _text:String):
		result = _result
		text = _text

func get_node_data(parser:XMLParser) -> RetVal:
	var node_data
	if parser.read() == OK:
		if parser.get_node_type() != XMLParser.NODE_TEXT:
			return RetVal.new(true, "")
		node_data = parser.get_node_data()
	else:
		return RetVal.new(false, "")
	if parser.read() != OK:
		return RetVal.new(false, "")
	return RetVal.new(true, node_data)
	
func parse_description(descr_text:String):
	var from = descr_text.find("<img src=\"") + 10
	var to = descr_text.find("\"></a>")
	imageUrl = descr_text.substr(from, to - from)
	var tofind:String = "pinimg.com"
	var found:int = imageUrl.find(tofind)
	if found > 0:
		imageUrl = imageUrl.substr(found + tofind.length())
	originalImageUrl = imageUrl.replace("/236x/", "/originals/")

func from_xml(parser:XMLParser):
	while parser.read() == OK:
		var node_type = parser.get_node_type()
		var node_name = parser.get_node_name() if node_type != XMLParser.NODE_TEXT else ""
		match node_name:
			"title":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				title = ret.text
			"link":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				link = ret.text
			"description":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				parse_description(ret.text)
			"pubDate":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				pubDate = ret.text
			"guid":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				guid = ret.text
			"item": # we're done here
				return parser.get_node_type() == XMLParser.NODE_ELEMENT_END
