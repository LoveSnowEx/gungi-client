extends Node

var http_event_source: HTTPEventSource


func _ready() -> void:
	http_event_source = HTTPEventSource.new()
	http_event_source.connect_to_url("http://localhost:3000/events")
	http_event_source.event.connect(event_handler)


func _process(delta: float) -> void:
	http_event_source.poll()


func event_handler(ev: ServerSentEvent):
	print("envet：", ev.type)
	print("data:", ev.data)
