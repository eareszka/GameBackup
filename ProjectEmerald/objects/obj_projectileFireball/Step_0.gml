if instance_exists(obj_projectileGenerator)
{
	if place_meeting(x,y,obj_projectileGenerator.target)&&!destroy
	{
		miss=true
		if !set
		{
			if !instance_exists(obj_playerOnFire){instance_create_depth(obj_projectileGenerator.target.x,obj_projectileGenerator.target.y,obj_projectileGenerator.target.depth+1,obj_playerOnFire,{target: obj_projectileGenerator.target})}
			else{obj_playerOnFire.image_alpha=1}
			set=true
		}	
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
		sprite_index=spr_projectileFireballDisperse
		
		if y>obj_projectileGenerator.target.y+18{spd=0}
		
		image_alpha-=.05
		
		if !set2
		{
			instance_create_depth(x,y-4,-16000,obj_fireballExplosion)
			set2=true
		}
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


if y>ystart+5
{
	if image_xscale<.4{image_xscale+=.0150}
	if image_yscale<.4{image_yscale+=.0150}
}