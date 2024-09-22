if encounter
{
	obj_playerEmory.speedWalk=0

	var _encounterCount = instance_number(obj_encounterOverworld);
	
	for (var i = 0; i < _encounterCount; i++) 
	{
		var _encounterInstance = instance_find(obj_encounterOverworld, i);
		
		if !_encounterInstance.hit&&_encounterInstance.activated
		{
		    _encounterInstance.absorbed = true;
		}
		
		if _encounterInstance.absorbed = true
		{
			if !_encounterInstance.hitSet&&global.comboAmmount<3&&comboTimer<0
			{
				comboTimer=8
				
				ObjFlash(_encounterInstance,1.5,0.05,255,255,255)
				
				global.comboAmmount++
				
				_encounterInstance.hitSet=true
			}
		}
	}
	
	comboTimer--
	
	encounterStart=checkReady()
}

if encounterStart{encounterTimer--}

if encounterTimer<0&&opponent!=noone
{
	var _enemy = enemyGet(global.comboAmmount)
	
	NewEncounter
	(
		_enemy,
		spr_battleBackground2,
		battle1,
		false,
		,
		obj_encounterOverworld
	);
}