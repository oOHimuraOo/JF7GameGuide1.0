extends Control
signal Raca_Confirmar

@onready var nome = $VBoxContainer/CaracteristicasDescritivas/Nome
@onready var nome_confirmar = $VBoxContainer/CaracteristicasDescritivas/NomeConfirmar
@onready var genero = $VBoxContainer/CaracteristicasDescritivas/Genero
@onready var genero_confirmar = $VBoxContainer/CaracteristicasDescritivas/GeneroConfirmar
@onready var idade = $VBoxContainer/CaracteristicasDescritivas/Idade
@onready var idade_confirmar = $VBoxContainer/CaracteristicasDescritivas/IdadeConfirmar
@onready var peso = $VBoxContainer/CaracteristicasDescritivas2/Peso
@onready var peso_confirmar = $VBoxContainer/CaracteristicasDescritivas2/PesoConfirmar
@onready var tamanho = $VBoxContainer/CaracteristicasDescritivas2/Tamanho
@onready var tamanho_confirmar = $VBoxContainer/CaracteristicasDescritivas2/TamanhoConfirmar
@onready var altura = $VBoxContainer/CaracteristicasDescritivas2/Altura
@onready var altura_confirmar = $VBoxContainer/CaracteristicasDescritivas2/AlturaConfirmar
@onready var divindade = $VBoxContainer/CaracteristicasDescritivas3/Divindade
@onready var divindade_confirmar = $VBoxContainer/CaracteristicasDescritivas3/DivindadeConfirmar
@onready var jogador = $VBoxContainer/CaracteristicasDescritivas3/Jogador
@onready var jogador_confirmar = $VBoxContainer/CaracteristicasDescritivas3/JogadorConfirmar
@onready var racas = $VBoxContainer/Racas/Racas
@onready var descritivo = $VBoxContainer/Inforbox/ScrollContainer/VBoxContainer/HBoxContainer/Descritivo
@onready var imagem_exp_raca = $VBoxContainer/Inforbox/ScrollContainer/VBoxContainer/HBoxContainer/Imagens/ImagemEXPRaca
@onready var tabela_1 = $VBoxContainer/Inforbox/ScrollContainer/VBoxContainer/HBoxContainer/Imagens/Tabela1
@onready var tabela_2 = $VBoxContainer/Inforbox/ScrollContainer/VBoxContainer/HBoxContainer/Imagens/Tabela2
@onready var tabela_3 = $VBoxContainer/Inforbox/ScrollContainer/VBoxContainer/HBoxContainer/Imagens/Tabela3
@onready var tabela_raca = $VBoxContainer/Inforbox/ScrollContainer/VBoxContainer/TabelaRaca
@onready var confirmar = $VBoxContainer/Confirmar/Confirmar

var nome_atual 
var nome_confirmado

var genero_atual
var genero_confirmado

var idade_atual
var idade_confirmada

var peso_atual
var peso_confirmado

var tamanho_atual
var tamanho_confirmado

var altura_atual
var altura_confirmada

var divindade_atual
var divindade_confirmada

var jogador_atual
var jogador_confirmado

var raca_atual
var raca_confirmada

func _ready():
	pass


func _process(_delta):
	botoes_enablers()
	text_updaters()
	descritivo.set_text("[i]\t\t\tEu não vou mentir que o meu primeiro contato com um deles, me deixou confuso. A sua aparência demoníaca não condizia com as sua personalidade amistosa e inocente.\n\t\t\tNaquele dia eu aprendi a não julgar as mais diversas raças por conceitos perdidos em opiniões de terceiros. Foi realmente algo novo para mim.[/i]\n[right]- Hamath Bene I, Os paradigmas dos seres infernais.[/right]\n\n\t\t\tDevido a pequena quantidade membros dessa raça, os äht geralmente provocam estranheza por onde passam. Aqueles menos acostumados costumam inclusive a pedir ajuda a sua divindade só por ter cruzado caminho por um desses.\n\n[font_size=26]A origem dos Äht[/font_size]\n\n\t\t\tA muitos anos atrás uma pequena tribo de Humanos, fortemente ambiciosos decidiram fazer pacto com alguns senhores do inferno.\n\t\t\tEles ambicionavam deixar de ser uma raça tão frágil e simplória como os humanos eram, então assim fizeram um pacto que concedeu a eles acesso a linhagem infernal destes demônios.\n\t\t\tO que os membros dessa raça não sabiam é que isso teria um preço mais alto do que eles esperavam e assim eles acabaram assumindo uma aparência monstruosa. Mas apesar disso eles não se arrependeram do pacto que foi feito. E hoje eles possuem um forte orgulho considerando-se inclusive superiores aos Humanos.\n\t\t\tOs demônios com quem os humanos fizeram pacto foram: Asmodeus, Baalzebul, Dispaster, Fierna, Glasya, Levistus, Mammon, Mephistosteles, Zariel.\n\n[font_size=26]As 9 grandes famílias[/font_size]\n\n\t\t\tNa origem dos Äht 9 famílias fizeram pacto com 9 diferentes demônios. Hoje todos os Äht reconhecem um membro de sua família pela sua descendência com o demônio. A linhagem de cada família pode ser enorme, mas o seu vínculo com os demônios os torna muito mais próximos.\n\t\t\tCada uma das famílias possuíam uma ambição levemente diferente que a outra e por isso não existe muito conflito interno. A sua origem infernal os torna seres mais truculentos que a maioria das raças.\n\t\t\tPor serem ambiciosos e orgulhosos as famílias raramente escondem a sua decadência infernal. Muitas vezessendo até vergonhoso pensarem omitir a sua origem infernal.\n\n[font_size=26]Aparência monstruosa[/font_size]\n\n\t\t\tComo consequência do seu pacto, os äht acabaram possuindo características infernais, a sua pele se tornou uma couraça, chifres surgiram, Seus olhos tornaram-se obscurecidose um rabo apareceu. Algumas vezes ate mesmo seus pés viravam cascos. Dando um aspecto ainda mais monstruoso a eles.\n\t\t\tApesar dessas diferenças físicas destacarem eles em meio à multidão, os benefícios que eles tiraram foram muito mais vantajosos. Tornando-os conhecidos por sua capacidade de manipular a mana com uma facilidade tão grande quanto os elfos mais dedicados\n\n[font_size=26]Consequências do pacto[/font_size]\n\n\t\t\tDepois que o pacto foi feito, além da aparência monstruosa e dos superpoderes, os descendentes daquelas famílias independentemente de como surgissem sempre nasciam como um Äht.\n\t\t\tAs mães percebem que existe algo de diferente com os seus filhos logo nos primeiros dias de gestação. O que está acontecendo é que na verdade a alma dos seus filhos estão prestando serviço ao senhores do inferno antes de nascer.\n\t\t\tQuando a criança nasce ela retem todas as memorias dos trabalhos que foram feitos no inferno.\n\n[font_size=26]Nomes dos äht[/font_size]\n\n\t\t\tOs nomes de um äht são bem semelhantes aos nomes dos humanos. Com a diferença que eles adotam o nome do senhor infernal como sobrenome.\n\n[font_size=20]Nomes masculinos:[/font_size]\n\t\t\tLewilh, Cyne, Wulfa, Aelfsing, Balda, Ceolhelm, Tharliam, Ered, Warda, Enhed.\n\n[font_size=20]Nomes femininos:[/font_size]\n\t\t\tEaldell, Eared, Ennel, Burhiua, Aethed, Elen, Eren, Marger, Burga, Aten.\n\n[font_size=20]Nomes neutros:[/font_size]\n\t\t\tPazu, Sago, Ashtun, Amar, Addos, Bera, Maraie, Apus, Mary, Vapul\n\n[font_size=26]Traços raciais[/font_size]\n\n\t\t\tSeu personagem äht possui uma variedade de habilidades inatas, parte integrante da natureza da raça.\n\t\t\t[b]Aumento no valor de atributo:[/b]\n\t\t\tO valor do atributo [i]Inteligência[/i] aumenta em [b]+1[/b] e o seu valor do atributo de [i]carisma[/i] aumenta em [b]+2[/b].\n\t\t\t[b]Idade:[/b]\n\t\t\tA idade dos äht, é bem semelhante com dos Humanos, apesar de que os äht conseguem viver até os [b]100[/b] anos.\n\t\t\t[b]Alinhamento:[/b]\n\t\t\tA maioria dos äht devido ao seu período de gestação já nasce predisposto a fazer qualquer coisa para atingir seu objetivo, e para a maioria deles os fins justificam os meios. Mas apesar da maioria deles ser [i]caótica e/ou mal[/i], isso não significa que todos eles sejam assim.\n\t\t\t[b]Tamanho:[/b]\n\t\t\tO seu tamanho é médio e a altura de um äht costuma variar entre 1,5m e 1,8m. Seu peso costuma variar entre [b]60[/b] e [b]90kg[/b].\n[b]\t\t\tDeslocamento:[/b]\n\t\t\tO deslocamento Base de um äht é: 9,0m (caminhada), 18,0m (Corrida), 4,5m (Escalada), 4,5m (Nado), 0,0m (Voo)\n\n[font_size=26]Características especias:[/font_size]\n\t\t\tOs äht diferente da maioria das raças de Juízo Final possuem as seguintes habilidades:\n
\t\t\t[b]Visão no escuro:[/b]\n\t\t\tAlgumas das vantagens que alguns äht receberam do pacto foi uma capacidade de enxergar melhor no escuro. Quando em meia escuridão um äht consegue enxergar a até [b]18m[/b] como se fosse dia e consegue a mais [b]18m[/b] enxergar em completa escuridão como se fosse meia escuridão. Quando em completa escuridão um äht não distingue cores, apenas tons de cinza.\n\t\t\t[b]Resistência Infernal:[/b]\n\t\t\tOs äht receberam uma resistência ao fogo devido as chamas do inferno. Eles possuem resistência a dano de fogo.\n\n\t\t\t[b]Herança infernal:[/b]\n\t\t\tOs äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque Taumaturgia.\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-se capazes de utilizar a magia Repreensão Infernal, como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia Escuridão, como magia de segundo nível.\n\t\t\tAs magias [i]Repreensão infernal[/i] e [i]Escuridão[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas äht de Asmodeus possuem essa habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Maladomini:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque Taumaturgia.\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-secapazes de utilizar a magia raio do enfraquecimento, como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia coroa da loucura, como magia de segundo nível.\n\t\t\tAs magias [i]raio do enfraquecimento[/i] e [i]coroa da loucura[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas äht de Baalzebul Baalzebul possuem possuem essa Habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Dis:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]Taumaturgia[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]disfarce[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-se capazes de utilizar a magia [i]Detectar Pensamentos[/i], como magia de segundo nível.\n\t\t\tAs magias [i]Disfarce[/i] e [i]detectar pensamento[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas äht de Dispaster possuem essa Habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Phlegtos:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]Amizade[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]encantar pessoa[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]sugestão[/i], como magia de segundo nível.\n\t\t\tAs magias [i]encantar pessoa[/i] e [i]sugestão[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas Äht de Fierna possuem essa habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Malbolge:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]ilusão menor[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]disfarce[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]Invisibilidade[/i], como magia de segundo nível.\n\t\t\tAs magias [i]disfarce[/i] e [i]Invisibilidade[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas äht de Glasya possuem essa Habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Stygia:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]raio de gelo[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-se capazes de utilizar a magia [i]Armadura de Agathys[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]Escuridão[/i], como magia de segundo nível.\n\t\t\tAs magias [i]armadura de Agathys[/i] e [i]escuridão[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas äht de Levistus possuem essa Habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Minauros:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]Mãos Magicas[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-se capazes de utilizar a magia discos [i]flutuantes de Tenser[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]Tranca Arcana[/i], como magia de segundo nível.\n\t\t\tAs magias [i]Discos flutuantes de Tenser[/i] e [i]tranca arcana[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas Äht de Mammon possuem essa habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Cania:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]mãos magicas[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]Mãos flamejantes[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-secapazes de utilizar a magia [i]Lâmina flamejante[/i], como magia de segundo nível.\n\t\t\tAs magias [i]Mãos flamejantes[/i] e [i]lâmina flamejante[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo[/i].\n\t\t\t[b][i]Apenas Äht de Mephistoles possuem essa Habilidade.[/i][/b]\n\n\t\t\t[b]Legado de Avernos:[/b]\n\t\t\tAlguns äht receberam do seu pacto uma capacidade de manipular a mana. Esses äht nascem sabendo utilizar o truque [i]Taumaturgia[/i].\n\t\t\t[b][i]No 3º nível:[/i][/b] eles tornam-se capazes de utilizar a magia [i]destruição lancinante[/i], como magia de segundo nível.\n\t\t\t[b][i]No 5º nível:[/i][/b] eles tornam-se capazes de utilizar a magia [i]marca da destruição[/i], como magia de segundo nível.\n\t\t\tAs magias [i]destruição lancinante[/i] e [i]marca da destruição[/i] não consomem quintessência, mas só podem ser utilizadas uma vez por [i]descanso longo.[/i]\n\t\t\t[b][i]Apenas äht de Zariel possuem essa Habilidade.[/i][/b]\n\n[font_size=26]Talentos[/font_size]\n\n\t\t\tOs Äht possuem [b]1[/b] ponto de talento extra. Geralmente esse ponto é distribuido entre os [i]talentos Arcanos[/i].\n\n[font_size=26]Idiomas[/font_size]\n\n\t\t\tTodo äht sabe falar e escrever em pelo menos dois idiomas, o [i]Comum[/i] e o [i]Infernal[/i].")
func text_updaters():
	if nome.text_changed and nome.get_text() != "" and nome.get_text().length() >= 3:
		nome_atual = nome.get_text()
	elif nome.text_changed and nome.get_text() != "" and nome.get_text().length() <3:
		nome_atual = null
	
	if genero.text_changed and genero.get_text() != "" and genero.get_text().length() >= 3:
		genero_atual = genero.get_text()
	elif genero.text_changed and genero.get_text() != "" and genero.get_text().length() <3:
		genero_atual = null

	if idade.text_changed and idade.get_text() != "" and idade.get_text().length() >= 3:
		idade_atual = idade.get_text()
	elif idade.text_changed and idade.get_text() != "" and idade.get_text().length() <3:
		idade_atual = null

	if peso.text_changed and peso.get_text() != "" and peso.get_text().length() >= 3:
		peso_atual = peso.get_text()
	elif peso.text_changed and peso.get_text() != "" and peso.get_text().length() <3:
		peso_atual = null

	if tamanho.get_selected_id() != 0: 
		var id = tamanho.get_selected_id()
		tamanho_atual = tamanho.get_item_text(id)
		altura.set_editable(true)
		peso.set_editable(false)
	else:
		tamanho_atual = null
		altura.set_editable(false)
		peso.set_editable(false)

	if altura.text_changed and altura.get_text() != "" and altura.get_text().length() >= 3:
		altura_atual = altura.get_text()
	elif altura.text_changed and altura.get_text() != "" and altura.get_text().length() <3:
		altura_atual = null
	if tamanho.get_selected_id() == 1:
		altura.set_placeholder("até 29cm")
	elif tamanho.get_selected_id() == 2:
		altura.set_placeholder("entre 30cm e 1m")
	elif tamanho.get_selected_id() == 3:
		altura.set_placeholder("entre 1,01m e 3,50m")
	elif tamanho.get_selected_id() == 4:
		altura.set_placeholder("entre 3,51m e 7m")
	elif tamanho.get_selected_id() == 5:
		altura.set_placeholder("entre 7,01m e 14m")
	elif tamanho.get_selected_id() == 6:
		altura.set_placeholder("entre 14,01m e 28m")
	elif tamanho.get_selected_id() == 7:
		altura.set_placeholder("entre 28,01m e 56m")
	elif tamanho.get_selected_id() == 8:
		altura.set_placeholder("entre 56,01m e 112m")
	elif tamanho.get_selected_id() == 9:
		altura.set_placeholder("maior que 112,01m")

	if divindade.text_changed and divindade.get_text() != "" and divindade.get_text().length() >= 3:
		divindade_atual = divindade.get_text()
	elif divindade.text_changed and divindade.get_text() != "" and divindade.get_text().length() <3:
		divindade_atual = null

	if jogador.text_changed and jogador.get_text() != "" and jogador.get_text().length() >= 3:
		jogador_atual = jogador.get_text()
	elif jogador.text_changed and jogador.get_text() != "" and jogador.get_text().length() <3:
		jogador_atual = null

func botoes_enablers():
	if nome_atual == nome_confirmado:
		nome_confirmar.set_disabled(true)
	else:
		nome_confirmar.set_disabled(false)

	if genero_atual == genero_confirmado:
		genero_confirmar.set_disabled(true)
	else:
		genero_confirmar.set_disabled(false)

	if idade_atual == idade_confirmada:
		idade_confirmar.set_disabled(true)
	else:
		idade_confirmar.set_disabled(false)

	if peso_atual == peso_confirmado:
		peso_confirmar.set_disabled(true)
	else:
		peso_confirmar.set_disabled(false)

	if tamanho_atual == tamanho_confirmado:
		tamanho_confirmar.set_disabled(true)
	else:
		tamanho_confirmar.set_disabled(false)

	if altura_atual == altura_confirmada:
		altura_confirmar.set_disabled(true)
	else:
		altura_confirmar.set_disabled(false)

	if divindade_atual == divindade_confirmada:
		divindade_confirmar.set_disabled(true)
	else:
		divindade_confirmar.set_disabled(false)

	if jogador_atual == jogador_confirmado:
		jogador_confirmar.set_disabled(true)
	else:
		jogador_confirmar.set_disabled(false)

	if nome_confirmado == null or nome_confirmado == "":
		confirmar.set_disabled(true)
	elif genero_confirmado == null or genero_confirmado == "":
		confirmar.set_disabled(true)
	elif idade_confirmada == null or idade_confirmada == "":
		confirmar.set_disabled(true)
	elif peso_confirmado == null or peso_confirmado == "":
		confirmar.set_disabled(true)
	elif tamanho_confirmado == null or tamanho_confirmado == "":
		confirmar.set_disabled(true)
	elif divindade_confirmada == null or divindade_confirmada == "":
		confirmar.set_disabled(true)
	elif jogador_confirmado == null or jogador_confirmado == "":
		confirmar.set_disabled(true)
	else:
		confirmar.set_disabled(false)

func _on_texture_button_pressed():
	Raca_Confirmar.emit()
	nome.set_editable(false)
	genero.set_editable(false)
	idade.set_editable(false)
	peso.set_editable(false)
	tamanho.set_editable(false)
	altura.set_editable(false)
	divindade.set_editable(false)
	jogador.set_editable(false)
	


func _on_nome_confirmar_pressed():
	nome_confirmado = nome_atual
	print_debug(nome_confirmado)


func _on_genero_confirmar_pressed():
	genero_confirmado = genero_atual


func _on_idade_confirmar_pressed():
	idade_confirmada = idade_atual


func _on_peso_confirmar_pressed():
	peso_confirmado = peso_atual


func _on_textura_confirmar_pressed():
	tamanho_confirmado = tamanho_atual


func _on_altura_confirmar_pressed():
	altura_confirmada = altura_atual


func _on_divindade_confirmar_pressed():
	divindade_confirmada = divindade_atual


func _on_jogador_confirmar_pressed():
	jogador_confirmado = jogador_atual


func _on_racas_item_selected(index):
	pass # Replace with function body.
