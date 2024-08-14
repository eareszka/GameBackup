//checks how often random encounters spawn in each room
function encounterRate()
{
	var _ran=irandom_range(0,4)
	_ran*=1000
	
	switch room
	{
		case RM_BROWNSTOWN:
			if (global.enemyKills[0] >= 25) {return 48000+_ran}
			if (global.enemyKills[0] >= 20) {return 24000+_ran}
			if (global.enemyKills[0] >= 10) {return 12000+_ran}
			if (global.enemyKills[0] >= 5) {return 6000+_ran}
			if (global.enemyKills[0] < 5) {return 3000+_ran}	
				
			//}
			//if _group = 2
			//{
				
			//	if (global.enemyKills[0] >= 25) {return 0}
			//	if (global.enemyKills[0] >= 20) {return 1}
			//	if (global.enemyKills[0] >= 10) {return 5}
			//	if (global.enemyKills[0] >= 5) {return 7.5}
			//	if (global.enemyKills[0] < 5) {return 10}
				
			//}
		break;
		
		case RM_HOTELvent1:
			if (global.enemyKills[2] >= 25) {return 48000+_ran}	
			if (global.enemyKills[2] >= 20) {return 8000+_ran}	
			if (global.enemyKills[2] >= 10) {return 4000+_ran}	
			if (global.enemyKills[2] >= 5) {return 2000+_ran}	
			if (global.enemyKills[2] < 5) {return 1000+_ran}
		break;
		
		case RM_HOTELvent2:
			if (global.enemyKills[2] >= 25) {return 48000+_ran}
			if (global.enemyKills[2] >= 20) {return 28000+_ran}
			if (global.enemyKills[2] >= 10) {return 20000+_ran}
			if (global.enemyKills[2] >= 5) {return 16000+_ran}
			if (global.enemyKills[2] < 5) {return 12000+_ran}
		break;
		
		
		case RM_BROWNSTOWNcave:
			if (global.enemyKills[3] >= 25) {return 48000+_ran}
			if (global.enemyKills[3] >= 20) {return 28000+_ran}
			if (global.enemyKills[3] >= 10) {return 20000+_ran}
			if (global.enemyKills[3] >= 5) {return 12000+_ran}
			if (global.enemyKills[3] < 5) {return 6000+_ran}
		break;
		
		
		case RM_FINfarm:
			if global.flag[12]<1{return 3000+_ran}
			else{return 48000+_ran}
		break;
		
		
		case RM_CATACOMBS:
			if (global.enemyKills[4] >= 25) {return 48000+_ran}
			if (global.enemyKills[4] >= 20) {return 28000+_ran}
			if (global.enemyKills[4] >= 10) {return 20000+_ran}
			if (global.enemyKills[4] >= 5) {return 12000+_ran}
			if (global.enemyKills[4] < 5) {return 6000+_ran}
		break;
		
		
		case RM_PLAINVILL:
			if (global.enemyKills[5] >= 25) {return 48000+_ran}
			if (global.enemyKills[5] >= 20) {return 24000+_ran}
			if (global.enemyKills[5] >= 10) {return 12000+_ran}
			if (global.enemyKills[5] >= 5) {return 6000+_ran}
			if (global.enemyKills[5] < 5) {return 3000+_ran}	
		break;
		
		
		case RM_MOUNTAINS:
			if (global.enemyKills[6] >= 25) {return 48000+_ran}
			if (global.enemyKills[6] >= 20) {return 24000+_ran}
			if (global.enemyKills[6] >= 10) {return 12000+_ran}
			if (global.enemyKills[6] >= 5) {return 6000+_ran}
			if (global.enemyKills[6] < 5) {return 3000+_ran}	
		break;
	}
}
