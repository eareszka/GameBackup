if instance_exists(obj_projectileGenerator)
{
	if place_meeting(x,y,obj_projectileGenerator.target)&&!destroy
	{
		miss=true
		if !set{oBattle.success+=1 set=true}	
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
		image_index=1
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