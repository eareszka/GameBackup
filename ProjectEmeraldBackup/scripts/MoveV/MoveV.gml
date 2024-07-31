// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveV(_obj,_ammount,_speed)
{
	if !instance_exists(oMoveV)
	{
		with instance_create_depth(0,0,0,oMoveV)	
		{
			obj=_obj
			ammount=_ammount
			yspeed=_speed
		}
	}
	else
	{
		_obj.y=oMoveV.starty
		instance_destroy(oMoveV)
		with instance_create_depth(0,0,0,oMoveV)	
		{
			obj=_obj
			ammount=_ammount
			yspeed=_speed
		}
	}
}