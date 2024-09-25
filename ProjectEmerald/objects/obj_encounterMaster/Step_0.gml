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
		if _encounterInstance.absorbed = false
		{
			var cam = view_camera[0];
			var x1 = camera_get_view_x(cam)
			var y1 = camera_get_view_y(cam)
			var x2 = x1 + camera_get_view_width(cam)
			var y2 = y1 + camera_get_view_height(cam)

			if(point_in_rectangle(_encounterInstance.x, _encounterInstance.y, x1, y1, x2, y2))
			{ 
				if !_encounterInstance.hit	_encounterInstance.image_alpha=.35
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
		spr_battleBackground1,
		battle1,
		false,
		,
		obj_encounterOverworld
	);
}