if oBattle.defendEnd=false
{
	switch global.DefendRows
	{
		case 3:
			if timer<0
			{
				timer=4.5
				instance_create_depth(x,y,oBattle.unitDepth+10,obj_defendStanceLine3,{image_index: subimg})	
			}
		break
		
		case 5:
			if timer<0
			{
				timer=4.5
				instance_create_depth(x,y,oBattle.unitDepth+10,obj_defendStanceLine5,{image_index: subimg})	
			}
		break
	}
}

timer-=1

if oBattle.defendEnd=true
{
	instance_destroy()	
}