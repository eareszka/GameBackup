//checks how often random encounters spawn in each room
function encounterRate(_group=undefined)
{
	switch room
	{
		case RM_BROWNSTOWN:
			if _group = 1
			{
				
				if (global.enemyKills[0] >= 25 && global.enemyKills[2] >= 25) {return 0}
				if (global.enemyKills[0] >= 20 || global.enemyKills[2] >= 20) {return 1}
				if (global.enemyKills[0] >= 10 || global.enemyKills[2] >= 10) {return 5}
				if (global.enemyKills[0] >= 5 || global.enemyKills[2] >= 5) {return 7.5}
				if (global.enemyKills[0] < 5 && global.enemyKills[2] < 5) {return 10}	
				
			}
			if _group = 2
			{
				
				if (global.enemyKills[0] >= 25 && global.enemyKills[1] >= 25) {return 0}
				if (global.enemyKills[0] >= 20 || global.enemyKills[1] >= 20) {return 1}
				if (global.enemyKills[0] >= 10 || global.enemyKills[1] >= 10) {return 5}
				if (global.enemyKills[0] >= 5 || global.enemyKills[1] >= 5) {return 7.5}
				if (global.enemyKills[0] < 5 && global.enemyKills[1] < 5) {return 10}
				
			}
		break;
		
		
		case RM_BROWNSTOWNcave:
		
			if (global.enemyKills[3] >= 25 && global.enemyKills[4] >= 12) {return 0}
			if (global.enemyKills[3] >= 20 || global.enemyKills[4] >= 8) {return 1}
			if (global.enemyKills[3] >= 10 || global.enemyKills[4] >= 4) {return 5}
			if (global.enemyKills[3] >= 5 || global.enemyKills[4] >= 2) {return 7.5}
			if (global.enemyKills[3] < 5 && global.enemyKills[4] < 2) {return 10}	
			
		break;
		
		
		case RM_FINfarm:
		
			if global.flag[12]<1{return 10}
			else{return 0}

		break;
		
		
		case RM_PLAINVILL:
		
			if (global.enemyKills[6] >= 25 && global.enemyKills[8] >= 12) {return 0}
			if (global.enemyKills[6] >= 20 || global.enemyKills[8] >= 8) {return 1}
			if (global.enemyKills[6] >= 10 || global.enemyKills[8] >= 4) {return 5}
			if (global.enemyKills[6] >= 5 || global.enemyKills[8] >= 2) {return 7.5}
			if (global.enemyKills[6] < 5 && global.enemyKills[8] < 2) {return 10}
		break;
		
		
		case RM_CATACOMBS:
		
			if (global.enemyKills[9] >= 25 && global.enemyKills[10] >= 12) {return 0}
			if (global.enemyKills[9] >= 20 || global.enemyKills[10] >= 8) {return 1}
			if (global.enemyKills[9] >= 10 || global.enemyKills[10] >= 4) {return 5}
			if (global.enemyKills[9] >= 5 || global.enemyKills[10] >= 2) {return 7.5}
			if (global.enemyKills[9] < 5 && global.enemyKills[10] < 2) {return 10}
		break;
		
		
		case RM_MOUNTAINS:
		
			if (global.enemyKills[11] >= 25 && global.enemyKills[12] >= 12) {return 0}
			if (global.enemyKills[11] >= 20 || global.enemyKills[12] >= 8) {return 1}
			if (global.enemyKills[11] >= 10 || global.enemyKills[12] >= 4) {return 5}
			if (global.enemyKills[11] >= 5 || global.enemyKills[12] >= 2) {return 7.5}
			if (global.enemyKills[11] < 5 && global.enemyKills[12] < 2) {return 10}
			
		break;
	}
}
