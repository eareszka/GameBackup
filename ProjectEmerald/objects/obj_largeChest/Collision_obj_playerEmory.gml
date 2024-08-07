if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
{	
	if !instance_exists(oMainMenu)
	{
		if !global.chestOpened[chest_id] = 1
		{
			switch item
			{
				case global.quest.annasFlashLight:
					global.quest.annasFlashLight.available=true
				break;
			}
			if !instance_exists(obj_textBox)
			{
				create_textbox(text_id)	
				if instance_exists(obj_partyStatMenu)
				{
					instance_destroy(obj_partyStatMenu)	
				}
			}
			global.chestOpened[chest_id] = 1
		}
	}
}