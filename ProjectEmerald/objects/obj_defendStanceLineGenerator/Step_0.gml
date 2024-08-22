if oBattle.defendEnd=false
{
	if timer<0
	{
		timer=4.5
		instance_create_depth(x,y,oBattle.unitDepth+10,obj_defendStanceLine,{image_index: subimg})	
	}
}

timer-=1

if oBattle.defendEnd=true
{
	instance_destroy()	
}