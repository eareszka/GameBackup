function ObjDepth(_obj,_obj2,_y,_ammount,_x = false)
{
	if _obj.y < _obj2.y+_y
	{
		_obj.depth = _obj2.depth+_ammount
	}
	else
	{
		_obj.depth = _obj2.depth-_ammount
	}
	
	if _x != false
	if _obj.x < _obj2.x+_x
	{
		_obj.depth = _obj2.depth+_ammount
	}
	else
	{
		_obj.depth = _obj2.depth-_ammount
	}
}