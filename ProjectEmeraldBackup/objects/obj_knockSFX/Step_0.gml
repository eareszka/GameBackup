with obj_playerEmory
{
	if (place_meeting(x, y, obj_knockSFX))
	{
		if (keyboard_check_pressed(vk_space))
		{
			if !instance_exists(oMainMenu) && !instance_exists(obj_textBox)
			{
				var _randomSoundIndex = irandom_range(1, 3);
				if _randomSoundIndex = 1
				{
					if (!audio_is_playing(knock1) && !audio_is_playing(knock2) && !audio_is_playing(knock3))
					{
						audio_play_sound(knock1, 0, false);
						with other{create_textbox(text_id)}
					}
				}
				else if _randomSoundIndex = 2
				{
					if (!audio_is_playing(knock1) && !audio_is_playing(knock2) && !audio_is_playing(knock3))
					{
						audio_play_sound(knock2, 0, false);
						with other{create_textbox(text_id)}
					}
				}
				else if _randomSoundIndex = 3
				{
					if (!audio_is_playing(knock1) && !audio_is_playing(knock2) && !audio_is_playing(knock3))
					{
						audio_play_sound(knock3, 0, false);
						with other{create_textbox(text_id)}
					}
				}
			}
		}
		if (audio_is_playing(knock1) || audio_is_playing(knock2) || audio_is_playing(knock3))
		{
			speedWalk = 0	
		}
	}
}