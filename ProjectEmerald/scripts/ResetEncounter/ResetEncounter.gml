// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetEncounter()
{
	global.comboAmmount=0
	
	if instance_exists(obj_encounterMaster){instance_destroy(obj_encounterMaster)}
	
	var _encounterCount = instance_number(obj_encounterOverworld);
	
	var cam = view_camera[0];
	var x1 = camera_get_view_x(cam)
	var y1 = camera_get_view_y(cam)
	var x2 = x1 + camera_get_view_width(cam)
	var y2 = y1 + camera_get_view_height(cam)

	
	for (var i = 0; i < _encounterCount; i++) 
	{
		var _encounterInstance = instance_find(obj_encounterOverworld, i);
		
		if(point_in_rectangle( _encounterInstance.x, _encounterInstance.y, x1, y1, x2, y2))
		{ 	
			_encounterInstance.dead = true;
		}
	}
}

function ResetEncounterAll()
{
	global.comboAmmount=0
	
	if instance_exists(obj_encounterMaster){instance_destroy(obj_encounterMaster)}
	
	if instance_exists(obj_encounterOverworld){instance_destroy(obj_encounterOverworld)}
	
	var _generatorCount = instance_number(obj_encounterGenerator);
	
	for (var i = 0; i < _generatorCount; i++) 
	{
	    var _generatorInstance = instance_find(obj_encounterGenerator, i);
		
		var _resetChance = encounterRate()
		
		var _ran = irandom_range(_resetChance,5)
		
		if _generatorInstance.doOnce=true&&_ran!=5 {_generatorInstance.doOnce=false}
		else {_generatorInstance.doOnce=false}
	}
}