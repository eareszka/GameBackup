if instance_exists(obj_projectileGenerator)
{
	if timer<0
	{
		timer=4.5
		instance_create_depth(x,y-12,oBattle.unitDepth+10,obj_defendStanceLine,{image_index: subimg})	
	}
}

timer-=1