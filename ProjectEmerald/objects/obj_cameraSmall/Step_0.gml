	if (follow != noone)
	{
	xTo = follow.x;
	yTo = follow.y;	
	}
	camWidth = 384;
	camHeight = 216;

	//change values when you want
	x += (xTo - x)/5;
	y += (yTo - y)/5;
	
	camera_set_view_size(view_camera[0],384,216)
	camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5));
