//checks how often random encounters spawn in each room
function EnemiesCount(room)
{
	//checks how many enemies are killed
	switch room
	{
		case RM_BROWNSTOWN:
			global.enemyKills[0]+=1
		break
		case RM_BROWNSTOWNcave:
			global.enemyKills[1]+=1
		break;
		case RM_HOTELvent1:
			global.enemyKills[2]+=1
		break
		case RM_HOTELvent2:
			global.enemyKills[2]+=1
		break
		case RM_FINfarm:
			global.enemyKills[3]+=1
		break;
		case RM_CATACOMBS:
			global.enemyKills[4]+=1
		break;
		case RM_PLAINVILL:
			global.enemyKills[5]+=1
		break;
	}	
}