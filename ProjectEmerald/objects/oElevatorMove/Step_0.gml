//how to activate the flag
if place_meeting(x,y,obj_playerEmory)
{
	if !instance_exists(obj_elevatorOptions)
	{
		if keyboard_check_pressed(vk_space)&&createTimer<0&&!instance_exists(oShakeCamera)
		{
			instance_create_depth(0,0,-9999,obj_elevatorOptions)	
		}
	}
}
if createTimer>-100{createTimer--}