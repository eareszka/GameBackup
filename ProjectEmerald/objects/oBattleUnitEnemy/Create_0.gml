event_inherited();

sprite_index = sprites.idle;

enemy = true;

flag1 = false
flag2 = false
flag3 = false

//for perfect curse
perfect=false

greyOut=false
regularBlend=false

r=255
g=255
b=255


AIscript = function(_unit)
{
	//attack random party member
	if !variable_struct_exists(_unit, "scripted")
	{
		var _action = chooseAttack(_unit)
		var _target = chooseTarget(_action)
		if _target=noone{return [_unit.actions[1], noone];}//force taunt is target is dead
		else{return [_action, _target];}
	}
	else
	{
		switch _unit.name
		{
			case "Crude Spider":
				var _action = chooseAttack(_unit)
				var _target = chooseTarget(_action)
				if _action.name="Attack"
				{
					oBattle.attackSubtype=irandom_range(0,1)
					
					if global.flag[62]=0&&oBattle.attackSubtype=1
					{
						global.flag[62]=1
						if !instance_exists(obj_textBoxBattle)
						{
							create_textboxBattle("blueProjectileTutorial")
						}
						return [_action, _target];
					}
					else
					{
						return [_action, _target];
					}
				}
				else return [_action, _target];
			break;
			
			case "Mutant Worm":
			
				if _unit.hp <= round(_unit.hpMax/2){oBattle.attackSubtype=1}
				
				var _action = chooseAttack(_unit)
				var _target = chooseTarget(_action)
				return [_action, _target];
			break;	
			
			case "The Magician":
				if _unit.hp = _unit.hpMax&&flag1=false
				{
					flag1=true
					if !instance_exists(obj_textBoxBattle)
					{
						create_textboxBattle("computerTalk10")
					}
					var _action = _unit.actions[0]
					var _target = chooseTarget(_action)
					return [_action, _target];
				}
				
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
