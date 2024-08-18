function cutscene_move_obj(_obj,_x,_y,_speed,_end)
{
	var dir = point_direction(_obj.x, _obj.y, _x, _y);

	// Move the object towards the target
	_obj.x += lengthdir_x(_speed, dir);
	_obj.y += lengthdir_y(_speed, dir);


	if (point_distance(_obj.x, _obj.y, _x, _y) <= _speed) 
	{	
		if _end
		{
			cutscene_end_action()	
		}
	}	

	if _obj = obj_camera
	{
		obj_camera.follow = -1
	}
}