if expand = false
{

	if (follow != noone)
	{
		xTo = follow.x;
		yTo = follow.y;	
	}
	camWidth = 480;
	camHeight = 270;

	//change values when you want
	x += (xTo - x)/smoothness;
	y += (yTo - y)/smoothness;
	
	camera_set_view_size(view_camera[0],camWidth,camHeight)
	camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5));
}
else
{
	if (follow != noone)
	{
		xTo = follow.x;
		yTo = follow.y;	
	}
	//camWidth = 960;
	//camHeight = 540;
	//change values when you want
	x += (xTo - x)/smoothness;
	y += (yTo - y)/smoothness;
	camera_set_view_size(view_camera[0],camWidth,camHeight)
	camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5));
}



show_debug_message(x)
show_debug_message(y)