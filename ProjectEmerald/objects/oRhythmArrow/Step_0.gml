//for correct keys 
right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

//for wrong keys
right_wrong = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_wrong = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_wrong = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_wrong = keyboard_check(vk_down) || keyboard_check(ord("S"));

if !setup{xSpeedTemp=xSpeed setup=true}


if !throwArrow
{
	x+=xSpeed
}


if hit
{
	alpha-=.1
	color = c_lime
	
	if !set{oBattle.success+=1 set=true}
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

if disappear&&!hit
{
	if x<(camera_get_view_width(view_camera[0])/2)-75
	{
		alpha=0
	}
	else
	{
		
		alpha+=.025
	}
}

if !slowDown&&!perfectAbsorbed
{
	if hitHold
	{	
		xSpeed=xSpeedTemp*.5
	}
	else
	{
		xSpeed=xSpeedTemp
	}
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


if perfectAbsorbed
{
	rot=rot-sin(20*0.1)*1
	perfectEndTimer-=.5
	
	//initual absorbed point
	if perfectEndTimer<65
	{
		oBattle.perfectArrowAbsorbed=true
		color=c_lime
		xSpeed=0
		slowDownAmmt=0
		//alpha-=.025
		fade=true
	}
	else
	{
		//moving arrow
		move_towards_point((camera_get_view_width(view_camera[0])/2)+10,(camera_get_view_height(view_camera[0])/2)-40,(3))	
		xSpeed-=slowDownAmmt
		slowDownAmmt+=(0.0003*xSpeedTemp)
	}
}

if slowDown
{
	xSpeed-=slowDownAmmt	
	slowDownAmmt+=(0.0003*xSpeedTemp)

	alpha-=.05	
}
