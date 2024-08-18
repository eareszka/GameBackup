event_inherited();


image_xscale = -1;
sprite_index = sprites.idle;
enemy = true;

flag1 = false
flag2 = false
flag3 = false

//for body parts
rotation=0
timer=0
alpha=1
color=c_white
perfect=false

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
			case "Mutant Worm":
				var _action = chooseAttack(_unit)
				var _target = chooseTarget(_action)
				return [_action, _target];
			break;	
			
			case "The Magician":
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
				else if _unit.hp<=_unit.hpMax/1.5&&flag2=false
				{
					var _action = actionsScripted[1]
					var _target = [0]
					flag2=true
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
