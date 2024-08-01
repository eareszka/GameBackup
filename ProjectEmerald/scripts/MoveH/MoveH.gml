// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveH(_obj,_ammount,_speed,_half=undefined,_randomize=undefined,_multiple=false)
{
	if !_multiple
	{
		if !instance_exists(oMoveH)
		{
			with instance_create_depth(0,0,0,oMoveH)	
			{
				obj=_obj
				ammount=_ammount
				xspeed=_speed
				half=_half
				randomDir=_randomize
			}
		}
		else
		{
			_obj.x=oMoveH.startx
			instance_destroy(oMoveH)
			with instance_create_depth(0,0,0,oMoveH)	
			{
				obj=_obj
				ammount=_ammount
				xspeed=_speed
				half=_half
				randomDir=_randomize
			}
		}
	}
	if _multiple
	{
		with instance_create_depth(0,0,0,oMoveH)	
		{
			obj=_obj
			ammount=_ammount
			xspeed=_speed
			half=_half
			randomDir=_randomize
		}
	}
}