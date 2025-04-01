//[MACROS]
#macro SCREEN_WIDTH 320
#macro SCREEN_HEIGHT 180


//[GLOBAL]
if(!variable_global_exists("camera"))
{
	global.camera = 
	{
		inst : id,
		fullscreen : false,
		
		tint : c_white,
		alpha : 1,
		blend : bm_normal
	};
}
else 
{
	instance_destroy(id);
	exit;
}


//[VARIABLES]
fullscreen_scale = floor(min(display_get_width() / SCREEN_WIDTH, display_get_height() / SCREEN_HEIGHT));
windowed_scale = floor(fullscreen_scale * 0.75);

viewport = camera_create_view(x, y, SCREEN_WIDTH, SCREEN_HEIGHT);


//INIT
window_set_size(SCREEN_WIDTH * windowed_scale, SCREEN_HEIGHT * windowed_scale);
window_center();

application_surface_draw_enable(false);
surface_resize(application_surface, SCREEN_WIDTH, SCREEN_HEIGHT);