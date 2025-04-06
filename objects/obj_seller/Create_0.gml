//EVENTS
func_cine00 = function(_res)
{
	inst_61784201.on_end = func_cine01;
	inst_61784201.func_dialog("El Mercado de las Ilusiones abre sus puertas.\nUn rincón escondido del mundo, donde los objetos susurran historias...", "???");
}
func_cine01 = function(_res)
{
	inst_61784201.on_end = func_cine02;
	inst_61784201.func_dialog("Algunas bellas, otras, más difíciles de oír.", "???");
}
func_cine02 = function(_res)
{
	inst_61784201.opened = false;
	inst_13B0B81F.fade_target = 0;
	
	alarm[0] = 85;
}
func_cine03 = function(_res)
{
	inst_61784201.on_end = func_cine04;
	inst_61784201.func_dialog("Cada pieza que vendo guarda un pasado: un amor perdido, una traición silenciada, una causa olvidada.", "Dolesio");
}
func_cine04 = function(_res)
{
	inst_61784201.on_end = func_cine05;
	inst_61784201.func_dialog("Debes decidir si revelar la verdad... o conservar la ilusión.", "Dolesio");
}
func_cine05 = function(_res)
{
	inst_61784201.opened = false;
	
	alarm[1] = 45;
}

//BEGIN
inst_61784201.on_end = func_cine00;
inst_61784201.func_dialog("Cada noche, pasadas las 23:30.", "???");
depth = -y;


