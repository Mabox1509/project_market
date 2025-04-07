//[EVENTS]
func_cine30 = function(_res)
{
	inst_61784201.on_end = func_cine31;
	inst_61784201.func_dialog("(DING)", "");
	
	audio_play_sound(sfx_entrace_bell, 100,false);
	music_id = audio_play_sound(bgm_mex, 200, true);
}
func_cine31 = function(_res)
{
	inst_61784201.opened = false;
	target[0] = 183;
	target[1] = 110;
	
	sprite_index = spr_child_back;
	image_speed = 1;
	
	alarm[0] = 120;
}
func_cine32 = function(_res)
{
	if(_res == 0)
	{
		inst_61784201.on_end = func_cine30A;
		inst_61784201.func_dialog("La estatua no siempre estuvo en ese parque, el cual tampoco estaba abandonado.\nEn los años 50, una niña desapareció cerca de ese lugar.", "Dolesio");
	}
	else
	{
		inst_61784201.on_end = func_cine30B;
		inst_61784201.func_dialog("Es solo una estatua antigua de Blancanieves. Seguro tu primo quería asustarte con una historia de miedo. Mis primos mayores me jugaban esas bromas cuando era pequeño.", "Dolesio");
	}
}


func_cine30A = function(_res)
{
	inst_61784201.on_end = func_cine31A;
	inst_61784201.func_dialog("Nadie supo qué pasó, pero poco después, la estatua apareció de la nada. Desde entonces, dicen que sus ojos se mueven... como si estuviera atrapada dentro.", "Dolesio");
}
func_cine31A = function(_res)
{
	inst_61784201.on_end = func_cine32A;
	inst_61784201.func_dialog("¿Qué? ¿Quieres decir que hay alguien ahí dentro?", "Niño");
}
func_cine32A = function(_res)
{
	inst_61784201.on_end = func_cine33A;
	inst_61784201.func_dialog("*temblor*", "Niño");
}
func_cine33A = function(_res)
{
	inst_61784201.on_end = func_cine34A;
	inst_61784201.func_dialog("Algunos dicen que, si la miras fijamente a los ojos por mucho tiempo, te devolverá la mirada... y te llamará por tu nombre.", "Dalesio");
}
func_cine34A = function(_res)
{
	inst_61784201.on_end = func_cine35A;
	inst_61784201.func_dialog("¡No quiero saber más.!", "Niño");
}
func_cine35A = function(_res)
{
	inst_61784201.opened = false;
	target[1] = 1000;
	spd = 80;
	
	image_speed = 1;
	sprite_index = spr_child_front;
	
	inst_13B0B81F.fade_target = 1;
	
	alarm[1] = 80;
}

func_cine30B = function(_res)
{
	inst_61784201.on_end = func_cine31B;
	inst_61784201.func_dialog("¡Lo sabía! Siempre inventa cosas. Apuesto a que si la veo de noche, no se moverá ni un poquito.", "Niño");
}
func_cine31B = function(_res)
{
	inst_61784201.on_end = func_cine32B;
	inst_61784201.func_dialog("*Contempla la estatua y se va*", "Niño");
}
func_cine32B = function(_res)
{
	inst_61784201.opened = false;
	target[1] = 1100;
	
	sprite_index = spr_child_front;
	inst_13B0B81F.fade_target = 0;
	
	alarm[2] = 80;
}


//POSITION
spd = 70;
target = [x, y];

pos = [x, y];

end_flag = 0;
music_id = -1;