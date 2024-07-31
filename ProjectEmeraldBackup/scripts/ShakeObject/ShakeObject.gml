// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShakeObject(_obj,_ammount,_timer,_hOnly=undefined,_vOnly=undefined)
{
	if !instance_exists(oShake)
	{
		with instance_create_depth(0,0,0,oShake)
		{
			obj = _obj
			ammount = _ammount
			timer = _timer
			hOnly=_hOnly
			vOnly=_vOnly
		}
	}
}