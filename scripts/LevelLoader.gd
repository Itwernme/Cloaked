extends Node2D


func _ready():
	print(_read_json_file("res://assets/test.ldtk")["levels"])
	pass

func _parse_ldtk_level_file(var path : String):
	var worldData = _read_json_file(path)
	worldData["levels"]

func _read_json_file(var path : String) -> Dictionary:
	var file = File.new()
	file.open(path, file.READ)
	var raw_json = file.get_as_text()
	var json = JSON.parse(raw_json).result
	file.close()
	return json
