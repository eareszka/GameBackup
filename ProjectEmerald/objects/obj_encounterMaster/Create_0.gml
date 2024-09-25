encounter=false

encounterStart=false

encounterTimer=20

opponent=noone

doOnce=false

comboTimer=8

function checkReady()
{
	var _encounterCount = instance_number(obj_encounterOverworld);
	
	for (var i = 0; i < _encounterCount; i++) 
	{
		var _encounterInstance = instance_find(obj_encounterOverworld, i);
		
		if _encounterInstance.absorbed&&!_encounterInstance.hitSet&&global.comboAmmount<3
		{
			return false
		}
	}
	return true
}


function enemyGet(_ammount)
{
	if room=RM_BROWNSTOWN
	{
		if _ammount=1 return [opponent.opponent]
		if _ammount=2 
		{
			if opponent.opponent.unitID=6 return choose([global.enemies.ant,global.enemies.catTails],[global.enemies.frog,global.enemies.catTails])
			if opponent.opponent.unitID=8 return choose([global.enemies.ant,global.enemies.frog],[global.enemies.frog,global.enemies.catTails])
		}
		if _ammount=2 return choose([global.enemies.ant,global.enemies.frog],[global.enemies.ant,global.enemies.catTails],[global.enemies.catTails,global.enemies.frog])
		if _ammount=3 return [global.enemies.ant,global.enemies.frog,global.enemies.catTails]
	}
	if room=RM_BROWNSTOWNcave
	{
		if _ammount=1 return [opponent.opponent]
		if _ammount=2 
		{
			if opponent.opponent.unitID=10 return choose([global.enemies.spider,global.enemies.rock],[global.enemies.rock,global.enemies.scalyFeline])
			if opponent.opponent.unitID=28 return choose([global.enemies.spider,global.enemies.scalyFeline],[global.enemies.rock,global.enemies.scalyFeline])
		}
		if _ammount=3 return [global.enemies.spider,global.enemies.rock,global.enemies.scalyFeline]
	}
	if room=RM_HOTELvent1||room=RM_HOTELvent2
	{
		if _ammount=1 return [opponent.opponent]
		if _ammount>=2 return choose([global.enemies.wapaloosie,global.enemies.spider],[global.enemies.spider,global.enemies.wapaloosie])
	}
}
