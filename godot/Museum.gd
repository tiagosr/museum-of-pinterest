extends Spatial

class_name Museum

export(Array, Resource) var available_rooms:Array = []
var images:Array = []
var rssItems:Array = []
var rooms:Array = []
var thread:Thread = Thread.new()

onready var player:MuseumVisitor = $Player
export var username:String = "tiagosr"
export var boardname:String = "light-wave"

func get_rss_url(uname, bname) -> String:
	#return "http://br.pinterest.com/"+uname+"/"+bname+".rss"
	return Global.rss_url +"/"+uname+"/"+bname+".rss"

func rss_loaded(result, response_code, headers, body):
	if OS.has_feature("JavaScript"):
		parse_rss(body)
	else:
		thread.start(self, "parse_rss", body)
	
func parse_rss(body:PoolByteArray) -> void:
	var parser:XMLParser = XMLParser.new()
	parser.open_buffer(body)
	while parser.read() == OK:
		var node_type = parser.get_node_type()
		var node_name = parser.get_node_name() if node_type != XMLParser.NODE_TEXT else ""
		var node_data = parser.get_node_data() if node_type == XMLParser.NODE_TEXT else ""
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
		make_and_assign_rooms(rssItems)

func make_and_assign_rooms(rssItems:Array) -> void:
	var current_room:Room = null
	for rssItem in rssItems:
		print("trying rssItem ", rssItem)
		if not current_room:
			var next_room = available_rooms[rand_range(0, available_rooms.size())] as RoomData
			current_room = next_room.roomScene.instance()
			if not current_room:
				printerr("room not instanced")
				break
			add_child(current_room)
		if not current_room.consume_rss_item(rssItem):
			var next_room = available_rooms[rand_range(0, available_rooms.size())] as RoomData
			current_room = next_room.roomScene.instance()
			if not current_room:
				printerr("room not instanced")
				break
			add_child(current_room)
			# retry with the new room
			if not current_room.consume_rss_item(rssItem):
				printerr("newly assigned room can't receive rssItem")
				break
	museum_entered()
	
func museum_entered():
	$TitlePanel.visible = false
	player.can_move = true
	
func parse_board_url(url:String) -> bool:
	var pos = url.find_last("pinterest.com/")
	if pos < 0:
		return false
	var sub:String = url.substr(pos + 14)
	if sub.length() == 0:
		return false
	var pieces:PoolStringArray = sub.split("/", false)
	if pieces.size() != 2:
		return false
	username = pieces[0]
	boardname = pieces[1]
	return true
	
func load_board(user:String, board:String):
	$HTTPRequest.connect("request_completed", self, "rss_loaded")
	$HTTPRequest.request(get_rss_url(username, boardname))

func failed_to_enter_museum(reason:String):
	$TitlePanel/Grid/EnterMuseum.disabled = false
	$TitlePanel/Grid/Address.editable = true
	$TitlePanel/Grid/Notice.text = reason
	
func try_enter_museum():
	$TitlePanel/Grid/EnterMuseum.disabled = true
	$TitlePanel/Grid/Address.editable = false
	$TitlePanel/Grid/Notice.text = ""
	if parse_board_url($TitlePanel/Grid/Address.text):
		load_board(username, boardname)
	else:
		failed_to_enter_museum("not a valid Pinterest board address!")

func _ready():
	player.can_move = false
	$TitlePanel/Grid/EnterMuseum.connect("pressed", self, "try_enter_museum")
	

