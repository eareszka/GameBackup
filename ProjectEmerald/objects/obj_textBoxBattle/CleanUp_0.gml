if enemy > 0
{
	switch enemy
	{
		//ancientKing1
		case 1:
			oBattle.BeginAction(user, global.enemyLibrary.windGust, chooseTarget(global.enemyLibrary.windGust))
		break
	}
}
else
{
	oBattle.BeginAction(user, global.actionLibrary.attackRhythm, oBattle.enemyUnits[0])
}

//textbox for battle
oBattle.WaitTime = false
oBattle.battleEndMessages = -1
oBattle.battleEndMessages = []
oBattle.draw_char = 0
oBattle.battleEndMessageProg = 0
oBattle.battleText = ""
oBattle.battleStopFlow=false

if instance_exists(obj_oBattleActionBox){instance_destroy(obj_oBattleActionBox)}