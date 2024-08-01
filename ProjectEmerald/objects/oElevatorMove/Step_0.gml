//how to activate the flag
if place_meeting(x,y,obj_playerEmory)
{
	if keyboard_check_pressed(vk_space)
	{
		if !instance_exists(obj_elevatorOptions)
		{
			instance_create_depth(0,0,-9999,obj_elevatorOptions)	
		}
	}
}