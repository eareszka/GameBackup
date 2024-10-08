if instance_exists(obj_projectileGenerator)
{
	if place_meeting(x,y,obj_projectileGenerator.target)&&!destroy
	{
		miss=true
		if !set{obj_projectileGenerator.target.stunned=true set=true}	
	}

	if !miss
	{
		if y>obj_projectileGenerator.target.y+15
		{
			destroy=true
		}
	}
	
	//for whatever reason if it somehow misses and hits it gets destroyed
	if miss&&destroy
	{
		instance_destroy()	
	}
	
	if image_alpha<1{image_alpha+=.025}

	if destroy&&!miss
	{
		if image_xscale>0{image_xscale-=.05}
		if image_yscale>0{image_yscale-=.05}
		image_alpha-=.1
		image_blend=c_green
	}


	if miss&&!destroy
	{
		image_blend = c_red
		image_alpha-=.1
	}

	if image_alpha<0
	{
		instance_destroy()
	}
}

if instance_exists(obj_defendStanceLineGenerator)
{
	
	var _speed = spd
	var _setupPointX=xDest
	var _setupPointY=obj_defendStanceLineGenerator.y+50

	move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));	
}

if y>ystart+50
{
	if image_index<image_number-1
	{
		image_index+=.2	
	}
	else
	{
		image_index=image_number-1
	}
}
else
{
	if image_index<2
	{
		image_index+=.2
	}
	else
	{
		image_index=0	
	}
}

alpha = 0.5 + 0.5 * sin(current_time * 0.0070);