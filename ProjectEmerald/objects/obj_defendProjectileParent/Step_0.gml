if instance_exists(obj_projectileGenerator)
{
	if place_meeting(x,y,obj_projectileGenerator.target)&&!destroy
	{
		miss=true
		if !set{oBattle.success+=1 set=true}	
	}

	if !miss
	{
		if y>obj_projectileGenerator.target.y+3
		{
			destroy=true
		}
	}
	
	
	//for whatever reason if it somehow misses and hits it gets destroyed
	if miss&&destroy
	{
		instance_destroy()	
	}
}