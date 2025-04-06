if(!opened)
exit;

if(speaker_name != "")
	draw_sprite(spr_name, 0, 1, 116);

draw_sprite_stretched(spr_dialog, 0, 0, 128, 320, 52);


draw_set_font(fnt_monogram);

draw_set_color(#F2BF4A);
draw_text(10, 117, speaker_name);

draw_set_color(#9E7310);
draw_text(9, 116, speaker_name);


draw_set_color(#B9A168);
draw_text_ext(3, 130, text_write, -1, 296);

draw_set_color(#242424);
draw_text_ext(2, 129, text_write, -1, 296);


if(character_index >= string_length(text))
{
	
	if(array_length(options) > 0)
	{
		var _h = string_height("A");
		
		draw_sprite_stretched(spr_dialog, 0, 320 - box_size[0], 128 - box_size[1], box_size[0], box_size[1]);
		for(var _i = 0;_i < array_length(options);_i++)
		{
			var _x = (320 - box_size[0]) + 3;
			var _y = (( 128 - box_size[1]) + 3) + (_i * _h);
			
			draw_set_color(#B9A168);
			draw_text(_x+1, _y+1, options[_i]);

			draw_set_color(#242424);
			draw_text(_x, _y, options[_i]);
		}
		
		draw_sprite(spr_next, 1, (320 - box_size[0])-6, (( 128 - box_size[1]) + 3) + (cursor_index * _h)+1);
	}
	else
	{
		draw_sprite(spr_next, 0, 304, 164 + floor(sin(global.clock.timer * 2.5) * 2));
	}
}