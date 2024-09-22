extends Node


func _ready():
	for id in range(8):
		var resp: HTTPResult = await $HTTPClient.get_user(id + 1)
		if resp.status_ok():
			print(resp.body_as_json().user.name)
	pass


func _process(delta: float) -> void:
	pass
