if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space)
	{
		if !instance_exists(oSacredAnimalBackground)	
		{
			instance_create_layer(obj_playerEmory.x,obj_playerEmory.y,"overworldInteraction",oSacredAnimalBackground)
		}
	}
}