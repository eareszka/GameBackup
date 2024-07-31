x+=3

if x>1000
{
	x=camera_get_view_x(view_camera[0])+x
	instance_destroy()	
}

if alpha < 1
{
	color = c_lime	
}

