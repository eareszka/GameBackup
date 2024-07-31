// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chooseAttack(_user)
{
	var _action = actions[irandom(array_length(actions)-1)];
	
	//if action cant be performed the enemy will just attack
	switch _action.name
	{
		case "healSelf":
			if _user.mp < _action.mpCost || _user.hp = _user.hpMax
			{	
				_action = _user.actions[0]
			}
		break
		
		case "summonEne":
			if _user.summonAmt <= 0 || array_length(oBattle.enemyUnits) >= 4
			{	
				_action = _user.actions[0]
			}
		break
		
		case "poison":
			if oBattle.poisoned = true
			{
				_action = _user.actions[0]	
			}
		break
		
		case "betrayal":
			//if its the only enemy left it cant betray team
			var _possibleTargets = array_filter
			(oBattle.enemyUnits, function(_unit)
			{
				return (_unit.hp > 0)
			});
			if array_length(_possibleTargets) = 1
			{
				_action = _user.actions[0]		
			}
		break;
		
		case "stealItem":
			for (var i = 0; i < array_length(global.inventory);i++)
			{
				if global.inventory[i][1] > 0
				{
					return _action	
				}
			}
			_action = _user.actions[0]	
		break;
		
		case "intimadate":
			var _possibleTargets = array_filter
			(oBattle.partyUnits, function(_unit)
			{
				return (_unit.hp > 0)
			});
			if array_length(_possibleTargets) = 1
			{
				_action = _user.actions[0]		
			}
		break;
	}
	
	//makes sure you cant choose an attack that doesnt exsist for whatever reason
	if _action > array_length(action)
	{
		_action = _user.actions[0]
		var _index = actions[0];
	}
	
	return _action
}