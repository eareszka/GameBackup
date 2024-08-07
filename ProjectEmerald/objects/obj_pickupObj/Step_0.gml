switch objectType
{
	//boxes
	case 0:
		image_index=0
		if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=0
		{
			global.flag[29]=2 instance_destroy(self)//pickup
		}
		if global.flag[35]=1{instance_destroy(self)}
	break
	
	//lumber pile
	case 1:
		image_index=1
		if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=0
		{
			global.flag[29]=1 instance_destroy(self)//pickup
		}
		if global.flag[3]=1{instance_destroy(self)}
	break
	
	//hotelvent1
	case 2:
		image_index=0
		if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=0
		{
			global.flag[29]=2 instance_destroy(self)//pickup
		}
		if global.flag[44]=1&&global.flag[45]=1{instance_destroy(self)}
	break
	
	//hotelvent2
	case 3:
		image_index=0
		if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=0
		{
			global.flag[29]=2 instance_destroy(self)//pickup
		}
		if global.flag[44]=1&&global.flag[45]=1{instance_destroy(self)}
	break
}
