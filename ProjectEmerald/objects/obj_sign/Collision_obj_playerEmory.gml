if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
{	
	if !instance_exists(oMainMenu)
	{
		if instance_exists(obj_partyStatMenu)
		{
			instance_destroy(obj_partyStatMenu)	
		}
		if !instance_exists(obj_textBox)
		{
			create_textbox(text_id)	
		}
	}
}