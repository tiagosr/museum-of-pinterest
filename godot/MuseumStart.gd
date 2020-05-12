extends Spatial

var images:Array = []
var rssItems:Array = []
var thread:Thread = Thread.new()

export var username:String = "tiagosr"
export var boardname:String = "cacho-eira"

func get_rss_url(uname, bname) -> String:
	#return "http://br.pinterest.com/"+uname+"/"+bname+".rss"
	return Global.rss_url +"/"+uname+"/"+bname+".rss"

func rss_loaded(result, response_code, headers, body):
	if OS.has_feature("JavaScript"):
		parse_rss(body)
	else:
		thread.start(self, "parse_rss", body)
	
func parse_rss(body:PoolByteArray):
	var parser:XMLParser = XMLParser.new()
	parser.open_buffer(body)
	while parser.read() == OK:
		var node_name = parser.get_node_name()
		var node_data = parser.get_node_data()
		var node_type = parser.get_node_type()
		if node_type == XMLParser.NODE_ELEMENT:
			match node_name:
				"item":
					var rssItem = RSSItem.new()
					if not rssItem.from_xml(parser):
						printerr("error parsing <item>")
						break
					rssItems.append(rssItem)
				_:
					if node_type == XMLParser.NODE_ELEMENT:
						print("node name: ", node_name)
	if rssItems.size() != 0:
		pass

func _ready():
	$HTTPRequest.connect("request_completed", self, "rss_loaded")
	$HTTPRequest.request(get_rss_url(username, boardname))

