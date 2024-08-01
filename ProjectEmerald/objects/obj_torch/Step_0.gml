switch type
{
	case 0:
		cutscene_setSprite(obj_torch,spr_tourch,0,5)	
	break;
	
	case 1:
		cutscene_setSprite(obj_torch,spr_tourch,7,12)	
	break;
	
	case 2:
		cutscene_setSprite(obj_torch,spr_tourch,13,18)	
	break;
}

switch interactive
{
	case 0:
		if global.flag[32]=0{rotation=0}	
		if global.flag[32]=1{rotation=270}		
		if global.flag[32]=2{xOff=1.5 rotation=180 global.flag[32]=100}	
		if global.flag[32]=100{rotation=180}
	break;
	
	case 1:
		if global.flag[33]=0{rotation=0}	
		if global.flag[33]=1{rotation=270}		
		if global.flag[33]=2{xOff=1.5 rotation=180 global.flag[33]=100}	
		if global.flag[33]=100{rotation=180}
	break;
	
	//case 2:
	//	if global.flag[32]=0{rotation=0}	
	//	if global.flag[32]=1{rotation=270}	
	//	if global.flag[32]=2{rotation=180}	
	//	if global.flag[32]=3{rotation=90}	
	//break;
}