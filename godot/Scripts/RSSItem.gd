extends Object

class_name RSSItem

var title:String
var description:String
var link:String
var pubDate:String
var guid:String
var imageUrl:String
var originalImageUrl:String

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
	originalImageUrl = imageUrl.replace("/236x/", "/originals/")
	var tofind:String = "pinimg.com"
	var found:int = originalImageUrl.find(tofind)
	if found > 0:
		originalImageUrl = originalImageUrl.substr(found + tofind.length())

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
				#print("title: ", title)
			"link":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				link = ret.text
				#print("link: ", link)
			"description":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				#description = ret.text
				#print("description: ", description)
				parse_description(ret.text)
				#print("imageUrl: ", originalImageUrl)
			"pubDate":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				pubDate = ret.text
				#print("pubDate: ", pubDate)
			"guid":
				var ret = get_node_data(parser)
				if !ret.result:
					return false
				guid = ret.text
				#print("guid: ", guid)
			"item": # we're done here
				return parser.get_node_type() == XMLParser.NODE_ELEMENT_END
