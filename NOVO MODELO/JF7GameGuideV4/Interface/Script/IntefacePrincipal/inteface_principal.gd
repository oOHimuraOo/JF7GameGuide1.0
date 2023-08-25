extends Control

@onready var Nodo_Pontos_Atributos = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/HBoxContainer/PontosDisponiveisBacground/EtiquetaPontosDisponiveis

var Caminho_atributos = "InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/"
var Caminho_mudancaEtiquetas = "/AtributoBackground/AtributoContainer/Mudanca"
var Caminho_botaoNeg = "/BotaoDiminuirAtr"
var Caminho_rolarAtr = "/BotaoRolarAtributo"
var Caminho_botaoPos = "/BotaoAumentarAtributo"
var Caminho_valor = "/AtributoBackground/AtributoContainer/Valor"
var Caminho_modificadorAtr = "/AtributoBackground/AtributoContainer/ModificadorAtributo"

var Pontos_Disponiveis = 0
var Pontos_de_Atributos = 0

var for_final :float = 0.0
var des_final :float = 0.0
var con_final :float = 0.0
var hon_final :float = 0.0
var san_final :float = 0.0
var sab_final :float = 0.0
var int_final :float = 0.0
var car_final :float = 0.0

var for_adicional = 0
var des_adicional = 0
var con_adicional = 0
var hon_adicional = 0
var san_adicional = 0
var sab_adicional = 0
var int_adicional = 0
var car_adicional = 0

var for_modificador = 0.0
var des_modificador = 0.0
var con_modificador = 0.0
var hon_modificador = 0.0
var san_modificador = 0.0
var sab_modificador = 0.0
var int_modificador = 0.0
var car_modificador = 0.0

var _Menu = 1
var RNG = RandomNumberGenerator.new()
var Custo_de_atributo = 0

func _ready():
	Pontos_Disponiveis = Pontos_de_Atributos
	Nodo_Pontos_Atributos.set_text(str(Pontos_Disponiveis))
	if Pontos_Disponiveis == 0:
		pass
	else:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(true)
	for button in get_tree().get_nodes_in_group("BotaoPos"):
		button.pressed.connect(_Aumentar_pontos_de_atributo, [button.get_node("../").get_name()])
	for button in get_tree().get_nodes_in_group("BotaoNeg"):
		button.pressed.connect(_Diminuir_pontos_de_atributo, button.get_node("../").get_name())
	for button in get_tree().get_nodes_in_group("RolarAtr"):
		button.pressed.connect(_Rolar_atributo, button.get_node("../").get_name())
	for button in get_tree().get_nodes_in_group("BotaoPos"):
		button.pressed.connect(_Custo_de_Atributo, button.get_node("../").get_name())
	for button in get_tree().get_nodes_in_group("BotaoNeg"):
		button.pressed.connect(_Custo_de_Atributo, button.get_node("../").get_name())
	for button in get_tree().get_nodes_in_group("RolarAtr"):
		button.pressed.connect(_modificador, button.get_node("../").get_name())
	for button in get_tree().get_nodes_in_group("BotaoPos"):
		button.pressed.connect(_modificador, button.get_node("../").get_name())
	for button in get_tree().get_nodes_in_group("BotaoNeg"):
		button.pressed.connect(_modificador, button.get_node("../").get_name())

func _Aumentar_pontos_de_atributo(ATR:String):
	var dic_AumentarATR:Dictionary = {} #Vazio
	dic_AumentarATR["For"] = for_final
	dic_AumentarATR["Des"] = des_final
	dic_AumentarATR["Con"] = con_final
	dic_AumentarATR["Hon"] = hon_final
	dic_AumentarATR["San"] = san_final
	dic_AumentarATR["Sab"] = sab_final
	dic_AumentarATR["Int"] = int_final
	dic_AumentarATR["Car"] = car_final
	
	if Pontos_Disponiveis >= Custo_de_atributo:
		get_node(Caminho_atributos + ATR + Caminho_valor).set_text(str(dic_AumentarATR[ATR] + 1))
		set(str(ATR, "_final"), get(str(ATR, "_final")) + 1.0)
		get_node(Caminho_atributos + ATR + Caminho_valor).set_text(str(get(ATR + "_final")))
		
		if get(ATR + "_final") == 20:
			get_node(Caminho_atributos + ATR + Caminho_botaoPos).set_disabled(true)
			
		if get(ATR + "_final") > 5:
			get_node(Caminho_atributos + ATR + Caminho_botaoNeg).set_disabled(false)
			
		if get(ATR + "_final") < 8:
			_Custo_de_Atributo(ATR)
			Pontos_Disponiveis -= Custo_de_atributo
			
		if get(ATR + "_final") > 8:
			_Custo_de_Atributo(ATR)
			Pontos_Disponiveis -= Custo_de_atributo
			
		else:
			Custo_de_atributo = 0
			Pontos_Disponiveis -= Custo_de_atributo
			_Custo_de_Atributo(ATR)
			
		Nodo_Pontos_Atributos.set_text(str(Pontos_Disponiveis))
		
		if Pontos_Disponiveis == 0:
			for button in get_tree().get_nodes_in_group("BotaoPos"):
				button.set_disabled(true)
	else:
		get_node(Caminho_atributos + ATR + Caminho_botaoPos).set_disabled(true)

func _Diminuir_pontos_de_atributo(ATR):
	set(ATR + "_final", get(ATR + "_final") - 1)
	get_node(Caminho_atributos + ATR + Caminho_valor).set_text(str(get(ATR + "_final")))
	
	if get(ATR + "_final") == 5:
		get_node(Caminho_atributos + ATR + Caminho_botaoNeg).set_disabled(true)
		
	else:
		get_node(Caminho_atributos + ATR + Caminho_botaoNeg).set_disabled(false)
		
	if get(ATR + "_final") < 20:
		get_node(Caminho_atributos + ATR + Caminho_botaoPos).set_disabled(false)
		
	if get(ATR + "_final") < 8:
		Pontos_Disponiveis += Custo_de_atributo
		_Custo_de_Atributo(ATR)
		
	if get(ATR + "_final") > 8:
		Pontos_Disponiveis += Custo_de_atributo
		_Custo_de_Atributo(ATR)
		
	else:
		Custo_de_atributo = 0
		Pontos_Disponiveis += Custo_de_atributo
		_Custo_de_Atributo(ATR)
	
	Nodo_Pontos_Atributos.set_text(str(Pontos_Disponiveis))

func _Rolar_atributo(ATR):
	RNG.randomize()
	var Aleatorio = RNG.randi_range(7,12)
	get_node(Caminho_atributos + ATR + Caminho_valor).set_text(str(Aleatorio))
	set(ATR + "_final", Aleatorio)
	_Habilitar_Modificação_Atributo(ATR)
	
func _Habilitar_Modificação_Atributo(ATR):
	get_node(Caminho_atributos + ATR + Caminho_rolarAtr).set_disabled(true)
	get_node(Caminho_atributos + ATR + Caminho_botaoPos).set_disabled(false)
	get_node(Caminho_atributos + ATR + Caminho_botaoNeg).set_disabled(false)

func _Custo_de_Atributo(ATR):
	if get(ATR + "_final") == 5:
		Custo_de_atributo = 3
		
	if get(ATR + "_final") == 6:
		Custo_de_atributo = 2
		
	if get(ATR + "_final") == 7:
		Custo_de_atributo = 1
		
	if get(ATR + "_final") == 8:
		Custo_de_atributo = 0
		
	if get(ATR + "_final") == 9:
		Custo_de_atributo = 1
		
	if get(ATR + "_final") == 10:
		Custo_de_atributo = 1
		
	if get(ATR + "_final") == 11:
		Custo_de_atributo = 2
		
	if get(ATR + "_final") == 12:
		Custo_de_atributo = 2
		
	if get(ATR + "_final") == 13:
		Custo_de_atributo = 3
		
	if get(ATR + "_final") == 14:
		Custo_de_atributo = 3
		
	if get(ATR + "_final") == 15:
		Custo_de_atributo = 4
		
	if get(ATR + "_final") == 16:
		Custo_de_atributo = 4
		
	if get(ATR + "_final") == 17:
		Custo_de_atributo = 5
		
	if get(ATR + "_final") == 18:
		Custo_de_atributo = 5
		
	if get(ATR + "_final") == 19:
		Custo_de_atributo = 6
		
	if get(ATR + "_final") == 20:
		Custo_de_atributo = 6

func _modificador(ATR):
	var dic_modificador:Dictionary = {} #Vazio
	dic_modificador["For"] = floor((for_final - 10.0) / 2.0)
	dic_modificador["Des"] = floor((des_final - 10.0) / 2.0)
	dic_modificador["Con"] = floor((con_final - 10.0) / 2.0)
	dic_modificador["Hon"] = floor((hon_final - 10.0) / 2.0)
	dic_modificador["San"] = floor((san_final - 10.0) / 2.0)
	dic_modificador["Sab"] = floor((sab_final - 10.0) / 2.0)
	dic_modificador["Int"] = floor((int_final - 10.0) / 2.0)
	dic_modificador["Car"] = floor((car_final - 10.0) / 2.0)
	
	get_node(Caminho_atributos + ATR + Caminho_modificadorAtr).set_text(str(dic_modificador[ATR]))

func _process(delta):
	pass


func _on_botao_retornar_pressed():
	pass # Replace with function body.


func _on_botao_raca_pressed():
	pass # Replace with function body.


func _on_botao_classe_pressed():
	pass # Replace with function body.


func _on_botao_antecedentes_pressed():
	pass # Replace with function body.


func _on_botao_personalidade_pressed():
	pass # Replace with function body.


func _on_botao_qua_def_pressed():
	pass # Replace with function body.


func _on_botao_pericia_pressed():
	pass # Replace with function body.


func _on_botao_talento_pressed():
	pass # Replace with function body.


func _on_botao_magi_coin_pressed():
	pass # Replace with function body.


func _on_botao_magi_vul_pressed():
	pass # Replace with function body.


func _on_botao_equip_pressed():
	pass # Replace with function body.


func _on_botao_esferas_pressed():
	pass # Replace with function body.


func _on_botao_qui_para_pressed():
	pass # Replace with function body.


func _on_botao_avancar_pressed():
	pass # Replace with function body.


func _on_botao_novo_personagem_pressed():
	pass # Replace with function body.


func _on_botao_carregar_personagem_pressed():
	pass # Replace with function body.


func _on_botao_apagar_personagem_pressed():
	pass # Replace with function body.


func _on_botao_salvar_personagem_pressed():
	pass # Replace with function body.


func _on_botao_exportar_pressed():
	pass # Replace with function body.
