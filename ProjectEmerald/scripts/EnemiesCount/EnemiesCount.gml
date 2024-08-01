//checks how often random encounters spawn in each room
function EnemiesCount(_enemy)
{
	//checks how many enemies are killed
	switch _enemy.name
	{
		case "Typha":
			global.enemyKills[0]+=1
		break
		case "Itty-Bitty Ant":
			global.enemyKills[1]+=1
		break;
		case "Bull Frog":
			global.enemyKills[2]+=1
		break
		case "Crude Spider":
			global.enemyKills[3]+=1
		break;
		case "Grinning Rock":
			global.enemyKills[4]+=1
		break;
		case "Armored Beetle":
			global.enemyKills[5]+=1
		break;
		case "Mogging Mole":
			global.enemyKills[6]+=1
		break;
		case "Poison Thornster":
			global.enemyKills[8]+=1
		break;
		case "Amalbonemation":
			global.enemyKills[9]+=1
		break;
		case "Bane Bat":
			global.enemyKills[10]+=1
		break;
		case "Not Deer":
			global.enemyKills[11]+=1
		break;
		case "Thunder Bird":
			global.enemyKills[12]+=1
		break;
	}	
}