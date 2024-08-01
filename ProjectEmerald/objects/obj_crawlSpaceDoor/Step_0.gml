switch doorNumber
{
	case 0:
		if global.flag[32]=100&&global.flag[33]=100{global.flag[34]=1} //conditions to open door
		if global.flag[34]=1{instance_destroy(inst_32CBA55B)if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1}}
		else{image_index=0}
	break
	
	case 1:
		if inst_26D719C4.press&&inst_6CB07D54.press{global.flag[35]=1} //conditions to open door
		if global.flag[35]=1{instance_destroy(inst_4BD42B75)if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1}}
		else{image_index=0}	
	break;
	
	case 2:
		if global.flag[39]=1{global.flag[36]=1} //conditions to open door
		if global.flag[36]=1{instance_destroy(inst_1B3F5943_1)if image_index<image_number-1{image_index+=.15}else{image_index=image_number-1}}
		else{image_index=0}
	break;
}