extends Control

onready var lineEdit = $VBoxContainer/VBoxContainer/HBoxContainer/LineEdit
onready var lineEdit2 = $VBoxContainer/VBoxContainer/HBoxContainer/LineEdit2
onready var lineEdit3 = $VBoxContainer/VBoxContainer2/HBoxContainer/LineEdit
onready var label = $VBoxContainer/Label2


var count = 1
var value
var answer
var svalue
var lvalue
func _ready():
	$VBoxContainer/VBoxContainer2.hide()
	pass


func _on_LineEdit_text_changed(new_text):
	svalue = new_text
	pass


func _on_LineEdit2_text_changed(new_text):
	lvalue = new_text
	pass


func _on_Button_pressed():
	if lineEdit.text == "" or lineEdit2.text == "":
		label.text = "Fill the blank first."
	else:
		$VBoxContainer/VBoxContainer.hide()
		$VBoxContainer/VBoxContainer2.show()
		answer = int(rand_range(int(svalue), int(lvalue)))
	
	
func _events(v, v1):
	var _label
	if v > v1:
		_label = "Answer is smaller than the guess"
	elif v < v1:
		_label = "Answer is larger than the guess"
	elif v == v1:
		_label = "Guess matches, YOU WON!!"
	
	label.text = String(_label)


func _on_Guess_Button_pressed():
	if count == 5:
		label.text ="Turns are over"
		
	elif count != 5:
		_events(int(value),answer)
	
	count +=1


func _on_LineEdit3_text_changed(new_text):
	value = lineEdit3.text


func _on_Exit_Button_pressed():
	get_tree().quit()


func _on_Restart_Button_pressed():
		$VBoxContainer/VBoxContainer.show()
		$VBoxContainer/VBoxContainer2.hide()
		count = 1
