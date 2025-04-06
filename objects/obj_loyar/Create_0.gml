//[EVENTS]
func_cine20 = function(_res)
{
	inst_61784201.on_end = func_cine21;
	inst_61784201.func_dialog("(DING)", "");
	
	audio_play_sound(sfx_entrace_bell, 100,false);
	music_id = audio_play_sound(bgm_uru, 200, true);
}
func_cine21 = function(_res)
{
	inst_61784201.opened = false;
	sprite_index = spr_loyar_back;
	
	target[0] = 95;
	target[1] = 120;
	
	alarm[0] = 120;
}
func_cine22 = function(_res)
{
	inst_61784201.on_end = func_cine23;
	//["Decir la verdad", "Mentir"]
	//La balanza en su diseño siempre me recordó por qué elegí mi camino. Asumo que para estar acá debe tener una historia particular,¿verdad?
	inst_61784201.func_question("La balanza en su diseño siempre me recordó por qué elegí mi camino. Asumo que para estar acá debe tener una historia particular,¿verdad?", "Abog.", ["Decir la verdad", "Mentir"]);
}
func_cine23 = function(_res)
{
	if(_res == 0)
	{
		inst_61784201.on_end = func_cine20A;
		inst_61784201.func_dialog("Esta moneda perteneció a un juez que enfrentó un caso muy difícil. En vez de luchar contra la burocracia y buscar la verdad yendo más allá, dejó la decisión al azar.", "Dolesio");
	}
	else
	{
		inst_61784201.on_end = func_cine20B;
		inst_61784201.func_dialog("Es una moneda con la balanza de la justicia, símbolo de equidad y orden. Se dice que fue el amuleto de la suerte de un abogado que nunca perdió un juicio, ya que lo obligaba a esforzarse para que la verdad siempre prevalezca.", "Dolesio");
	}
}

func_cine20A = function(_res)
{
	inst_61784201.on_end = func_cine21A;
	inst_61784201.func_dialog("Lanzó la moneda al aire y, por culpa de esto, una persona fue condenada y otra quedó libre.", "Dolesio");
}
func_cine21A = function(_res)
{
	inst_61784201.on_end = func_cine22A;
	inst_61784201.func_dialog("Sintió tanto remordimiento que nunca quiso retomar la investigación para saber si su decisión fue la correcta o no.", "Dolesio");
}
func_cine22A = function(_res)
{
	inst_61784201.on_end = func_cine23A;
	inst_61784201.func_dialog("¿Qué? Eso es... una burla.", "Abog.");
}
func_cine23A = function(_res)
{
	inst_61784201.on_end = func_cine24A;
	inst_61784201.func_dialog("Toda la vida estudiando leyes, creyendo en la justicia como un sistema sólido, y ahora me dice que un simple giro de una moneda en el aire cambió el rumbo de una vida.", "Abog.");
}
func_cine24A = function(_res)
{
	inst_61784201.on_end = func_cine25A;
	inst_61784201.func_dialog("ME VOY...", "Abog.");
}
func_cine25A = function(_res)
{
	inst_61784201.opened = false;
	inst_13B0B81F.fade_target = 1;
	alarm[1] = 80;
	
	target[1] = 256;
	
	sprite_index = spr_loyar_front;
	image_speed = 1;
	
	audio_sound_gain(music_id, 0, 500);
}

func_cine20B = function(_res)
{
	inst_61784201.on_end = func_cine21B;
	inst_61784201.func_dialog("Lanzó la moneda al aire y, por culpa de esto, una persona fue condenada y otra quedó libre.", "Dolesio");
}

//POSITION
spd = 64;
target = [x, y];

pos = [x, y];

end_flag = 0;
music_id = -1;