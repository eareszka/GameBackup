// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetEncounter()
{
	var _encounterCount = instance_number(obj_encounterParent);
	
	for (var i = 0; i < _encounterCount; i++) 
	{
	    var _encounterInstance = instance_find(obj_encounterParent, i);
		
	    _encounterInstance.dead = true;
	}
	
	var _generatorCount = instance_number(obj_encounterGenerator);
	
	for (var i = 0; i < _generatorCount; i++) 
	{
	    var _generatorInstance = instance_find(obj_encounterGenerator, i);
		
		_generatorInstance.doOnce=false
	}
}