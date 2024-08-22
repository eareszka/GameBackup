// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chooseTarget(_attack)
{
	if _attack.targetAll != 2
	{
		var _possibleTargets = array_filter
		(oBattle.partyUnits, function(_unit, _index)
		{
			return (_unit.hp > 0);
		});
		var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
		
		_target.targeted=true
	}
	else
	{	
		//attacks all party memebrs
		var _target = array_filter
		(oBattle.partyUnits, function(_unit, _index)
		{
			return (_unit.hp > 0);
		});
	}

	//target specific actions
	switch _attack.name
	{
		case "betrayal":
			var _possibleTargets = array_filter
			(oBattle.enemyUnits, function(_unit)
			{
				return (_unit.hp > 0)
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
		break
		
		case "intimidate":
			//cant intimidate broke
			var _possibleTargets = array_filter
			(oBattle.partyUnits, function(_unit)
			{
				return (_unit.name != "Broke")
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
		break
	}

	return _target
}