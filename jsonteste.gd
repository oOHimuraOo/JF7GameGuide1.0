extends Control

onready var texto1 = $AreaInflu/Texto1
onready var titulo = $AreaInflu/Titulo

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var arquivo = File.new()
	arquivo.open("res://Json/racas.json", File.READ)
	var json_data = JSON.parse(arquivo.get_as_text())
	#texto1.set_text(json_data.result["texto1"])
	#titulo.set_text(json_data.result["titulo"])
	#print(json_data.result[0])
	
	#for raca in json_data.result:
		#print(raca["titulo"])
	
	
	
