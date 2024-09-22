//checks how often random encounters spawn in each room
function encounterRate()
{
	var _ran=irandom_range(0,4)
	_ran*=1000
	
	switch room
	{
		case RM_BROWNSTOWN:
			if (global.enemyKills[0] >= 25) {return 1}
			if (global.enemyKills[0] >= 20) {return 2}
			if (global.enemyKills[0] >= 10) {return 3}
			if (global.enemyKills[0] >= 5) {return 4}
			if (global.enemyKills[0] < 5) {return 5}	
		break;
		
		case RM_HOTELvent1:
			if (global.enemyKills[2] >= 25) {return 1}	
			if (global.enemyKills[2] >= 20) {return 2}	
			if (global.enemyKills[2] >= 10) {return 3}	
			if (global.enemyKills[2] >= 5) {return 4}	
			if (global.enemyKills[2] < 5) {return 5}
		break;
		
		case RM_HOTELvent2:
			if (global.enemyKills[2] >= 25) {return 1}
			if (global.enemyKills[2] >= 20) {return 2}
			if (global.enemyKills[2] >= 10) {return 3}
			if (global.enemyKills[2] >= 5) {return 4}
			if (global.enemyKills[2] < 5) {return 5}
		break;
		
		
		case RM_BROWNSTOWNcave:
			if (global.enemyKills[3] >= 25) {return 1}
			if (global.enemyKills[3] >= 20) {return 2}
			if (global.enemyKills[3] >= 10) {return 3}
			if (global.enemyKills[3] >= 5) {return 4}
			if (global.enemyKills[3] < 5) {return 5}
		break;
		
		
		case RM_FINfarm:
			if global.flag[12]<1{return 4}
			else{return 48000+_ran}
		break;
		
		
		case RM_CATACOMBS:
			if (global.enemyKills[4] >= 25) {return 1}
			if (global.enemyKills[4] >= 20) {return 2}
			if (global.enemyKills[4] >= 10) {return 3}
			if (global.enemyKills[4] >= 5) {return 4}
			if (global.enemyKills[4] < 5) {return 5}
		break;
		
		
		case RM_PLAINVILL:
			if (global.enemyKills[5] >= 25) {return 1}
			if (global.enemyKills[5] >= 20) {return 2}
			if (global.enemyKills[5] >= 10) {return 3}
			if (global.enemyKills[5] >= 5) {return 4}
			if (global.enemyKills[5] < 5) {return 5}	
		break;
		
		
		case RM_MOUNTAINS:
			if (global.enemyKills[6] >= 25) {return 1}
			if (global.enemyKills[6] >= 20) {return 2}
			if (global.enemyKills[6] >= 10) {return 3}
			if (global.enemyKills[6] >= 5) {return 4}
			if (global.enemyKills[6] < 5) {return 5}	
		break;
	}
}
