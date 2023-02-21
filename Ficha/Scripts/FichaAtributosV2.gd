extends Control

###################################################################
## variavel que representa o Caminho fixo até o Label que        ##
## escreve a quantidade de pontos disponiveis para distribuição  ##                           ##
############################\/#########\/##########################

onready var Nodo_AtrPont = $MargemEXT/MargemINT/MargemAtrExt/Atributos/Pontos/Label

###################################################################
## Variaveis que represetam fragmentos de caminho para automati- ##
## zar mudanças de caminho dentro de funções.                    ##
############################\/#########\/##########################

var Caminho_Atributos = "MargemEXT/MargemINT/MargemAtrExt/Atributos/"
var Mudanca_Label = "/AtributosBG/HBoxContainer/Mudanca"
var Bot_Neg = "/AtributosBG/BotaoNeg"
var Mudanca_Label_Neg = "/AtributosBG/HBoxContainer/Mudanca"
var Atributo_Final = "/AtributosBG/Dados"
var BotaoPos_Final = "/AtributosBG/BotaoPos"
var Atributo_Label = "/AtributosBG/HBoxContainer/Valor"

###################################################################
## variaveis que armazenam valores inteiros que auxiliam no cal- ##
## cular as mudanças de atributos. Custo, Valor adicionado,      ##
## pontos de atributos e pontos extras.                          ##
############################\/#########\/##########################

var Pontos_Disponiveis 
var pontos_de_atributos = 27
var Atributos_Custo = 0
var for_adicional = 0
var des_adicional = 0
var con_adicional = 0
var hon_adicional = 0
var san_adicional = 0
var sab_adicional = 0
var int_adicional = 0
var car_adicional = 0

###################################################################
## Variaveis que armazenam valores inteiros que representam o    ##
## valor dos atributos.                                          ##
############################\/#########\/##########################

var for_final
var des_final
var con_final
var hon_final
var san_final
var sab_final
var int_final
var car_final

###################################################################
## variavel que obtem um numero aleatorio baseado na seed do     ##
## programa. é atravez dessa variavel que iremos gerar numeros   ##
## aleatorios, sempre que for necessario.                        ##
############################\/#########\/##########################

var RNG = RandomNumberGenerator.new()

###################### \/ func _ready \/ ##########################
## A primeira função é a Ready, ela irá servir para enviar os    ##
## sinais que ativam as outras funções sempre que um determinado ##
## botão for pressionado. essa função é a responsavel por geren- ##
## ciar e ativar todas as outras funções.                        ##
###################### \/ func _ready \/ ##########################

func _ready():
	Pontos_Disponiveis = pontos_de_atributos
	Nodo_AtrPont.set_text(str(Pontos_Disponiveis) + " Pontos")
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

################## \/ func Rolagem_de_atributo \/ #################
## Essa função serve para permitir que o jogador realize a rola- ##
## gem de cada um dos atributos.                                 ##
################## \/ func Rolagem_de_atributo \/ #################

func Rolagem_de_atributo(RngAtr):
	RNG.randomize()
	var Aleatorio = RNG.randi_range(7,12)
	get_node(Caminho_Atributos + RngAtr + Atributo_Label).set_text(str(Aleatorio))
	set(RngAtr.to_lower() + "_final", Aleatorio)
	Atributo_Enabler(RngAtr)
	
################## \/ func Atributo_Enabler \/ ####################
## Essa função serve para ativar e desativar os botões de aumen- ##
## to de atributo, para possibilitar ou impossibilitar que o     ##
## usuario consiga alterar seus atributos.                       ##
################## \/ func Atributo_Enabler \/ ####################

func Atributo_Enabler(RngAtr):
	get_node(Caminho_Atributos + RngAtr + Atributo_Final).set_disabled(true)
	get_node(Caminho_Atributos + RngAtr + BotaoPos_Final).set_disabled(false)
	
################## \/ func AumenteAtributo \/ #####################
## A função Aumente atributo serve para aumentar o valor de um   ##
## atributo especifico.                                          ##
################## \/ func AumenteAtributo \/ #####################

func AumenteAtributo(Atr):
	set(Atr.to_lower()+"_adicional", get(Atr.to_lower() + "_adicional") + 1)
	get_node(Caminho_Atributos + Atr + Mudanca_Label).set_text("+" + str(get(Atr.to_lower() + "_adicional")) + " ")
	get_node(Caminho_Atributos + Atr + Bot_Neg).set_disabled(false)
	
	Pontos_Disponiveis -= 1
	
	Nodo_AtrPont.set_text(str(Pontos_Disponiveis) + " Pontos")
	
	if Pontos_Disponiveis == 0:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(true)

################## \/ func DiminuaAtributo \/ #####################
## A função Aumente atributo serve para diminuir o valor de um   ##
## atributo especifico.                                          ##
################## \/ func DiminuaAtributo \/ #####################

func DiminuaAtributo(Atr):
	set(Atr.to_lower() + "_adicional", get(Atr.to_lower() + "_adicional") - 1)
	if get(Atr.to_lower() + "_adicional") == 0:
		get_node(Caminho_Atributos + Atr + Bot_Neg).set_disabled(true)
		
		get_node(Caminho_Atributos + Atr + Mudanca_Label_Neg).set_text("")
			
	else:
		get_node(Caminho_Atributos + Atr + Mudanca_Label_Neg).set_text("+" + str(get(Atr.to_lower() + "_adicional"))+ " ")
		
	Pontos_Disponiveis += 1
	
	Nodo_AtrPont.set_text(str(Pontos_Disponiveis) + " Pontos")
	
	if get_node(Caminho_Atributos + "For" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Des" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Con" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Hon" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "San" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Sab" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Int" + Atributo_Label).get_text() and get_node(Caminho_Atributos + "Car" + Atributo_Label).get_text() and Pontos_Disponiveis != 0:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(false)
	else:
		for button in get_tree().get_nodes_in_group("BotaoPos"):
			button.set_disabled(true)
			
################# \/ func Carregar_Atributos \/ ###################
## Essa função serve para atualizar o valor descrito no label    ##
## com o valor dentro da variavel correspondente.                ##
################# \/ func Carregar_Atributos \/ ###################

func Carregar_Atributos():
	get_node(Caminho_Atributos + "For" + Atributo_Label).set_text(str(for_final))
	get_node(Caminho_Atributos + "Des" + Atributo_Label).set_text(str(des_final))
	get_node(Caminho_Atributos + "Con" + Atributo_Label).set_text(str(con_final))
	get_node(Caminho_Atributos + "Hon" + Atributo_Label).set_text(str(hon_final))
	get_node(Caminho_Atributos + "San" + Atributo_Label).set_text(str(san_final))
	get_node(Caminho_Atributos + "Sab" + Atributo_Label).set_text(str(sab_final))
	get_node(Caminho_Atributos + "Int" + Atributo_Label).set_text(str(int_final))
	get_node(Caminho_Atributos + "Car" + Atributo_Label).set_text(str(car_final))
	
################# \/ func _on_Confirmar_pressed \/ ################
## Essa função serve para atualizar os valores temporarios e     ##
## finais quando o botão confirmar for pressionado.              ##
################# \/ func _on_Confirmar_pressed \/ ################

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
		
		Carregar_Atributos()
		
		for button in get_tree().get_nodes_in_group("BotaoNeg"):
			button.set_disabled(true)
		for button in get_tree().get_nodes_in_group("EtiquetaMudanca"):
			button.set_text("")

################# \/ Observações e planejamento \/ ################
## O codigo até aqui funciona. Porem algumas modificações seriam ##
## ideais para aperfeiçoar o codigo e torna-lo de fato funcional ##
## para o sistema de RPG Juizo Final.                            ##
##                                                               ##
## Modificações: !!2%!!                                          ##
## 1 -> Distribuição de pontos de atributo: !!37%!!              ##
##	 1.1 -> A primeira etapa consiste em um valor aleatorio que  ##
## varia entre 7 e 12).!ok!                                      ##
##	 1.2 -> A segunda etapa está na customização dos pontos de   ##
## atributo, que é feita atraves do consumo de pontos de atri-   ##
## buto, porem cada aumento no valor do atributo irá consumir ou ##
## gerar uma pré-determinada quantidade de pontos                ##
## de atributo.!50%!                                             ##
##	 1.3 -> A terceira etapa está na bonificação no valor de     ##
## atributo levando em consideração a raça escolhida pelo usua-  ##
## rio. !null!                                                   ##
##	 1.4 -> Bloquear a compra de um atributo que já tenha atin-  ##
## gido 20 no valor e bloquear a venda de um atributo que já     ##
## tenha atingido 5 no valor. !null!							 ##
##																 ##
## 2 -> Seleção de raça: !null!                                  ##
##	 2.1 -> desenvolver uma forma de proporcionar ao usuario a   ##
## obter informações sobre cada uma das raças.                   ##
##	 2.2 -> desenvolver uma forma de proporcionar ao usuario a   ##
## possibilidade de escolher uma das raças.                      ##
##	 2.3 -> Desenvolver uma forma de proporcionar ao usuario a   ##
## possibilidade de escolher as caracteristicas raciais          ##
##	 2.4 -> desenvolver uma forma de aplicar todas as bonifica-  ##
## ções de raça em segundo plano.								 ##
##																 ##
## 3 -> Seleção de Nivel: !null!                                 ##
##	 3.1 -> Desenvolver uma forma de forçar o usuario a informar ##
## o nivel do personagem na hora da criação da ficha. 0 a 20     ##
##	 3.2 -> Desenvolver em segundo plano todas as caracteristi-  ##
## cas automaticas referentes ao nivel do personagem.            ##
##																 ##
## 4 -> Seleção de Classe: !null!                                ##
##	 4.1 -> Desenvolver uma forma de proporcionar ao usuario a   ##
## obter informações sobre cada uma das classes.                 ##
##	 4.2 -> desenvolver uma forma de aplicar todas bonificações  ##
## de classe em segundo plano.                                   ##
##																 ##
## 5 -> Pontos de vida: !null!                                   ##
##	 5.1 -> desenvolver uma forma do usuario conseguir rolar os  ##
## pontos de vida que estejam disponiveis a ser rolados.         ##
##																 ##
## 6 -> Seleção de qualidades e defeitos: !null!                 ##
##	 6.1 -> Desenvolver uma forma de revelar informações sobre   ##
## as qualidades e os defeitos disponiveis.                      ##
##	 6.2 -> Desenvolver uma forma de contabilizar a quantidade   ##
## de pontos. Onde comprar defeitos gera ponto e comprar quali-  ##
## dade gasta pontos.                                            ##
##	 6.3 -> Desenvolver uma forma de forçar o usuario a zerar a  ##
## piscina de pontos antes de passar para proxima etapa.         ##
##																 ##
## 7 -> Seleção de arquetipos de personalidade: !null!           ##
##	 7.1 -> Desenvolver uma forma de revelar as informações de   ##
## cada um dos asquetipos de personalidade.                      ##
##	 7.2 -> Forçar o usuario a escolher dois arquetipos.         ##
##																 ##
## 8 -> Criação de antecedente: !null!                           ##
##	 8.1 -> Auxiliar o usuario no desenvolvimento dos anteceden- ##
## tes de seu personagem. Incluir todas as informções unicas do  ##
## personagem (nome, divindade, tamanho e etc).                  ##
##	 8.2 -> Desenvolver uma forma de possibilitar o usuario a    ##
## escolher duas proficiencias e dois itens mundanos.            ##
##																 ##
## 9 -> proficiencias: !null!									 ##
##	 9.1 -> desenvolver uma forma de mostrar quantas proficien-  ##
## cias ele pode escolher dentre as pericias disponiveis.        ##
##	 9.2 -> Calcular em segundo plano todos os valores de cada   ##
## das pericias e de cada uma das pericias passivas.			 ##
##																 ##
## 10 -> Talentos: !null!                                        ##
##	 10.1 -> Desenvolver uma forma de forçar o usuario a esco-   ##
## lher dentre uma das arvores de talentos disponiveis.          ##
##	 10.2 -> desenvolver uma forma de mostrar as informações     ##
## sobre cada um dos talentos.                                   ##
##	 10.3 -> permitir que o usuario compre os talentos desde que ##
## ele possua ponto de talento o suficiente.					 ##
##																 ##
## 11 -> Desperto ou Adormecido, Esfera e magias vulgares: !null!##
##	 11.1 -> desenvolver uma forma de explicar para o usuario a  ##
## diferença entre desperto e adormecido.                        ##
##	 11.2 -> desenvolver uma forma para que o usuario escolha    ##
## entre adormecido e desperto.                                  ##
##	 11.3 -> Desenvolver uma forma de revelar as informações     ##
## sobre cada uma das esferas.									 ##
##	 11.4 -> permitir que o usuario escolha uma das esferas para ##
## ser sua.                                                      ##
##	 11.5 -> desenvolver uma forma de explicar o conceito de ma- ##
## gia vulgar e como utilizar elas.								 ##
##																 ##
## 12 -> Magias coincidentes: !null! 							 ##
##	 12.1 -> desenvolver uma forma de mostrar a informação sobre ##
## cada uma das magias disponiveis de acordo com a classe esco-  ##
## lhida														 ##
##	 12.2 -> permitir que o usuario escolha entre as magias de   ##
## sua classe.                                                   ##
##																 ##
## 13 -> Classe de prestigio: !null!                             ##
##	 13.1 -> desenvolver uma forma de perguntar para o usuario   ##
## se seu personagem irá possuir classe de prestigio.			 ##
##	 13.2 -> se ele possuir uma classe de prestigio desenvolver  ##
## uma forma de informar as caracteristicas de cada uma delas    ##
##	 13.3 -> desenvolver uma forma de permitir que o personagem  ##
## escolha entre as classes de prestigio.                        ##
##																 ##
## 14 -> equipamentos: !null!                                    ##
##	 14.1 -> desenvolver uma forma de revelar as informações so- ##
## bre os equipamentos                                           ##
##	 14.2 -> permitir que o usuario compre os equipamentos dese- ##
## jados desde que ele possua dinheiro para isso.                ##
##																 ##
## 15 -> Confirmar criação: !null!                               ##
##	 15.1 -> modificar a função do botão confirmar para confir-  ##
## mação de conclusão de ficha.                                  ##
##   15.2 -> Desenvolver uma forma de organizar as informações   ##
## obtidas durante a criação e transformar em um painel facil de ##
## ler e consultar. Contendo todas as caracteristicas de perso-  ## 
## nagem.														 ##
## 																 ##
## 16 -> Exportação: !null!										 ##
##	 16.1 -> bolar uma forma de exportar o arquivo em um formato ##
## de facil leitura durante para usuario. .jpg ou .pdf são os    ##
## ideais.
################# /\ Observações e planejamento /\ ################









################# \/ func _on_Talentos_pressed \/ #################
## essa função serve para carregar a tela de talentos na ficha   ##
## do personagem. ela funciona escondendo a informação dos atri  ##
## butos e revelando as informações dos talentos.                ##
################# \/ func _on_Talentos_pressed \/ #################

func _on_Talentos_pressed():
	get_node("MargemEXT/MargemINT/Talentos").show()
	get_node("MargemEXT/MargemINT/MargemAtrExt").hide()
	
################# \/ func _on_Atributos_pressed \/ ################
## essa função serve para carregar a tela de atributos na ficha  ##
## do personagem. ela funciona escondendo a informação dos Talen-##
## tos e revelando as informações dos atributos.                 ##
################# \/ func _on_Atributos_pressed \/ ################

func _on_Atributos_pressed():
	get_node("MargemEXT/MargemINT/Talentos").show()
	get_node("MargemEXT/MargemINT/MargemAtrExt").hide()	
