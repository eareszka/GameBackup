event_inherited();


image_xscale = -1;
sprite_index = sprites.idle;
enemy = true;

flag1 = false
flag2 = false
flag3 = false

AIscript = function(_unit)
{
	//attack random party member
	if !variable_struct_exists(_unit, "scripted")
	{
		var _action = chooseAttack(_unit)
		var _target = chooseTarget(_action)
		return [_action, _target];
	}
	else
	{
		switch _unit.name
		{
			case "Worm JR":
				var _action = chooseAttack(_unit)
				var _target = chooseTarget(_action)
				return [_action, _target];
			break;	
			
			case "Horned Beetle":
				var _action = chooseAttack(_unit)
				var _target = chooseTarget(_action)
				return [_action, _target];
			break;	
			
			case "Ancient King":
				
				if oBattle.roundCount = 0
				{
					var _action = actionsScripted[0]
					var _target = [0]
					return [_action, _target];
				}
				else
				{
					var _action = chooseAttack(_unit)
					var _target = chooseTarget(_action)
					return [_action, _target];
				}
			break;
			
			case "Not Deer":
				//attacks 
				if oBattle.roundCount = 0
				{
					var _action = actions[0]
					var _target = chooseTarget(_action)
					return [_action, _target];
				}
				//flees
				else
				{
					var _action = actions[1]
					var _target = chooseTarget(_action)
					return [_action, _target];
				}			
			break;
			
			case "The Coach":
				var _action = chooseAttack(_unit)
				var _target = chooseTarget(_action)
				return [_action, _target];
			break;	
		}
	}
}


