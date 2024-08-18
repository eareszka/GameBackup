if hit||x > camera_get_view_x(view_camera[0])+230
{
	image_alpha-=.05
	if hit
	{
		if !hitSet
		{
			instance_create_depth(x,y+30,depth-1, oFloatingText, {subtraction: 0.05, font: fnM5x7, col: c_lime, text: "Hit!"})
			hitSet=true
		}
		image_index = 1
	}
	else
	{
		image_index = 0	
	}
}
else
{
	image_index = 0	
}

//moves bar
if !hit
{
	x+=3
}
else
{
	x+=0	
}



