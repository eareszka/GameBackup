if !throwArrow
{
	x+=xSpeed
}


if hit
{
	alpha-=.05
	color = c_lime
}
else
{
	if reverse = true
	{
		color = c_red	
	}
	if hold = true
	{
		color = c_yellow
	}
}

if flicker
{
	alpha = (sin(get_timer()/50000)+1)
}

if throwArrow
{
	//makes sure you cant hit before top
	if n < 50
	{
		hit = false	
	}
	
	if n < -96
	{
		alpha = 0
	}
	else
	{
		if !hit
		{
			alpha = 1
		}
	}
	
	if n < 106
	{
		x = circle_center_x + lengthdir_x(radius_of_circle, n);
		y = circle_center_y + lengthdir_y(radius_of_circle, n);
		n += movement_speed;	
	}
	else
	{
		throwDone = true
		x-=movement_speed	
	}
}

if dontShow
{
	instance_destroy(self)
}

if fade
{
	image_alpha-=.1
	if image_alpha<0
	{instance_destroy()}
}