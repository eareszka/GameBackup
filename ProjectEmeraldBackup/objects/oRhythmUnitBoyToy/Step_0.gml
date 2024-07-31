if !set
{
	x += xPos
	set = true
}

if !hit
{
	image_index = 0
}

if hit
{
	global.success = 1
	image_index = 1
	
	if y < camera_get_view_y(view_camera[0])-5
	{
		fall = true	
	}
	
	if !fall
	{
		gravity = 0.5;
	}
	if fall
	{
		gravityAmmount += .15
		gravity = gravityAmmount;	
	}
	direction = random_range(85,95);
	speed = 1.5;
}
else
{
	global.success = 0
}

if y > camera_get_view_y(view_camera[0])+300
{
	instance_destroy()
}

if !hit
{
	if oRhythmBar5.x > camera_get_view_x(view_camera[0])+300
	{
		if image_alpha > 0
		{
			image_alpha -= .1	
		}
		else
		{
			instance_destroy()
		}
	}
}