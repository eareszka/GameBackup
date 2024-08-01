if (active) && !instance_exists(oBattleEffect)
{
	//Control menu with keyboard
	hover += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
	hover += keyboard_check_pressed(ord("D")) -  keyboard_check_pressed(ord("A"))

	if (hover > maxHover) hover = 0;
	if (hover < 0) hover = maxHover;
	
	if hover = 0 arrowPos = 143
	if hover = 1 arrowPos = 216
	if hover = 2 arrowPos = 230
	if hover = 3 arrowPos = 300
	
	//Execute selected option
	if	(keyboard_check_pressed(vk_space)) 
	{
		audio_play_sound(moveArrow1,1,false)
		for (var i = 0; i < array_length(global.party); i++)
		{
			array_push(units, global.party[i]);
		}
		
		if variable_struct_exists(item,"heal")
		{
			var _amount = item.heal
		}
		if variable_struct_exists(item,"gainMp")
		{
			var _amount = item.gainMp
		}
		
		MenuChangeHP(hover,item,_amount)
	}
	
	if (keyboard_check_pressed(vk_escape))
	{   
		audio_play_sound(moveArrow1,1,false)
		instance_destroy(self)
	}
	if keyboard_check_pressed(vk_up) 
	{
		audio_play_sound(moveArrow2,1 ,false)
	} 
	if keyboard_check_pressed(vk_down)
	{
		audio_play_sound(moveArrow2,1,false)
	}
}


