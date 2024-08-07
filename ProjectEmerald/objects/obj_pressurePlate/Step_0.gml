switch plateNumber
{
	case 0:
		if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=2&&!press{press=true global.flag[29]=0} //check if carrying obj and if flag not set
		if press{if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1}}
		
		if !press{image_index=0}
	break;
	
	case 1:
		if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=2&&!press{press=true global.flag[29]=0} //check if carrying obj and if flag not set
		if press{if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1}}

		if !press{image_index=0}
	break;
	
	case 2:
		if global.flag[44]=0//not activated
		{
			if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=2&&!press{press=true global.flag[29]=0} //check if carrying obj and if flag not set
			if press{if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1 }global.flag[44]=1} //if pressed

			if !press{image_index=0}
		}
		if global.flag[44]=1//activated
		{
			inst_35A9CC7F.activated=false
			inst_55F4831D.activated=false
			inst_182596B2.activated=false
			image_index=image_number-1
		}
	break;
	
	case 3:
		if global.flag[45]=0//not activated
		{
			if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=2&&!press{press=true global.flag[29]=0} //check if carrying obj and if flag not set
			if press{if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1 }global.flag[45]=1} //if pressed

			if !press{image_index=0}
		}
		if global.flag[45]=1//activated
		{
			inst_936CB4D.activated=true
			inst_751314EA.activated=true
			image_index=image_number-1
		}
	break;
}