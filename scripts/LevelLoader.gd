extends Node2D


func _ready():
	pass

func _read_level_(var folderPath : String):
	var worldData = _read_json_file(folderPath + "/data.json")
	worldData["levels"]

func _read_json_file(var path : String) -> Dictionary:
	var file = File.new()
	file.open(path, file.READ)
	var raw_json = file.get_as_text()
	var json = JSON.parse(raw_json).result
	file.close()
	return json
