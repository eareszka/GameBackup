if (active) && !instance_exists(oItemMenu) && !instance_exists(oQuestMenu) && !instance_exists(oBattle) && !instance_exists(obj_encounterMaster)
{
	//Control menu with keyboard
	hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	hover += keyboard_check_pressed(ord("S")) -  keyboard_check_pressed(ord("W"))

	if (hover > array_length(options)-1) hover = 0;
	if (hover < 0) hover = array_length(options)-1;

	//Execute selected option
	if	(keyboard_check_pressed(vk_space)) 
	{
		if (array_length(options[hover]) > 1) && (options[hover][3] == true)
		{
			if (options[hover][1] != -1)
			{
				var _func = options[hover][1];
				if (options[hover][2] != -1) script_execute_ext(_func,options[hover][2]); 
				else _func();
			}
		}
	}
	
	if (keyboard_check_pressed(vk_escape))
	{
		audio_play_sound(select2,1,false)
		if (subMenuLevel > 0) 
		{
			MenuGoBack();
		}
		else
		{
			instance_destroy(self)
		}
	}
	
	if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
	{
		audio_play_sound(select2,1,false)
	}
	
	if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
	{
		audio_play_sound(moveArrow2,1,false)
	}
}



