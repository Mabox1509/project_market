//PRE CALCS
var _scale = global.camera.fullscreen ? fullscreen_scale : windowed_scale;
var _off = 
[
	floor((window_get_width() - (SCREEN_WIDTH * _scale)) / 2),
	floor((window_get_height() - (SCREEN_HEIGHT * _scale)) / 2)
];

var _blend = gpu_get_blendmode();


//DRAW
shader_set(sh_screen);

gpu_set_blendmode(global.camera.blend);

draw_surface_ext(application_surface, _off[0], _off[1], _scale, _scale, 0, global.camera.tint, global.camera.alpha);

shader_reset();
gpu_set_blendmode(_blend);