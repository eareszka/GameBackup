switch type
{
	case 0:
		cutscene_setSprite(obj_torch,spr_tourch,0,5)	
	break;
	
	case 1:
		cutscene_setSprite(obj_torch,spr_tourch,7,12)	
	break;
	
	case 2:
		cutscene_setSprite(obj_torch,spr_tourch,14,19)	
	break;
}

switch interactive
{
	//crawlSpace1
	case 0:
		if global.flag[32]=0{rotation=0}	
		if global.flag[32]=1{rotation=270 global.flag[32]=100}		
		if global.flag[32]=100{rotation=270}
	break;
	//crawlSpace2
	case 1:
		if global.flag[33]=0{rotation=0}	
		if global.flag[33]=1{rotation=270 global.flag[33]=100}		
		if global.flag[33]=100{rotation=270}
	break;
	
	
	
	//catacombs1
	case 2:
		if global.flag[47]=0{rotation=0}	
		if global.flag[47]=1{rotation=270}	
		if global.flag[47]=2{rotation=180 global.flag[47]=100}	
		if global.flag[47]=3{rotation=90}	
		if global.flag[47]=100{rotation=180}
	break;
	//catacombs2
	case 3:
		if global.flag[48]=0{rotation=0}	
		if global.flag[48]=1{rotation=270}	
		if global.flag[48]=2{rotation=180 global.flag[48]=100}	
		if global.flag[48]=3{rotation=90}	
		if global.flag[48]=100{rotation=180}
	break;
	//catacombs3
	case 4:
		if global.flag[56]=0{rotation=0}	
		if global.flag[56]=1{rotation=270}	
		if global.flag[56]=2{rotation=180 global.flag[56]=100}	
		if global.flag[56]=3{rotation=90}	
		if global.flag[56]=100{rotation=180}
	break;
}