extends Control

@onready var etiqueta_pontos_disponiveis = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/HBoxContainer/PontosDisponiveisBacground/EtiquetaPontosDisponiveis
@onready var personagem_imagem = $InterfaceBacground/InterfaceContainer/PersonagemMenu/PersonagemBacground/PersonagemImagem
@onready var resetar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/HBoxContainer/ResetarAtributo
@onready var botao_novo_personagem = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/HBoxContainer/BotaoNovoPersonagem
@onready var botao_carregar_personagem = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/HBoxContainer/BotaoCarregarPersonagem
@onready var botao_apagar_personagem = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/HBoxContainer/BotaoApagarPersonagem
@onready var botao_salvar_personagem = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/HBoxContainer/BotaoSalvarPersonagem
@onready var botao_exportar = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/HBoxContainer/BotaoExportar
@onready var botao_raca = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1/RacaClasse/Raca/BotaoRaca
@onready var botao_classe = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1/RacaClasse/Classe/BotaoClasse
@onready var botao_antecedentes = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1/AntecedentesPersonalidade/Antecedentes/BotaoAntecedentes
@onready var botao_personalidade = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1/AntecedentesPersonalidade/Personalidade/BotaoPersonalidade
@onready var botao_talento = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2/TalentoMagiCoin/Talento/BotaoTalento
@onready var botao_magi_coin = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2/TalentoMagiCoin/MagiCoin/BotaoMagiCoin
@onready var botao_magi_vul = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2/MagiVulEquip/MagiVul/BotaoMagiVul
@onready var botao_equip = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2/MagiVulEquip/Equip/BotaoEquip
@onready var botao_esferas = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2/EsferasQuiPara/Esferas/BotaoEsferas
@onready var botao_qui_para = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2/EsferasQuiPara/QuiPara/BotaoQuiPara
@onready var botao_qua_def = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1/QuaDefPericia/QuaDef/BotaoQuaDef
@onready var botao_pericia = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1/QuaDefPericia/Pericia/BotaoPericia
@onready var interface_raca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceRaca
@onready var interface_personalidade = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfacePersonalidade
@onready var qualidade_e_defeito = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/QualidadeEDefeito
@onready var antecedentes = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/Antecedentes
@onready var interface_esferas = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceEsferas
@onready var interface_classe = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceClasse
@onready var interface_pericia = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfacePericia
@onready var interface_equipamentos = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceEquipamentos
@onready var interface_talento = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceTalento
@onready var interface_magia_vulgar = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceMagiaVulgar
@onready var interface_quintessencia_paradoxo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceQuintessenciaParadoxo
@onready var interface_magia_coincidente = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Infobox/InfoboxBacground/Infobox/InterfaceMagiaCoincidente

@onready var for_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/AtributoBackground/AtributoContainer/Mudanca
@onready var for_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/AtributoBackground/AtributoContainer/Valor
@onready var for_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var for_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var for_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/BotaoDiminuirAtr
@onready var for_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/BotaoAumentarAtributo
@onready var for_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/For/BotaoRolarAtributo

@onready var des_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/AtributoBackground/AtributoContainer/Mudanca
@onready var des_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/AtributoBackground/AtributoContainer/Valor
@onready var des_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var des_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var des_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/BotaoDiminuirAtr
@onready var des_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/BotaoAumentarAtributo
@onready var des_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Des/BotaoRolarAtributo

@onready var con_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/AtributoBackground/AtributoContainer/Mudanca
@onready var con_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/AtributoBackground/AtributoContainer/Valor
@onready var con_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var con_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var con_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/BotaoDiminuirAtr
@onready var con_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/BotaoAumentarAtributo
@onready var con_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Con/BotaoRolarAtributo

@onready var hon_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/AtributoBackground/AtributoContainer/Mudanca
@onready var hon_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/AtributoBackground/AtributoContainer/Valor
@onready var hon_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var hon_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var hon_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/BotaoDiminuirAtr
@onready var hon_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/BotaoAumentarAtributo
@onready var hon_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Hon/BotaoRolarAtributo

@onready var san_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/AtributoBackground/AtributoContainer/Mudanca
@onready var san_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/AtributoBackground/AtributoContainer/Valor
@onready var san_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var san_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var san_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/BotaoDiminuirAtr
@onready var san_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/BotaoAumentarAtributo
@onready var san_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/San/BotaoRolarAtributo

@onready var sab_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/AtributoBackground/AtributoContainer/Mudanca
@onready var sab_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/AtributoBackground/AtributoContainer/Valor
@onready var sab_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var sab_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var sab_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/BotaoDiminuirAtr
@onready var sab_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/BotaoAumentarAtributo
@onready var sab_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Sab/BotaoRolarAtributo

@onready var int_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/AtributoBackground/AtributoContainer/Mudanca
@onready var int_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/AtributoBackground/AtributoContainer/Valor
@onready var int_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var int_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var int_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/BotaoDiminuirAtr
@onready var int_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/BotaoAumentarAtributo
@onready var int_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Int/BotaoRolarAtributo

@onready var car_mudanca = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/AtributoBackground/AtributoContainer/Mudanca
@onready var car_valor = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/AtributoBackground/AtributoContainer/Valor
@onready var car_bonificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/AtributoBackground/AtributoContainer/BonificadorAtributo
@onready var car_modificador_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/AtributoBackground/AtributoContainer/ModificadorAtributo
@onready var car_botao_diminuir_atr = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/BotaoDiminuirAtr
@onready var car_botao_aumentar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/BotaoAumentarAtributo
@onready var car_botao_rolar_atributo = $InterfaceBacground/InterfaceContainer/AtributoInfoboxButao/AtributoInfobox/Atributo/Car/BotaoRolarAtributo

@onready var menu_pg_1 = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG1
@onready var menu_pg_2 = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/MenuPG2
@onready var botao_retornar = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/BotaoRetornar
@onready var botao_avancar = $InterfaceBacground/InterfaceContainer/PersonagemMenu/MenuContainer/HBoxContainer/BotaoAvancar

var pontos_disponiveis
var verificador_pontos_disponivel = false

var for_atual
var for_temp
var for_final
var for_modificador
var for_bonus_raca
var for_contador = 0

var des_atual
var des_temp
var des_final
var des_modificador
var des_bonus_raca
var des_contador = 0

var con_atual
var con_temp
var con_final
var con_modificador
var con_bonus_raca
var con_contador = 0

var hon_atual
var hon_temp
var hon_final
var hon_modificador
var hon_bonus_raca
var hon_contador = 0

var san_atual
var san_temp
var san_final
var san_modificador
var san_bonus_raca 
var san_contador = 0

var sab_atual
var sab_temp
var sab_final
var sab_modificador
var sab_bonus_raca
var sab_contador = 0

var int_atual
var int_temp
var int_final
var int_modificador
var int_bonus_raca
var int_contador = 0

var car_atual
var car_temp
var car_final
var car_modificador
var car_bonus_raca
var car_contador = 0

var raca_selecionada = false
var personalidade_selecionada = false
var qualidades_e_defeitos_selecianados = false
var antecedentes_selecianada = false
var esfera_selecionada = false
var classe_selecionada = false
var pericia_selecionada = false
var equipamentos_selecionados = false
var talento_selecionados = false

func _ready():
	interface_raca.Raca_Confirmar.connect(raca_confirmar)
	interface_personalidade.Personalidade_Confirmar.connect(personalidade_confirmar)
	qualidade_e_defeito.Qualidade_Confirmar.connect(qualidade_confirmar)
	antecedentes.Antecedentes_Confirmar.connect(antecedentes_confirmar)
	interface_esferas.Esferas_Confirmar.connect(esferas_confirmar)
	interface_classe.Classe_Confirmar.connect(classe_confirmar)
	interface_pericia.Pericia_Confirmar.connect(pericia_confirmar)
	interface_equipamentos.Equipamentos_Confirmar.connect(equipamento_confirmar)
	interface_talento.Talento_Confirmar.connect(talento_confirmar)
	interface_magia_coincidente.Coincidente_Confirmar.connect(coincidente_confirmar)
	interface_magia_vulgar.Vulgar_Confirmar.connect(vulgar_confirmar)
	interface_quintessencia_paradoxo.Quintessencia_Confirmar.connect(quintessencia_confirmar)

func quintessencia_confirmar():
	interface_quintessencia_paradoxo.hide()
	interface_magia_vulgar.show()

func vulgar_confirmar():
	interface_magia_vulgar.hide()
	interface_magia_coincidente.show()

func coincidente_confirmar():
	print("coincidente")
	print("Acabou Oferecer pra salvar")

func talento_confirmar():
	talento_selecionados = true
	interface_talento.hide()
	interface_quintessencia_paradoxo.show()

func equipamento_confirmar():
	equipamentos_selecionados = true
	interface_equipamentos.hide()
	interface_quintessencia_paradoxo.show()

func pericia_confirmar():
	pericia_selecionada = true
	interface_pericia.hide()
	interface_equipamentos.show()

func classe_confirmar():
	classe_selecionada = true
	interface_classe.hide()
	interface_pericia.show()

func esferas_confirmar():
	esfera_selecionada = true
	interface_esferas.hide()
	interface_classe.show()

func antecedentes_confirmar():
	antecedentes_selecianada = true
	antecedentes.hide()
	interface_esferas.show()

func raca_confirmar():
	raca_selecionada = true
	interface_raca.hide()
	interface_personalidade.show()

func qualidade_confirmar():
	qualidades_e_defeitos_selecianados = true
	qualidade_e_defeito.hide()
	antecedentes.show()

func personalidade_confirmar():
	personalidade_selecionada = true
	interface_personalidade.hide()
	qualidade_e_defeito.show()

func _process(_delta):
	for_botao_enablers()
	des_botao_enablers()
	con_botao_enablers()
	hon_botao_enablers()
	san_botao_enablers()
	sab_botao_enablers()
	int_botao_enablers()
	car_botao_enablers()
	resetar_atributo_enabler()
	botoes_gerais_enabler()

func botoes_gerais_enabler():
	if pontos_disponiveis == null:
		botao_raca.set_disabled(true)
	else:
		botao_raca.set_disabled(false)

	if raca_selecionada == false:
		botao_personalidade.set_disabled(true)
	else:
		botao_personalidade.set_disabled(false)

	if personalidade_selecionada == false:
		botao_qua_def.set_disabled(true)
	else:
		botao_qua_def.set_disabled(false)

	if qualidades_e_defeitos_selecianados == false:
		botao_antecedentes.set_disabled(true)
	else:
		botao_antecedentes.set_disabled(false)

	if antecedentes_selecianada == false:
		botao_esferas.set_disabled(true)
	else:
		botao_esferas.set_disabled(false)

	if esfera_selecionada == false:
		botao_classe.set_disabled(true)
	else:
		botao_classe.set_disabled(false)

	if classe_selecionada == false:
		botao_pericia.set_disabled(true)
	else:
		botao_pericia.set_disabled(false)

	if pericia_selecionada == false:
		botao_equip.set_disabled(true)
	else:
		botao_equip.set_disabled(false)

	if equipamentos_selecionados == false:
		botao_talento.set_disabled(true)
	else:
		botao_talento.set_disabled(false)

	if talento_selecionados == false:
		botao_magi_coin.set_disabled(true)
		botao_magi_vul.set_disabled(true)
		botao_qui_para.set_disabled(true)
	else:
		botao_magi_coin.set_disabled(false)
		botao_magi_vul.set_disabled(false)
		botao_qui_para.set_disabled(false)

func _on_botao_retornar_pressed(): 
	menu_pg_1.show()
	menu_pg_2.hide()
	if menu_pg_1.is_visible_in_tree():
		botao_avancar.set_disabled(false)
		botao_retornar.set_disabled(true)

func _on_botao_raca_pressed(): 
	interface_raca.show()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_classe_pressed(): 
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.show()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_antecedentes_pressed(): 
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.show()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_personalidade_pressed(): 
	interface_raca.hide()
	interface_personalidade.show()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_talento_pressed():
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.show()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_magi_coin_pressed(): 
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.show()

func _on_botao_magi_vul_pressed(): 
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.show()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_equip_pressed(): 
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.show()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_esferas_pressed(): 
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.show()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_qui_para_pressed():
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.show()
	interface_magia_coincidente.hide()

func _on_botao_qua_def_pressed():
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.show()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.hide()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_pericia_pressed():
	interface_raca.hide()
	interface_personalidade.hide()
	qualidade_e_defeito.hide()
	antecedentes.hide()
	interface_esferas.hide()
	interface_classe.hide()
	interface_pericia.show()
	interface_equipamentos.hide()
	interface_talento.hide()
	interface_magia_vulgar.hide()
	interface_quintessencia_paradoxo.hide()
	interface_magia_coincidente.hide()

func _on_botao_avancar_pressed(): 
	menu_pg_1.hide()
	menu_pg_2.show()
	if menu_pg_2.is_visible_in_tree():
		botao_avancar.set_disabled(true)
		botao_retornar.set_disabled(false)

func for_botao_enablers(): 
	if for_contador >= 3:
		for_botao_rolar_atributo.set_disabled(true)
	else:
		if for_atual != for_final:
			for_botao_rolar_atributo.set_disabled(true)
		else:
			for_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		for_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			for_botao_aumentar_atributo.set_disabled(true)
		else:
			for_botao_aumentar_atributo.set_disabled(false)
	else:
		for_botao_rolar_atributo.set_disabled(true)


	if for_final != null:
		if for_final > 4:
			for_botao_diminuir_atr.set_disabled(false)
		else:
			for_botao_diminuir_atr.set_disabled(true)
		if for_final < 20:
			for_botao_aumentar_atributo.set_disabled(false)
		else:
			for_botao_aumentar_atributo.set_disabled(true)
	else:
		for_botao_aumentar_atributo.set_disabled(true)
		for_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_for_pressed(): 
	for_temp -= 1
	if for_bonus_raca == null:
		for_final = for_atual + for_temp
	else:
		for_final = for_atual + for_temp + for_bonus_raca
	for_modificador = int((for_final - 10) / 2)
	if for_temp > -3 :
		pontos_disponiveis += 1
	for_valor.set_text(str(for_final))
	for_mudanca.set_text(str(for_temp))
	for_modificador_atributo.set_text(str(for_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_for_pressed():
	for_temp += 1
	if for_bonus_raca == null:
		for_final = for_atual + for_temp
	else:
		for_final = for_atual + for_temp + for_bonus_raca
	for_modificador = int((for_final - 10) / 2)
	if for_temp > -2:
		pontos_disponiveis -= 1
	for_valor.set_text(str(for_final))
	for_mudanca.set_text(str(for_temp))
	for_modificador_atributo.set_text(str(for_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_for_pressed():
	for_contador += 1
	for_atual = randi_range(7,12)
	for_temp = 0
	if for_bonus_raca == null:
		for_final = for_atual + for_temp
	else:
		for_final = for_atual + for_temp + for_bonus_raca
	for_modificador = int((for_final - 10) / 2)
	for_botao_aumentar_atributo.set_disabled(false)
	for_botao_diminuir_atr.set_disabled(false)
	for_valor.set_text(str(for_final))
	for_mudanca.set_text(str(for_temp))
	for_modificador_atributo.set_text(str(for_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func des_botao_enablers():
	if des_contador >= 3:
		des_botao_rolar_atributo.set_disabled(true)
	else:
		if des_atual != des_final:
			des_botao_rolar_atributo.set_disabled(true)
		else:
			des_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		des_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			des_botao_aumentar_atributo.set_disabled(true)
		else:
			des_botao_aumentar_atributo.set_disabled(false)
	else:
		des_botao_rolar_atributo.set_disabled(true)


	if des_final != null:
		if des_final > 4:
			des_botao_diminuir_atr.set_disabled(false)
		else:
			des_botao_diminuir_atr.set_disabled(true)
		if des_final < 20:
			des_botao_aumentar_atributo.set_disabled(false)
		else:
			des_botao_aumentar_atributo.set_disabled(true)
	else:
		des_botao_aumentar_atributo.set_disabled(true)
		des_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_des_pressed():
	des_temp -= 1
	if des_bonus_raca == null:
		des_final = des_atual + des_temp
	else:
		des_final = des_atual + des_temp + des_bonus_raca
	des_modificador = int((des_final - 10) / 2)
	if des_temp > -3 :
		pontos_disponiveis += 1
	des_valor.set_text(str(des_final))
	des_mudanca.set_text(str(des_temp))
	des_modificador_atributo.set_text(str(des_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_des_pressed():
	des_temp += 1
	if des_bonus_raca == null:
		des_final = des_atual + des_temp
	else:
		des_final = des_atual + des_temp + des_bonus_raca
	des_modificador = int((des_final - 10) / 2)
	if des_temp > -2:
		pontos_disponiveis -= 1
	des_valor.set_text(str(des_final))
	des_mudanca.set_text(str(des_temp))
	des_modificador_atributo.set_text(str(des_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_des_pressed():
	des_contador += 1
	des_atual = randi_range(7,12)
	des_temp = 0
	if des_bonus_raca == null:
		des_final = des_atual + des_temp
	else:
		des_final = des_atual + des_temp + des_bonus_raca
	des_modificador = int((des_final - 10) / 2)
	des_botao_aumentar_atributo.set_disabled(false)
	des_botao_diminuir_atr.set_disabled(false)
	des_valor.set_text(str(des_final))
	des_mudanca.set_text(str(des_temp))
	des_modificador_atributo.set_text(str(des_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func con_botao_enablers():
	if con_contador >= 3:
		con_botao_rolar_atributo.set_disabled(true)
	else:
		if con_atual != con_final:
			con_botao_rolar_atributo.set_disabled(true)
		else:
			con_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		con_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			con_botao_aumentar_atributo.set_disabled(true)
		else:
			con_botao_aumentar_atributo.set_disabled(false)
	else:
		con_botao_rolar_atributo.set_disabled(true)


	if con_final != null:
		if con_final > 4:
			con_botao_diminuir_atr.set_disabled(false)
		else:
			con_botao_diminuir_atr.set_disabled(true)
		if con_final < 20:
			con_botao_aumentar_atributo.set_disabled(false)
		else:
			con_botao_aumentar_atributo.set_disabled(true)
	else:
		con_botao_aumentar_atributo.set_disabled(true)
		con_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_con_pressed():
	con_temp -= 1
	if con_bonus_raca == null:
		con_final = con_atual + con_temp
	else:
		con_final = con_atual + con_temp + con_bonus_raca
	con_modificador = int((con_final - 10) / 2)
	if con_temp > -3 :
		pontos_disponiveis += 1
	con_valor.set_text(str(con_final))
	con_mudanca.set_text(str(con_temp))
	con_modificador_atributo.set_text(str(con_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_con_pressed():
	con_temp += 1
	if con_bonus_raca == null:
		con_final = con_atual + con_temp
	else:
		con_final = con_atual + con_temp + con_bonus_raca
	con_modificador = int((con_final - 10) / 2)
	if con_temp > -2:
		pontos_disponiveis -= 1
	con_valor.set_text(str(con_final))
	con_mudanca.set_text(str(con_temp))
	con_modificador_atributo.set_text(str(con_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_con_pressed():
	con_contador += 1
	con_atual = randi_range(7,12)
	con_temp = 0
	if con_bonus_raca == null:
		con_final = con_atual + con_temp
	else:
		con_final = con_atual + con_temp + con_bonus_raca
	con_modificador = int((con_final - 10) / 2)
	con_botao_aumentar_atributo.set_disabled(false)
	con_botao_diminuir_atr.set_disabled(false)
	con_valor.set_text(str(con_final))
	con_mudanca.set_text(str(con_temp))
	con_modificador_atributo.set_text(str(con_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func hon_botao_enablers():
	if hon_contador >= 3:
		hon_botao_rolar_atributo.set_disabled(true)
	else:
		if hon_atual != hon_final:
			hon_botao_rolar_atributo.set_disabled(true)
		else:
			hon_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		hon_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			hon_botao_aumentar_atributo.set_disabled(true)
		else:
			hon_botao_aumentar_atributo.set_disabled(false)
	else:
		hon_botao_rolar_atributo.set_disabled(true)


	if hon_final != null:
		if hon_final > 4:
			hon_botao_diminuir_atr.set_disabled(false)
		else:
			hon_botao_diminuir_atr.set_disabled(true)
		if hon_final < 20:
			hon_botao_aumentar_atributo.set_disabled(false)
		else:
			hon_botao_aumentar_atributo.set_disabled(true)
	else:
		hon_botao_aumentar_atributo.set_disabled(true)
		hon_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_hon_pressed():
	hon_temp -= 1
	if hon_bonus_raca == null:
		hon_final = hon_atual + hon_temp
	else:
		hon_final = hon_atual + hon_temp + hon_bonus_raca
	hon_modificador = int((hon_final - 10) / 2)
	if hon_temp > -3 :
		pontos_disponiveis += 1
	hon_valor.set_text(str(hon_final))
	hon_mudanca.set_text(str(hon_temp))
	hon_modificador_atributo.set_text(str(hon_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_hon_pressed():
	hon_temp += 1
	if hon_bonus_raca == null:
		hon_final = hon_atual + hon_temp
	else:
		hon_final = hon_atual + hon_temp + hon_bonus_raca
	hon_modificador = int((hon_final - 10) / 2)
	if hon_temp > -2:
		pontos_disponiveis -= 1
	hon_valor.set_text(str(hon_final))
	hon_mudanca.set_text(str(hon_temp))
	hon_modificador_atributo.set_text(str(hon_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_hon_pressed():
	hon_contador += 1
	hon_atual = randi_range(7,12)
	hon_temp = 0
	if hon_bonus_raca == null:
		hon_final = hon_atual + hon_temp
	else:
		hon_final = hon_atual + hon_temp + hon_bonus_raca
	hon_modificador = int((hon_final - 10) / 2)
	hon_botao_aumentar_atributo.set_disabled(false)
	hon_botao_diminuir_atr.set_disabled(false)
	hon_valor.set_text(str(hon_final))
	hon_mudanca.set_text(str(hon_temp))
	hon_modificador_atributo.set_text(str(hon_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func san_botao_enablers():
	if san_contador >= 3:
		san_botao_rolar_atributo.set_disabled(true)
	else:
		if san_atual != san_final:
			san_botao_rolar_atributo.set_disabled(true)
		else:
			san_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		san_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			san_botao_aumentar_atributo.set_disabled(true)
		else:
			san_botao_aumentar_atributo.set_disabled(false)
	else:
		san_botao_rolar_atributo.set_disabled(true)


	if san_final != null:
		if san_final > 4:
			san_botao_diminuir_atr.set_disabled(false)
		else:
			san_botao_diminuir_atr.set_disabled(true)
		if san_final < 20:
			san_botao_aumentar_atributo.set_disabled(false)
		else:
			san_botao_aumentar_atributo.set_disabled(true)
	else:
		san_botao_aumentar_atributo.set_disabled(true)
		san_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_san_pressed():
	san_temp -= 1
	if san_bonus_raca == null:
		san_final = san_atual + san_temp
	else:
		san_final = san_atual + san_temp + san_bonus_raca
	san_modificador = int((san_final - 10) / 2)
	if san_temp > -3 :
		pontos_disponiveis += 1
	san_valor.set_text(str(san_final))
	san_mudanca.set_text(str(san_temp))
	san_modificador_atributo.set_text(str(san_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_san_pressed():
	san_temp += 1
	if san_bonus_raca == null:
		san_final = san_atual + san_temp
	else:
		san_final = san_atual + san_temp + san_bonus_raca
	san_modificador = int((san_final - 10) / 2)
	if san_temp > -2:
		pontos_disponiveis -= 1
	san_valor.set_text(str(san_final))
	san_mudanca.set_text(str(san_temp))
	san_modificador_atributo.set_text(str(san_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_san_pressed():
	san_contador += 1
	san_atual = randi_range(7,12)
	san_temp = 0
	if san_bonus_raca == null:
		san_final = san_atual + san_temp
	else:
		san_final = san_atual + san_temp + san_bonus_raca
	san_modificador = int((san_final - 10) / 2)
	san_botao_aumentar_atributo.set_disabled(false)
	san_botao_diminuir_atr.set_disabled(false)
	san_valor.set_text(str(san_final))
	san_mudanca.set_text(str(san_temp))
	san_modificador_atributo.set_text(str(san_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func sab_botao_enablers():
	if sab_contador >= 3:
		sab_botao_rolar_atributo.set_disabled(true)
	else:
		if sab_atual != sab_final:
			sab_botao_rolar_atributo.set_disabled(true)
		else:
			sab_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		sab_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			sab_botao_aumentar_atributo.set_disabled(true)
		else:
			sab_botao_aumentar_atributo.set_disabled(false)
	else:
		sab_botao_rolar_atributo.set_disabled(true)


	if sab_final != null:
		if sab_final > 4:
			sab_botao_diminuir_atr.set_disabled(false)
		else:
			sab_botao_diminuir_atr.set_disabled(true)
		if sab_final < 20:
			sab_botao_aumentar_atributo.set_disabled(false)
		else:
			sab_botao_aumentar_atributo.set_disabled(true)
	else:
		sab_botao_aumentar_atributo.set_disabled(true)
		sab_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_sab_pressed():
	sab_temp -= 1
	if sab_bonus_raca == null:
		sab_final = sab_atual + sab_temp
	else:
		sab_final = sab_atual + sab_temp + sab_bonus_raca
	sab_modificador = int((sab_final - 10) / 2)
	if sab_temp > -3:
		pontos_disponiveis += 1
	sab_valor.set_text(str(sab_final))
	sab_mudanca.set_text(str(sab_temp))
	sab_modificador_atributo.set_text(str(sab_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_sab_pressed():
	sab_temp += 1
	if sab_bonus_raca == null:
		sab_final = sab_atual + sab_temp
	else:
		sab_final = sab_atual + sab_temp + sab_bonus_raca
	sab_modificador = int((sab_final - 10) / 2)
	if sab_temp > -2:
		pontos_disponiveis -= 1
	sab_valor.set_text(str(sab_final))
	sab_mudanca.set_text(str(sab_temp))
	sab_modificador_atributo.set_text(str(sab_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_sab_pressed():
	sab_contador += 1
	sab_atual = randi_range(7,12)
	sab_temp = 0
	if sab_bonus_raca == null:
		sab_final = sab_atual + sab_temp
	else:
		sab_final = sab_atual + sab_temp + sab_bonus_raca
	sab_modificador = int((sab_final - 10) / 2)
	sab_botao_aumentar_atributo.set_disabled(false)
	sab_botao_diminuir_atr.set_disabled(false)
	sab_valor.set_text(str(sab_final))
	sab_mudanca.set_text(str(sab_temp))
	sab_modificador_atributo.set_text(str(sab_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func int_botao_enablers():
	if int_contador >= 3:
		int_botao_rolar_atributo.set_disabled(true)
	else:
		if int_atual != int_final:
			int_botao_rolar_atributo.set_disabled(true)
		else:
			int_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		int_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			int_botao_aumentar_atributo.set_disabled(true)
		else:
			int_botao_aumentar_atributo.set_disabled(false)
	else:
		int_botao_rolar_atributo.set_disabled(true)


	if int_final != null:
		if int_final > 4:
			int_botao_diminuir_atr.set_disabled(false)
		else:
			int_botao_diminuir_atr.set_disabled(true)
		if int_final < 20:
			int_botao_aumentar_atributo.set_disabled(false)
		else:
			int_botao_aumentar_atributo.set_disabled(true)
	else:
		int_botao_aumentar_atributo.set_disabled(true)
		int_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_int_pressed():
	int_temp -= 1
	if int_bonus_raca == null:
		int_final = int_atual + int_temp
	else:
		int_final = int_atual + int_temp + int_bonus_raca
	int_modificador = int((int_final - 10) / 2)
	if int_temp > -3 :
		pontos_disponiveis += 1
	int_valor.set_text(str(int_final))
	int_mudanca.set_text(str(int_temp))
	int_modificador_atributo.set_text(str(int_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_int_pressed():
	int_temp += 1
	if int_bonus_raca == null:
		int_final = int_atual + int_temp
	else:
		int_final = int_atual + int_temp + int_bonus_raca
	int_modificador = int((int_final - 10) / 2)
	if int_temp > -2:
		pontos_disponiveis -= 1
	int_valor.set_text(str(int_final))
	int_mudanca.set_text(str(int_temp))
	int_modificador_atributo.set_text(str(int_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_int_pressed():
	int_contador += 1
	int_atual = randi_range(7,12)
	int_temp = 0
	if int_bonus_raca == null:
		int_final = int_atual + int_temp
	else:
		int_final = int_atual + int_temp + int_bonus_raca
	int_modificador = int((int_final - 10) / 2)
	int_botao_aumentar_atributo.set_disabled(false)
	int_botao_diminuir_atr.set_disabled(false)
	int_valor.set_text(str(int_final))
	int_mudanca.set_text(str(int_temp))
	int_modificador_atributo.set_text(str(int_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func car_botao_enablers():
	if car_contador >= 3:
		car_botao_rolar_atributo.set_disabled(true)
	else:
		if car_atual != car_final:
			car_botao_rolar_atributo.set_disabled(true)
		else:
			car_botao_rolar_atributo.set_disabled(false)


	if pontos_disponiveis != null:
		car_botao_rolar_atributo.set_disabled(false)
		if pontos_disponiveis == 0:
			car_botao_aumentar_atributo.set_disabled(true)
		else:
			car_botao_aumentar_atributo.set_disabled(false)
	else:
		car_botao_rolar_atributo.set_disabled(true)


	if car_final != null:
		if car_final > 4:
			car_botao_diminuir_atr.set_disabled(false)
		else:
			car_botao_diminuir_atr.set_disabled(true)
		if car_final < 20:
			car_botao_aumentar_atributo.set_disabled(false)
		else:
			car_botao_aumentar_atributo.set_disabled(true)
	else:
		car_botao_aumentar_atributo.set_disabled(true)
		car_botao_diminuir_atr.set_disabled(true)

func _on_botao_diminuir_car_pressed():
	car_temp -= 1
	if car_bonus_raca == null:
		car_final = car_atual + car_temp
	else:
		car_final = car_atual + car_temp + car_bonus_raca
	car_modificador = int((car_final - 10) / 2)
	if car_temp > -3 :
		pontos_disponiveis += 1
	car_valor.set_text(str(car_final))
	car_mudanca.set_text(str(car_temp))
	car_modificador_atributo.set_text(str(car_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_aumentar_car_pressed():
	car_temp += 1
	if car_bonus_raca == null:
		car_final = car_atual + car_temp
	else:
		car_final = car_atual + car_temp + car_bonus_raca
	car_modificador = int((car_final - 10) / 2)
	if car_temp > -2:
		pontos_disponiveis -= 1
	car_valor.set_text(str(car_final))
	car_mudanca.set_text(str(car_temp))
	car_modificador_atributo.set_text(str(car_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_rolar_car_pressed():
	car_contador += 1
	car_atual = randi_range(7,12)
	car_temp = 0
	if car_bonus_raca == null:
		car_final = car_atual + car_temp
	else:
		car_final = car_atual + car_temp + car_bonus_raca
	car_modificador = int((car_final - 10) / 2)
	car_botao_aumentar_atributo.set_disabled(false)
	car_botao_diminuir_atr.set_disabled(false)
	car_valor.set_text(str(car_final))
	car_mudanca.set_text(str(car_temp))
	car_modificador_atributo.set_text(str(car_modificador))
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func resetar_atributo_enabler():
	if verificador_pontos_disponivel == false:
		if pontos_disponiveis == null:
			resetar_atributo.set_disabled(true)
		else:
			resetar_atributo.set_disabled(false)
	else:
		resetar_atributo.set_disabled(true)

func _on_resetar_atributo_pressed():
	verificador_pontos_disponivel = true
	pontos_disponiveis = 27
	for_contador = 0
	for_atual = null
	for_final = null
	for_temp = null
	for_modificador = null
	for_valor.set_text("")
	for_mudanca.set_text("")
	for_modificador_atributo.set_text("")
	
	des_contador = 0
	des_atual = null
	des_final = null
	des_temp = null
	des_modificador = null
	des_modificador = null
	des_valor.set_text("")
	des_mudanca.set_text("")
	des_modificador_atributo.set_text("")
	
	con_contador = 0
	con_atual = null
	con_final = null
	con_temp = null
	con_modificador = null
	con_valor.set_text("")
	con_mudanca.set_text("")
	con_modificador_atributo.set_text("")
	
	hon_contador = 0
	hon_atual = null
	hon_final = null
	hon_temp = null
	hon_modificador = null
	hon_valor.set_text("")
	hon_mudanca.set_text("")
	hon_modificador_atributo.set_text("")
	
	san_contador = 0
	san_atual = null
	san_final = null
	san_temp = null
	san_modificador = null
	san_valor.set_text("")
	san_mudanca.set_text("")
	san_modificador_atributo.set_text("")
	
	sab_contador = 0
	sab_temp = null
	sab_modificador = null
	sab_atual = null
	sab_final = null
	sab_valor.set_text("")
	sab_mudanca.set_text("")
	sab_modificador_atributo.set_text("")
	
	int_contador = 0
	int_atual = null
	int_final = null
	int_temp = null
	int_modificador = null
	int_valor.set_text("")
	int_mudanca.set_text("")
	int_modificador_atributo.set_text("")
	
	car_contador = 0
	car_atual = null
	car_final = null
	car_temp = null
	car_modificador = null
	car_valor.set_text("")
	car_mudanca.set_text("")
	car_modificador_atributo.set_text("")
	
	etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))

func _on_botao_novo_personagem_pressed():
	if pontos_disponiveis == null:
		pontos_disponiveis = 27
		etiqueta_pontos_disponiveis.set_text(str(pontos_disponiveis))
	botao_novo_personagem.set_disabled(true)

func _on_botao_carregar_personagem_pressed():
	print("Abrir a tela de load de personagens")

func _on_botao_apagar_personagem_pressed():
	print("Abrir a tela de apagar personagens")

func _on_botao_salvar_personagem_pressed():
	print("Abrir a tela de salvar personagens")

func _on_botao_exportar_pressed():
	print("Abrir a tela de exportarção")

func _on_personagem_imagem_gui_input(event):
	if event.is_action_pressed("double_click") and event.double_click == true:
		print("aprender a dar import de imagens")
