extends Control
signal Equipamentos_Confirmar()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_texture_button_pressed():
	Equipamentos_Confirmar.emit()
