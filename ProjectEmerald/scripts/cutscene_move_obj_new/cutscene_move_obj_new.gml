function cutscene_move_obj_new(_obj,_x,_y,_speed,_end)
{
	var dir = point_direction(_obj.x, _obj.y, _x, _y);

	if (point_distance(_obj.x, _obj.y, _x, _y) <= _speed) 
	{	
		if _end
		{
			cutscene_end_action()	
		}
	}	
	else
	{
		// Move the object towards the target
		move_towards_point(_x, _y, min(point_distance(_obj.x, _obj.y, _x, _y), _speed));		
	}

	if _obj = obj_camera
	{
		obj_camera.follow = -1
	}
}