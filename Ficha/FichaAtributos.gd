extends Control

onready var Nodo_FichaAtributos_Pontos = $MargemEXT/MargemINT/MargemAtrExt/Atributos/Pontos/Label

var Caminho_Atributos = "MargemEXT/MargemINT/MargemAtrExt/Atributos/"
var Mudanca_Label = "/AtributosBG/HBoxContainer/Mudanca"
var Bot_Neg = "/AtributosBG/BotaoNeg"
var Mudanca_Label_Neg = "/AtributosBG/HBoxContainer/Mudanca"
var Atributo_Final = "/AtributosBG/Dados"
var BotaoPos_Final = "/AtributosBG/BotaoPos"
var Atributo_Label = "/AtributosBG/HBoxContainer/Valor"

var Pontos_Disponiveis 
var for_adicional = 0
var des_adicional = 0
var con_adicional = 0
var hon_adicional = 0
var san_adicional = 0
var sab_adicional = 0
var int_adicional = 0
var car_adicional = 0

var pontos_de_atributos = 27
var for_final
var des_final
var con_final
var hon_final
var san_final
var sab_final
var int_final
var car_final

var RNG = RandomNumberGenerator.new()

var Atributos_Custo = 0

func Esconder_comentarios1():
#### \/ Versão 1.0 30% funcional \/ #####
#func AtributoAleatorio():				#
#	RNG.randomize()						#
#	for_final = RNG.randi_range(7,12)	#
#	des_final = RNG.randi_range(7,12)	#
#	con_final = RNG.randi_range(7,12)	#
#	hon_final = RNG.randi_range(7,12)	#
#	san_final = RNG.randi_range(7,12)	#
#	sab_final = RNG.randi_range(7,12)	#
#	int_final = RNG.randi_range(7,12)	#
#	car_final = RNG.randi_range(7,12)	#
#### /\ Versão 1.0 30% funcional /\ #####
# essa função só serviu para que eu en- #
# tendesse como funcionava o RNG.       #
#########################################
	pass

func Atributo_Enabler(RngAtr):
	get_node(Caminho_Atributos + RngAtr + Atributo_Final).set_disabled(true)
	get_node(Caminho_Atributos + RngAtr + BotaoPos_Final).set_disabled(false)

func Rolagem_de_atributo(RngAtr):
	RNG.randomize()
	var Aleatorio = RNG.randi_range(7,12)
	get_node(Caminho_Atributos + RngAtr + Atributo_Label).set_text(str(Aleatorio))
	set(RngAtr.to_lower() + "_final", Aleatorio)
	Atributo_Enabler(RngAtr)
	
	## \/ versão 1.0. Deselegante e Funcional \/ ##
		#for button in get_tree().get_nodes_in_group("RolarAtributo1"):
		#button.connect("pressed", self, "CarregarAtributos1")
		#if for_final == null:
		#	button.set_disabled(false)
		#	RNG.randomize()
		#	for_final = RNG.randi_range(7,12)
		
	#if des_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo2"):
			#button.connect("pressed", self, "CarregarAtributos2")
			#button.set_disabled(false)
			#RNG.randomize()
			#des_final = RNG.randi_range(7,12)
		
	#if con_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo3"):
			#button.connect("pressed", self, "CarregarAtributos3")
			#button.set_disabled(false)
			#RNG.randomize()
			#con_final = RNG.randi_range(7,12)
			
	#if hon_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo4"):
			#button.connect("pressed", self, "CarregarAtributos4")
			#button.set_disabled(false)
			#RNG.randomize()
			#hon_final = RNG.randi_range(7,12)
			
	#if san_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo5"):
			#button.connect("pressed", self, "CarregarAtributos5")
			#button.set_disabled(false)
			#RNG.randomize()
			#san_final = RNG.randi_range(7,12)
			
	#if sab_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo6"):
		#	button.connect("pressed", self, "CarregarAtributos6")
		#	button.set_disabled(false)
		#	RNG.randomize()
		#	sab_final = RNG.randi_range(7,12)
			
	#if int_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo7"):
		#	button.connect("pressed", self, "CarregarAtributos7")
		#	button.set_disabled(false)
		#	RNG.randomize()
		#	int_final = RNG.randi_range(7,12)
			
	#if car_final == null:
		#for button in get_tree().get_nodes_in_group("RolarAtributo8"):
		#	button.connect("pressed", self, "CarregarAtributos8")
		#	button.set_disabled(false)
		#	RNG.randomize()
		#	car_final = RNG.randi_range(7,12)

#	if (for_final != null) and (des_final != null) and (con_final != null) and (hon_final != null) and (san_final != null) and (sab_final != null) and (int_final != null) and (car_final != null):
#		pontos_de_atributos = 27
#	else:
#		pontos_de_atributos = 0
	## /\ versão 1.0. Deselegante e Funcional /\ ##
	# Essa versão funcionava, ela não era bonita  #
	# E era impossivel de resolver os proximos    #
	# passos do codigo com ela. Mas ela era com-  #
	# pletamente funcional.                       #
	###############################################

func _ready():
	
	## \/ incialização de funções de forma obsoleta \/ ##
	#Rolagem_de_atributo()								#
	#AtributoAleatorio()								#
	#CarregarAtributos()								#
	## /\ incialização de funções de forma obsoleta /\ ##
	
	Pontos_Disponiveis = pontos_de_atributos
	Nodo_FichaAtributos_Pontos.set_text(str(Pontos_Disponiveis) + " Pontos")
	if Pontos_Disponiveis == 0:
		pass
	else:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(true)
	for button in get_tree().get_nodes_in_group("BotaoPos"):
		button.connect("pressed", self, "AumenteAtributo", [button.get_node("../..").get_name()])
	for button in get_tree().get_nodes_in_group("BotaoNeg"):
		button.connect("pressed", self, "DiminuaAtributo", [button.get_node("../..").get_name()])
	for button in get_tree().get_nodes_in_group("Dados"):
		button.connect("pressed", self, "Rolagem_de_atributo", [button.get_node("../..").get_name()])
	#for button in get_tree().get_nodes_in_group("BotaoPos"):
	#	button.connect("pressed", self, "custo_de_atributos", [button.get_node("../..").get_name()])
	

func CarregarAtributos():
	get_node(Caminho_Atributos + "/For/AtributosBG/HBoxContainer/Valor").set_text(str(for_final))
	get_node(Caminho_Atributos + "/Des/AtributosBG/HBoxContainer/Valor").set_text(str(des_final))
	get_node(Caminho_Atributos + "/Con/AtributosBG/HBoxContainer/Valor").set_text(str(con_final))
	get_node(Caminho_Atributos + "/Hon/AtributosBG/HBoxContainer/Valor").set_text(str(hon_final))
	get_node(Caminho_Atributos + "/San/AtributosBG/HBoxContainer/Valor").set_text(str(san_final))
	get_node(Caminho_Atributos + "/Sab/AtributosBG/HBoxContainer/Valor").set_text(str(sab_final))
	get_node(Caminho_Atributos + "/Int/AtributosBG/HBoxContainer/Valor").set_text(str(int_final))
	get_node(Caminho_Atributos + "/Car/AtributosBG/HBoxContainer/Valor").set_text(str(car_final))

func Esconder_comentarios2():
################################################################	
## \/ Armengue para solucionar problema de individualidade \/ ##
################################################################
#func CarregarAtributos1():
#	get_node(Caminho_Atributos + "/For/AtributosBG/HBoxContainer/Valor").set_text(str(for_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo1"):
#		button.set_disabled(true)
	
#func CarregarAtributos2():
#	get_node(Caminho_Atributos + "/Des/AtributosBG/HBoxContainer/Valor").set_text(str(des_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo2"):
#		button.set_disabled(true)

#func CarregarAtributos3():
#	get_node(Caminho_Atributos + "/Con/AtributosBG/HBoxContainer/Valor").set_text(str(con_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo3"):
#		button.set_disabled(true)
#		
#func CarregarAtributos4():
#	get_node(Caminho_Atributos + "/Hon/AtributosBG/HBoxContainer/Valor").set_text(str(hon_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo4"):
#		button.set_disabled(true)
#		
#func CarregarAtributos5():
#	get_node(Caminho_Atributos + "/San/AtributosBG/HBoxContainer/Valor").set_text(str(san_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo5"):
#		button.set_disabled(true)
#		
#func CarregarAtributos6():
#	get_node(Caminho_Atributos + "/Sab/AtributosBG/HBoxContainer/Valor").set_text(str(sab_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo6"):
#		button.set_disabled(true)
#		
#func CarregarAtributos7():
#	get_node(Caminho_Atributos + "/Int/AtributosBG/HBoxContainer/Valor").set_text(str(int_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo7"):
#		button.set_disabled(true)
#		
#func CarregarAtributos8():
#	get_node(Caminho_Atributos + "/Car/AtributosBG/HBoxContainer/Valor").set_text(str(car_final))
#	for button in get_tree().get_nodes_in_group("RolarAtributo8"):
#		button.set_disabled(true)
#
################################################################
## /\ Armengue para solucionar problema de individualidade /\ ##
################################################################
	pass

func AumenteAtributo(stat):
	set(stat.to_lower()+"_adicional", get(stat.to_lower() + "_adicional") + 1)
	get_node(Caminho_Atributos + stat + Mudanca_Label).set_text("+" + str(get(stat.to_lower() + "_adicional")) + " ")
	get_node(Caminho_Atributos + stat + Bot_Neg).set_disabled(false)
	
	#custo_de_atributos(stat)
	
	Pontos_Disponiveis -= 1
	#Pontos_Disponiveis -= Atributos_Custo
	
	Nodo_FichaAtributos_Pontos.set_text(str(Pontos_Disponiveis) + " Pontos")
	
	if Pontos_Disponiveis == 0:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(true)
			

func DiminuaAtributo(stat):
	set(stat.to_lower() + "_adicional", get(stat.to_lower() + "_adicional") - 1)
	if get(stat.to_lower() + "_adicional") == 0:
		get_node(Caminho_Atributos + stat + Bot_Neg).set_disabled(true)
		
		get_node(Caminho_Atributos + stat + Mudanca_Label_Neg).set_text("")
			
	else:
		get_node(Caminho_Atributos + stat + Mudanca_Label_Neg).set_text("+" + str(get(stat.to_lower() + "_adicional"))+ " ")
			
	#Pontos_Disponiveis += Atributos_Custo
	Pontos_Disponiveis += 1
			
	Nodo_FichaAtributos_Pontos.set_text(str(Pontos_Disponiveis) + " Pontos")
			
	## \/ versão 0.1 tem erro de logica na função \/ ##
	#if get_node(Caminho_Atributos + stat + Atributo_Label).get_text() and Pontos_Disponiveis != 0:
	#	print(Pontos_Disponiveis)
	#	print(get_node(Caminho_Atributos + stat + Atributo_Label).get_text())
	#	get_node(Caminho_Atributos + stat + Atributo_Final).set_disabled(false)
	#else:
	#	get_node(Caminho_Atributos + stat + Atributo_Final).set_disabled(true)
	## /\ versão 0.1 tem erro de logica na função /\ ##
	## Essa versão é muito mais elegante do que as   ##
	## suas versões posteriores. Porem o erro de lo- ##
	## gica na função if venceu de mim.              ##
	###################################################
	
	## \/ versão 1.0 funcionando com um erro \/ ##
	#if get_node(Caminho_Atributos + stat + Atributo_Label).get_text() and Pontos_Disponiveis != 0:
	#	for button in get_tree().get_nodes_in_group("BotaoPos"):
	#		button.set_disabled(false)
	#else:
	#	for button in get_tree().get_nodes_in_group("BotaoPos"):
	#		button.set_disabled(true)
	## /\ versão 1.0 funcionando com um erro /\ ##
	## Funcionou, porem gerou um outro erro que ##
	## pareceu ser mais dificil de resolver do  ##
	## que a da versão anterior.                ##
	##############################################
	
	## \/ versão 1.1 primeiro teste \/ ##
	#if get_node(Caminho_Atributos + "For" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "Des" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "Con" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "Hon" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "San" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "Sab" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "Int" + Atributo_Label).get_text() or get_node(Caminho_Atributos + "Car" + Atributo_Label).get_text() and Pontos_Disponiveis != 0:
	#	for button in get_tree().get_nodes_in_group("BotaoPos"):
	#		button.set_disabled(false)
	#else:
	#	for button in get_tree().get_nodes_in_group("BotaoPos"):
	#		button.set_disabled(true)
	## /\ versão 1.1 primeiro teste /\ ##
	## Apresentava um erro de sintaxe  ##
	#####################################
	
	## \/ versão 1.2 primeiro teste \/ ##
	if get_node(Caminho_Atributos + "For" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Des" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Con" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Hon" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "San" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Sab" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Int" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Car" + Atributo_Label).get_text() and Pontos_Disponiveis != 0:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(false)
	else:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(true)
	## /\ versão 1.2 primeiro teste /\ ##
	## versão 1.2 ainda apresenta um   ##
	## erro. Afinal quando subtraimos  ##
	## o atributo de um valor rolado   ##
	## o botão não é ativado novamente ##
	## apenas para aquele valor. Porem ##
	## se rolarmos todos os atributos  ##
	## os botões são reativados.       ##
	#####################################

func _on_Confirmar_pressed():
	if for_adicional + des_adicional + con_adicional + hon_adicional + san_adicional + sab_adicional + int_adicional + car_adicional == 0:
		print("Nada para confirmar, adicione um balão de texto aqui se desejar")
	else:
		pontos_de_atributos = Pontos_Disponiveis
		for_final += for_adicional
		des_final += des_adicional
		con_final += con_adicional
		hon_final += hon_adicional
		san_final += san_adicional
		sab_final += sab_adicional
		int_final += int_adicional
		car_final += car_adicional
		
		for_adicional = 0
		des_adicional = 0
		con_adicional = 0
		hon_adicional = 0
		san_adicional = 0
		sab_adicional = 0
		int_adicional = 0
		car_adicional = 0
		
		CarregarAtributos()
######## \/ Armemgue 1.0 \/	########
#		CarregarAtributos1()	   #
#		CarregarAtributos2()	   #
#		CarregarAtributos3()	   #
#		CarregarAtributos4()	   #
#		CarregarAtributos5()	   #
#		CarregarAtributos6()	   #
#		CarregarAtributos7()	   #
#		CarregarAtributos8()	   #
######## /\ Armemgue 1.0 /\	########
# Esse armengue existiu para resol-#
# ver um problema que era gerado   #
# por falta de individualidade no  #
# codigo matriz.                   #
####################################

		for button in get_tree().get_nodes_in_group("BotaoNeg"):
			button.set_disabled(true)
		for button in get_tree().get_nodes_in_group("EtiquetaMudanca"):
			button.set_text("")

func Esconder_comentarios3():
############################ \/ esse é o meu proximo problema \/ ############################
#func Custo_de_Atributos():																	#
#	O que eu quero?																			#
#	Quero que toda vez que um jogador compre um ponto de atributo novo,						#
#	 esse ponto de atributo tenha um custo diferente#										#
#	Como fazer?																				#
#	Se botão "+" for pressionado então calcular "pontos disponiveis" - "atibutos_custo"		#
#	enquanto "valor_Atributos" = x então "Atributos_custo" = y								#
#	Se "Pontos_disponiveis" < "Atributos_Custo" então Desativar Botão "+"					#
#	se "Valor_Atributos" != null então executa a função.									#
#	se o "valor_Atributos" =< 4 então botão "-" desativa									#
############################ /\ esse é o meu proximo problema /\ ############################
	pass
#func custo_de_atributos(stat):
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 5:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 3
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 6:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 2
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 7:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 1
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 8:
#			Atributos_Custo = 0
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 9:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 1
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 10:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 1
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 11:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 2
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 12:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 2
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 13:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 3
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 14:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 3
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 15:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 4
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 16:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 4
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 17:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 5
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 18:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 5
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 19:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 6
#	if (get(stat.to_lower() + "_final") + (get(stat.to_lower() + "_adicional"))) == 20:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			Atributos_Custo = 6
#	if get(stat.to_lower() + "_final") >= 20:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			for button in get_tree().get_nodes_in_group("BotaoPos"):
#				button.set_disabled(true)
#	else:
#		for button in get_tree().get_nodes_in_group("BotaoPos"):
#			button.set_disabled(false)
#	if get(stat.to_lower() + "_final") <= 5:
#		if Pontos_Disponiveis >= Atributos_Custo:
#			for button in get_tree().get_nodes_in_group("BotaoNeg"):
#				button.set_disabled(true)
#	else:
#		for button in get_tree().get_nodes_in_group("BotaoNeg"):
#			button.set_disabled(false)
#			

func _on_Talentos_pressed():
	get_node("MargemEXT/MargemINT/Talentos").show()
	get_node("MargemEXT/MargemINT/MargemAtrExt").hide()

func _on_Atributos_pressed():
	get_node("MargemEXT/MargemINT/Talentos").hide()
	get_node("MargemEXT/MargemINT/MargemAtrExt").show()
