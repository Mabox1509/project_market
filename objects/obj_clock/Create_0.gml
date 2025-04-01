//[GLOBAL]
if(!variable_global_exists("clock"))
{
	global.clock = 
	{
		inst : id,
		
		
		timer : 0,
		dt : 0,
		
		frame_count : 0,
	};
}
else 
{
	instance_destroy(id);
	exit;
}


