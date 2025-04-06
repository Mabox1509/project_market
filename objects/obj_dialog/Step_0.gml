if(!opened)
exit;

if(dialog_state == 0)
{
	if(character_index < string_length(text))
	{
		
		if(keyboard_check(ord("X")))
		{
			text_write = text;
			character_index = 100000;
		}
		
		next_timer -= global.clock.dt;
		if(next_timer <= 0)
		{

			
			var _char = string_char_at(text, character_index + 1);
			if(_char = ".")
			{
				next_timer = 0.5;
			}
			else if(_char = ",")
			{
				next_timer = 0.25;
			}
			else if(_char = " ")
			{
				next_timer = 0;
			}
			else
			{
				next_timer = 0.025;
			}
	
			text_write += _char;
			character_index++;
		
			audio_play_sound(sfx_write, 100, false, 0.5, 0, random_range(0.5, 1.1));
		}
	}
	else
	{
		if(array_length(options) > 0)
		{
			dialog_state = 1;
			cursor_index = 0;
			
			for(var _i = 0;_i < array_length(options);_i++)
			{
				box_size[0] = max(box_size[0], string_width(options[_i]) + 6);
			}
			
			
			box_size[1] = (array_length(options) * string_height("A")) + 6;
			
			
		}
		else
		{
			if(keyboard_check_pressed(vk_enter))
			{
				audio_play_sound(sfx_next, 100, false);
		
				text_write = "";
				character_index = 0;

				next_timer = 0.1;
				dialog_state = 2;
				
				on_end(-1);
			}
		}
		
	}
}
else if(dialog_state == 1)
{
	if(keyboard_check_pressed(vk_up))
	{
		audio_play_sound(sfx_write, 100, false);
		
		cursor_index--;
		if(cursor_index < 0)
			cursor_index = array_length(options) -1;
	}
	else if(keyboard_check_pressed(vk_down))
	{
		audio_play_sound(sfx_write, 100, false);
		
		cursor_index++;
		if(cursor_index >= array_length(options))
			cursor_index = 0;
	}
	
	
	if(keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(sfx_next, 100, false);
		
		text_write = "";
		character_index = 0;

		next_timer = 0.1;
		
		dialog_state = 2;
		
		on_end(cursor_index);
	}
}