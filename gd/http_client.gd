extends AwaitableHTTPRequest


func _ready():
	pass


func get_user(id: int) -> HTTPResult:
	return await self.async_request("http://localhost:3000/user/%d" % [id])
