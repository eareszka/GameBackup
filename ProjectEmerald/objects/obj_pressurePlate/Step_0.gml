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
}