//[VARIABLES]
opened = false;
dialog_state = 0;

speaker_name = "Nombre";
text = "Este es un texto de prueba";
options = ["Primera", "Segunda", "Tercera"];

text_write = "";

cursor_index = 0;
character_index = 0;

next_timer = 0.01;

box_size = [0 , 0];
//SFXS
//https://freesound.org/people/Owl/sounds/387907/


//[FUNCTIONS]
func_dialog = function(_text, _name)
{
	opened = true;
	dialog_state = 0;
	
	text = _text;
	speaker_name = _name;
	
	options = [];
	
	text_write = "";
	cursor_index = 0;
	character_index = 0;
	next_timer = 0.01;
}
func_question = function(_text, _name, _quest)
{
	opened = true;
	dialog_state = 0;
	
	text = _text;
	speaker_name = _name;
	
	options = _quest;
	
	text_write = "";
	cursor_index = 0;
	character_index = 0;
	next_timer = 0.01;
}

//[EVENTS]
on_end = function(_resp){}



