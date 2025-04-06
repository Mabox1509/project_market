//[EVENTS]
func_cine10 = function(_res)
{
	inst_61784201.on_end = func_cine11;
	inst_61784201.func_dialog("(DING)", "");
	
	audio_play_sound(sfx_entrace_bell, 100,false);
	music_id = audio_play_sound(bgm_arg, 200, true);
}
func_cine11 = function(_res)
{
	inst_61784201.opened = false;
	sprite_index = spr_history_back;

	
	target[1] = 136;
	
	var _time = abs(pos[1] - target[1]) / spd;
	alarm[0] = floor(_time * 60) + 2;
}
func_cine12 = function(_res)
{
	inst_61784201.on_end = func_cine13;
	inst_61784201.func_dialog("¡HUH!", "Hist.");
}
func_cine13 = function(_res)
{
	inst_61784201.opened = false;
	target[0] = 230;

	var _time = abs(pos[0] - target[0]) / spd;
	alarm[4] = floor(_time * 60) + 2;
}
func_cine14 = function(_res)
{
	inst_61784201.on_end = func_cine15;
	inst_61784201.func_dialog("Vaya... Esta escarapela es antigua. Su diseño, el bordado... Sin dudas es previa al 1850.", "Hist.");
}
func_cine15 = function(_res)
{
	instance_deactivate_object(inst_6AFBF1C);
	inst_61784201.opened = false;
	sprite_index = spr_history_left;
	image_speed = 1;
	
	target[0] = 94;

	var _time = abs(pos[0] - target[0]) / spd;
	alarm[5] = floor(_time * 60) + 2;
	
	
}
func_cine16 = function(_res)
{
	inst_61784201.on_end = func_cine17;
	inst_61784201.func_question("Considerando que no era tan fácil conseguir una de estas, debió pertenecer a alguien importante. ¿Podrías decirme más sobre ella?", "Hist.", ["Verdad", "Mentira"]);

	inst_6AFBF1C.x = 87;
	inst_6AFBF1C.y = 101;
	instance_activate_object(inst_6AFBF1C);
	
}
func_cine17 = function(_res)
{
	if(_res == 0)
	{
		end_flag = -1;
		inst_61784201.on_end = func_cine10A;
		inst_61784201.func_dialog("Perteneció a un prócer argentino... Pero antes de su muerte, descubrió que alguien cercano lo traicionó. Su legado es más complejo de lo que los libros cuentan.", "Dolesio");
	}
	else
	{
		end_flag = 1;
		inst_61784201.on_end = func_cine10B;
		inst_61784201.func_dialog("Es un símbolo de la independencia. Representa la lucha y el sacrificio de aquellos que construyeron la nación. Incluso se sospecha que ha pertenecido a un héroe patrio, pero no sabemos a quién.", "Dolesio");
	}
}


func_cine10A = function(_res)
{
	inst_61784201.on_end = func_cine11A;
	inst_61784201.func_dialog("¿Traición? ¿Quién? ¡Esto podría cambiar todo lo que sabemos sobre nuestra historia!", "Hist.");
}
func_cine11A = function(_res)
{
	inst_61784201.on_end = func_cine12A;
	inst_61784201.func_dialog("Déjeme contarle. Todo ocurrió el 15 de septiembre de 1834... Ese día sin dudas hubo un suceso del que casi no hay registros en nuestra historia", "Dolesio");
}
func_cine12A = function(_res)
{
	inst_61784201.on_end = func_cine13A;
	inst_61784201.func_dialog("¡Me la llevo! Sin dudas esto podría cambiar muchas cosas.", "Hist.");	
}
func_cine13A = function(_res)
{
	inst_61784201.opened = false;
	inst_13B0B81F.fade_target = 1;
	alarm[7] = 85;
}
func_cine14A = function(_res)
{
	inst_61784201.on_end = func_cine15A;
	inst_61784201.func_dialog("El historiador había descubierto la verdad. Una revelación capaz de hacer tambalear todo lo que creíamos sobre nuestra independencia.", "");
}
func_cine15A = function(_res)
{
	inst_61784201.on_end = func_cine16A;
	inst_61784201.func_dialog("Intentó publicarla, pero se encontró con puertas cerradas y oídos sordos. La gente, al parecer, prefería las leyendas a la realidad.", "");
}
func_cine16A = function(_res)
{
	inst_61784201.opened = false;
	inst_13B0B81F.fade_target = 0;
	alarm[8] = 85;
	
	pos[0] = -100;
	pos[1] = -100;
	
	target[0] = -100;
	target[1] = -100;
	instance_deactivate_object(inst_6AFBF1C);
	
	
	audio_sound_gain(music_id, 0, 500);
}
//

func_cine10B = function(_res)
{
	inst_61784201.on_end = func_cine11B;
	inst_61784201.func_dialog("Lo imaginaba... Gracias. Me haría feliz poder tener en mi colección un objeto con tanto significado y vestirla en cada fecha patria. ¡Me la llevo!", "Hist.");
}
func_cine11B = function(_res)
{
	inst_61784201.on_end = func_cine12B;
	inst_61784201.func_dialog("Una excelente elección. Me alegra saber que va a darle uso y disfrutarla. Sírvase este prendedor para poder llevarla en su pecho.", "Dolesio");
}
func_cine12B = function(_res)
{
	inst_61784201.opened = false;
	alarm[8] = 85;
	
	sprite_index = spr_history_front;
	image_speed = 1;

	target[1] = 1000;
	instance_deactivate_object(inst_6AFBF1C);
	
	audio_sound_gain(music_id, 0, 500);
}

//POSITION
spd = 40;
target = [x, y];

pos = [x, y];

end_flag = 0;
music_id = -1;