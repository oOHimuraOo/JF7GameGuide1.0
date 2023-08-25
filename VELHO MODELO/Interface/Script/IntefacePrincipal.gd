extends Control

onready var Nodo_Pontos_Atributos = $InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/BoxDelimitadoraV21/PontosDisponiveisBG/PontosDisponiveis

var Caminho_atributos = "InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/"
var Caminho_mudancaEti = "/AtributoBG/BoxDelimitadoraV13/Mudanca"
var Caminho_botaoNeg = "/BotaoNeg"
var Caminho_rolarAtr = "/RolarAtr"
var Caminho_botaoPos = "/BotaoPos"
var Caminho_valor = "/AtributoBG/BoxDelimitadoraV13/Valor"

var Pontos_Disponiveis = 0
var Pontos_de_Atributos = 0

var for_final
var des_final
var con_final
var hon_final
var san_final
var sab_final
var int_final
var car_final

var for_adicional = 0
var des_adicional = 0
var con_adicional = 0
var hon_adicional = 0
var san_adicional = 0
var sab_adicional = 0
var int_adicional = 0
var car_adicional = 0

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
		button.connect("pressed", self, "Aumentar_pontos_de_atributo", [button.get_node("../").get_name()])
	for button in get_tree().get_nodes_in_group("BotaoNeg"):
		button.connect("pressed", self, "Diminuir_pontos_de_atributo", [button.get_node("../").get_name()])
	for button in get_tree().get_nodes_in_group("RolarAtributos"):
		button.connect("pressed", self, "Rolar_Atributo", [button.get_node("../").get_name()])
	for button in get_tree().get_nodes_in_group("BotaoPos"):
		button.connect("pressed", self, "_Custo_de_Atributo", [button.get_node("../").get_name()])
	for button in get_tree().get_nodes_in_group("BotaoNeg"):
		button.connect("pressed", self, "_Custo_de_Atributo", [button.get_node("../").get_name()])
	
func _on_BotaoMenuAvancar_pressed():
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH1/BoxDelimitadoraH2/BoxDelimitadorV2/Menu_Pg1").hide()
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH1/BoxDelimitadoraH2/BoxDelimitadorV2/Menu_Pg2").show()
	
	_Menu = 2
	
	if _Menu == 2:
		for button in get_tree().get_nodes_in_group("BotaoAvancar"):
			button.set_disabled(true)
			print(_Menu)
		for button in get_tree().get_nodes_in_group("BotaoRetornar"):
			button.set_disabled(false)
	else:
		pass

func _on_BotaoMenuRetornar_pressed():
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH1/BoxDelimitadoraH2/BoxDelimitadorV2/Menu_Pg1").show()
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH1/BoxDelimitadoraH2/BoxDelimitadorV2/Menu_Pg2").hide()
	
	_Menu = 1
	
	if _Menu == 1:
		for button in get_tree().get_nodes_in_group("BotaoRetornar"):
			button.set_disabled(true)
			_Menu = 2
		for button in get_tree().get_nodes_in_group("BotaoAvancar"):
			button.set_disabled(false)
	else:
		pass

func _on_Novo_Personagem_pressed():
	Pontos_de_Atributos = 27
	_ready()
	Resetar_inteface()
	for button in get_tree().get_nodes_in_group("RolarAtributos"):
		button.set_disabled(false)

func Resetar_inteface():
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/For/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Des/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Con/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Hon/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/San/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Sab/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Int/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Car/AtributoBG/BoxDelimitadoraV13/Mudanca").set_text("")
	
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/For/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Des/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Con/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Hon/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/San/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Sab/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Int/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Car/AtributoBG/BoxDelimitadoraV13/Valor").set_text("")
	
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/For/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Des/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Con/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Hon/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/San/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Sab/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Int/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Car/AtributoBG/BoxDelimitadoraV13/Bonif_Temp").set_text("")
	
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/For/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Des/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Con/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Hon/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/San/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Sab/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Int/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Car/AtributoBG/BoxDelimitadoraV13/Modificador").set_text("")
	
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/For/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Des/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Con/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Hon/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/San/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Sab/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Int/BotaoPos").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Car/BotaoPos").set_disabled(true)
	
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/For/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Des/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Con/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Hon/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/San/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Sab/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Int/BotaoNeg").set_disabled(true)
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH5/Car/BotaoNeg").set_disabled(true)
	
	for_adicional = 0
	des_adicional = 0
	con_adicional = 0
	hon_adicional = 0
	san_adicional = 0
	sab_adicional = 0
	int_adicional = 0
	car_adicional = 0
	
	for_final = 0
	des_final = 0
	con_final = 0
	hon_final = 0
	san_final = 0
	sab_final = 0
	int_final = 0
	car_final = 0

func Rolar_Atributo(rngatr):
	RNG.randomize()
	var Aleatorio = RNG.randi_range(7,12)
	get_node(Caminho_atributos + rngatr +  Caminho_valor).set_text(str(Aleatorio))
	set(rngatr.to_lower() + "_final", Aleatorio)
	Habilitar_Modificacao_Atributo(rngatr)

func Habilitar_Modificacao_Atributo(rngatr):
	get_node(Caminho_atributos + rngatr + Caminho_rolarAtr).set_disabled(true)
	get_node(Caminho_atributos + rngatr + Caminho_botaoPos).set_disabled(false)
	get_node(Caminho_atributos + rngatr + Caminho_botaoNeg).set_disabled(false)

func Aumentar_pontos_de_atributo(rngatr):
	if Pontos_Disponiveis >= Custo_de_atributo:
		set(rngatr.to_lower() + "_final", get(rngatr.to_lower() + "_final") + 1)
		get_node(Caminho_atributos + rngatr +  Caminho_valor).set_text(str(get(rngatr.to_lower() + "_final")))
		
		if get(rngatr.to_lower() + "_final") == 20:
			get_node(Caminho_atributos + rngatr + Caminho_botaoPos).set_disabled(true)
		
		if get(rngatr.to_lower() + "_final") > 5:
			get_node(Caminho_atributos + rngatr + Caminho_botaoNeg).set_disabled(false)
		
		if get(rngatr.to_lower() + "_final") < 8:
			_Custo_de_Atributo(rngatr)
			Pontos_Disponiveis -= (Custo_de_atributo * -1)
			
		
		if get(rngatr.to_lower() + "_final") > 8:
			_Custo_de_Atributo(rngatr)
			Pontos_Disponiveis -= Custo_de_atributo
			
	
		else:
			Custo_de_atributo = 0
			Pontos_Disponiveis -= Custo_de_atributo
			_Custo_de_Atributo(rngatr)
		
		Nodo_Pontos_Atributos.set_text(str(Pontos_Disponiveis))
	
		if Pontos_Disponiveis == 0:
			for button in get_tree().get_nodes_in_group("BotaoPos"):
				button.set_disabled(true)
	else:
		get_node(Caminho_atributos + rngatr + Caminho_botaoPos).set_disabled(true)
	print(Pontos_Disponiveis)
	print(Custo_de_atributo)

func Diminuir_pontos_de_atributo(rngatr):
	set(rngatr.to_lower() + "_final", get(rngatr.to_lower() + "_final") - 1)
	get_node(Caminho_atributos + rngatr +  Caminho_valor).set_text(str(get(rngatr.to_lower() + "_final")))
	
	if get(rngatr.to_lower() + "_final") == 5:
		get_node(Caminho_atributos + rngatr + Caminho_botaoNeg).set_disabled(true)
	
	else:
		get_node(Caminho_atributos + rngatr + Caminho_botaoNeg).set_disabled(false)
	
	if get(rngatr.to_lower() + "_final") < 20:
		get_node(Caminho_atributos + rngatr + Caminho_botaoPos).set_disabled(false)
		
	if get(rngatr.to_lower() + "_final") < 8:
		Pontos_Disponiveis += Custo_de_atributo
		_Custo_de_Atributo(rngatr)
		
	if get(rngatr.to_lower() + "_final") > 8:
		Pontos_Disponiveis += Custo_de_atributo
		_Custo_de_Atributo(rngatr)
	
	else:
		Custo_de_atributo = 0
		Pontos_Disponiveis += Custo_de_atributo
		_Custo_de_Atributo(rngatr)
		
	Nodo_Pontos_Atributos.set_text(str(Pontos_Disponiveis))

func _Custo_de_Atributo(rngatr):
	if get(rngatr.to_lower() + "_final") == 5:
		Custo_de_atributo = 3
		
	if get(rngatr.to_lower() + "_final") == 6:
		Custo_de_atributo = 2
		
	if get(rngatr.to_lower() + "_final") == 7:
		Custo_de_atributo = 1
		
	if get(rngatr.to_lower() + "_final") == 8:
		Custo_de_atributo = 0
		
	if get(rngatr.to_lower() + "_final") == 9:
		Custo_de_atributo = 1
		
	if get(rngatr.to_lower() + "_final") == 10:
		Custo_de_atributo = 1
		
	if get(rngatr.to_lower() + "_final") == 11:
		Custo_de_atributo = 2
		
	if get(rngatr.to_lower() + "_final") == 12:
		Custo_de_atributo = 2
		
	if get(rngatr.to_lower() + "_final") == 13:
		Custo_de_atributo = 3
		
	if get(rngatr.to_lower() + "_final") == 14:
		Custo_de_atributo = 3
		
	if get(rngatr.to_lower() + "_final") == 15:
		Custo_de_atributo = 4
		
	if get(rngatr.to_lower() + "_final") == 16:
		Custo_de_atributo = 4
		
	if get(rngatr.to_lower() + "_final") == 17:
		Custo_de_atributo = 5
		
	if get(rngatr.to_lower() + "_final") == 18:
		Custo_de_atributo = 5
		
	if get(rngatr.to_lower() + "_final") == 19:
		Custo_de_atributo = 6
		
	if get(rngatr.to_lower() + "_final") == 20:
		Custo_de_atributo = 6

func _on_Raca_pressed():
	get_node("InterfaceBG/BoxDelimitadoraV1/BoxDelimitadoraH4/BoxDelimitadoraV12/BoxDelimitadoraH6/InfoBoxBG/NinePatchRect/Racas").show()
