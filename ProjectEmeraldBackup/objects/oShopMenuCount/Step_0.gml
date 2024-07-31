if (active)
{
	//Control menu with keyboard
	hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	hover += keyboard_check_pressed(ord("S")) -  keyboard_check_pressed(ord("W"))
	
	if count
	{
		if (hover > 4) hover = 0;
		if (hover < 0) hover = 4;
	
		if hover = 0 arrowPos = 38 
		if hover = 1 arrowPos = 48
		if hover = 2 arrowPos = 58
		if hover = 3 arrowPos = 68
		if hover = 4 arrowPos = 78

		//Execute selected option
		if	(keyboard_check_pressed(vk_space)) 
		{
			ShopBuy(item.price*(hover+1),itemIndex,hover+1)
		}
	}
	if confirm
	{
		if (hover > 1) hover = 0;
		if (hover < 0) hover = 1;
	
		if hover = 0 arrowPos = 38 
		if hover = 1 arrowPos = 48

		//Execute selected option
		if	(keyboard_check_pressed(vk_space)) 
		{
			if hover = 0
			{
				ShopConfirm(questItem,item.price)	
			}
			if hover = 1
			{
				instance_destroy(self)
			}
		}
	
	}
	
	if (keyboard_check_pressed(vk_escape))
	{   
		audio_play_sound(moveArrow1,1,false)
		instance_destroy(self)
	}
	if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
	{
		audio_play_sound(moveArrow2,1 ,false)
	} 
}



