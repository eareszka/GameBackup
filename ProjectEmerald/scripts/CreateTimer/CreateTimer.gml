// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateTimer(_timer)
{
	if !instance_exists(oTimer)
	{
		with instance_create_depth(x,y,-9999,oTimer)
		{
			timer = _timer
		}	
	}
}