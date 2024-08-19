if instance_exists(obj_projectileGenerator)
{
	if place_meeting(x,y,obj_projectileGenerator.target)&&obj_projectileGenerator.target.dodging=false
	{
		miss=true
		if !set{oBattle.success+=1 set=true}	
	}

	if !miss
	{
		if y>obj_projectileGenerator.target.y-8
		{
			destroy=true
		}
	}
}