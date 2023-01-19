extends Node2D


func _ready():
	pass

func _parse_ldtk_level_file(var path : String):
	_read_json_file(path)

func _read_json_file(var path : String) -> JSONParseResult:
	var file = File.new()
	file.open(path, file.READ)
	var raw_json = file.get_as_text()
	var json = JSON.parse(raw_json).result
	file.close()
	return json
