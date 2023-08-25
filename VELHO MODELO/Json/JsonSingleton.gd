extends Node

var json_data

func _ready():
	ler_racas()
#	var teste = {"titulo1":3}
#	salvar_racas(teste)

func ler_racas():
	var arquivo = File.new()
	arquivo.open("res://Json/racas.json", File.READ)
	json_data = JSON.parse(arquivo.get_as_text())
	
#func salvar_racas(novaraca):
#	var arquivo = File.new()
#	arquivo.open("res://Json/racas2.json", File.WRITE)
#	json_data = JSON.parse(arquivo.get_as_text())
#	json_data.append(novaraca)
	var raca_string = json_data.to_string()
	arquivo.store_string(raca_string)
	
