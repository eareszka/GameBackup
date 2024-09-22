function NewEncounter(_enemies, _bg, _music, _boss, _scene = undefined, _bossParent = undefined)
{
	if _boss
	{
		if !instance_exists(oBattleIntroBoss){with instance_create_depth(x,y,-16000,oBattleIntroBoss){boss=_bossParent}}
		if oBattleIntroBoss.done=true
		{
			if instance_exists(oCutscene)
			{
				oCutscene.scene=_scene
			}
			instance_create_depth(camera_get_view_x(view_camera[0]),
			camera_get_view_y(view_camera[0]),-9999,
			
			oBattle,
			{ 
				enemies: _enemies, creator: id, battleBackground: _bg, music: _music, bossBattle: _boss
			}
			);
		}
	}
	if !_boss
	{
		if !instance_exists(oBattleIntroBoss){with instance_create_depth(x,y,-16000,oBattleIntroBoss){boss=_bossParent}}
		if oBattleIntroBoss.done=true
		{
			
			if instance_exists(oCutscene){oCutscene.scene=_scene}
			
			instance_create_depth(camera_get_view_x(view_camera[0]),
			camera_get_view_y(view_camera[0]),-9999,
			
			oBattle,
			{ 
				enemies: _enemies, creator: id, battleBackground: _bg, music: _music, bossBattle: _boss
			}
			);
		}
	}
}

function BattleChangeHP(_target, _amount, _livingCheck = 0, _crit = undefined, _shake = true)
{
		//_livingCheck: 0 = alive only, 1 = dead only, 2 = any
		var _failed = false;
		if (_livingCheck == 0) && (_target.hp <= 0) _failed = true;
		if (_livingCheck == 1) && (_target.hp > 0) _failed = true;
	
		var _col = c_white;
		if (_amount > 0) _col = c_lime;
		if (_amount < 0) {if _shake{ShakeParty(_target,_amount,_crit)}}
		if (_failed) 
		{
			_col = c_white;
			_amount = "failed";
		}
		instance_create_depth(_target.x,_target.y,_target.depth-1, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: _col, text: string(_amount)})
		if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
}

function BattleChangeMP(_target, _amount, _show = false)
{
	if (_show) instance_create_depth(_target.x,_target.y,_target.depth-1, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_aqua, text: string(_amount) + "mp"})
	_target.mp = clamp(_target.mp + _amount, 0, _target.mpMax);
}

function BattleChangeSTR(_target, _amount, _show = false)
{
	if (_show) 
	{
		if _amount>0{instance_create_depth(_target.x,_target.y,_target.depth-1, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_fuchsia, text: "+"+string(_amount) + "str"})}
		if _amount<=0{instance_create_depth(_target.x,_target.y,_target.depth-1, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_fuchsia, text: "-"+string(_amount) + "str"})}
	}
	_target.strength = clamp(_target.strength + _amount, 0, _target.strength*100);
}


//After picking an action, confirm any targets or options and then continue
function SelectAction(_user, _action)
{
	//make menu inactive
	with (oMenu) active = false;
	if instance_exists(obj_battleMenu){instance_destroy(obj_battleMenu)}
	
	with (oBattle)
	{
		if variable_struct_exists(_action,"description")
		{
			oBattle.item = _action
		}
		else
		{
			oBattle.item = -1
		}
		if (_action.targetRequired)
		{
			with (targetCursor)
			{
				cursorAction = _action;
				cursorMode = _action.targetAll;
				if (cursorMode == 2) cursorMode = 1; //"toggle" starts as all by default
				if variable_struct_exists(_action,"targetSelf"){cursorSelf=true}
				if variable_struct_exists(_action,"targetGroup"){cursorGroup=true}
				cursorUser = _user;
				cursorActive = true;
				
				//for scatter rage
				if _action.name="Attack" && oBattle.partyUnits[0].myTurn=true && oBattle.scatterRageActive=true
				{
					oBattle.scatterRageTarget=true
				}
				
				if (_action.targetDefault == 1) //cursorTarget enemy by default
				{
					cursorIndex = 0;
					cursorSide = oBattle.enemyUnits;
					cursorTarget = oBattle.enemyUnits[cursorIndex];
				}
				else //cursorTarget self by default
				{
					cursorSide = oBattle.partyUnits;
					cursorTarget = cursorUser;
					var _findSelf = function(_element, _user)
					{
						return (_element == cursorTarget)	
					}
					cursorIndex = array_find_index(oBattle.partyUnits, _findSelf);
				}
			}
		}
		else
		{
			with (oMenu) instance_destroy();
			BeginAction(_user,_action,-1)
		}
	}
}

function IsActionAvailable(_unit, _action)
{
	if _action.name="Boy Toys I"
	{
		if instance_exists(oBattleUnitBoyToy)&&instance_exists(oBattleUnitBoyToy2)
		{
			return false
		}
	}
	if _action.name="Boy Toys II"
	{
		if instance_exists(oBattleUnitBoyToy)||instance_exists(oBattleUnitBoyToy2)
		{
			return false
		}
	}
	if _action.name="Scatter Rage"
	{
		if oBattle.scatterRageActive=true{return false;}
	}
	if (variable_struct_exists(_action, "strBoost"))
	{
		if (variable_struct_exists(_action, "mpCost"))
		{
			if (_unit.mp >= _action.mpCost) && (_unit.strBoost = false) return true;	
		}
	}
	else
	{
		if (variable_struct_exists(_action, "mpCost"))
		{
			if (_unit.mp >= _action.mpCost) return true;	
		}
		else
		{
			return true;
		}
	}
	return false
}

//this textbox only appears before USER attacks
function ScriptedBeforeAttack(_user, _action, _targets)
{
	if _action = global.actionLibrary.attackRhythm
	{
		switch _targets.name
		{
			case "Crude Spider":
				RhythmCreate(_action.rhythm,_targets)
				with (_user)
				{
					acting = true;
				}
			break;
			
			case "Mutant Worm":
				if _targets.hp <= round(_targets.hpMax/2) && oBattleUnitEnemy.flag1 = false
				{		
					global.defendDodgeWave=1
					oBattleUnitEnemy.flag1 = true
					_targets.arrows = 2
					RhythmCreate(_action.rhythm,_targets)
					with (_user)
					{
						acting = true;
					}
				}
				else
				{
					RhythmCreate(_action.rhythm,_targets)
					with (_user)
					{
						acting = true;
					}
				}
			break;
			
			case "The Magician":
				if _targets.hp <= round(_targets.hpMax/3) && oBattleUnitEnemy.flag1 = false
				{				
					oBattleUnitEnemy.flag1 = true
					_targets.arrows = 5
					_targets.spd=2
					_targets.disappear=true	
					create_textboxBattle("magicianTalk2",_user)
				}
				else
				{
					RhythmCreate(_action.rhythm,_targets)
					with (_user)
					{
						acting = true;
					}
				}
			break;
			
			case "Horned Beetle":
				if _targets.hp <= round(_targets.hpMax/3) && oBattleUnitEnemy.flag1 = false
				{
					BattleActionBox(_targets,global.dialogueLibrary.beforeEneAttack)
					
					oBattleUnitEnemy.flag1 = true
					_targets.arrows = 1
					_targets.hold = 1
					create_textboxBattle("HornedBeetleText1",0,_user)
				}
				else
				{
					RhythmCreate(_action.rhythm,_targets)
					with (_user)
					{
						acting = true;
					}
				}
			break;
			
			case "Ancient King":
				if _targets.perfect=true&&oBattleUnitEnemy.flag1 = false
				{
					oBattleUnitEnemy.flag1 = true
					create_textboxBattle("AncientKingText3",0,_user)
				}
				else
				{
					RhythmCreate(_action.rhythm,_targets)
					with (_user)
					{
						acting = true;
					}
				}
			break;
			
			case "Not Deer":
				RhythmCreate(_action.rhythm,_targets)
				with (_user)
				{
					acting = true;
				}
			break
			
			case "The Coach":
				if _targets.hp <= round(_targets.hpMax/2) && _targets.hp > round(_targets.hpMax*.35) && oBattleUnitEnemy.flag1 = false
				{
					BattleActionBox(_targets,global.dialogueLibrary.beforeEneAttack)
					
					oBattleUnitEnemy.flag1 = true
					_targets.reverse = 2
					create_textboxBattle("TheCoachText1",0,_user)
				}
				else if _targets.hp <= round(_targets.hpMax*.35) && oBattleUnitEnemy.flag2 = false
				{
					BattleActionBox(_targets,global.dialogueLibrary.beforeEneAttack)
					
					oBattleUnitEnemy.flag2 = true
					_targets.reverse = false
					_targets.mirror = true
					create_textboxBattle("TheCoachText2",0,_user)
				}
				else
				{
					RhythmCreate(_action.rhythm,_targets)
					with (_user)
					{
						acting = true;
					}
				}
			break
		}
	}
	else
	{
		RhythmCreate(_action.rhythm,_targets)
			with (_user)
			{
				acting = true;
			}
	}
}

function getPointer(_targets)
{
	switch (_targets.unitID)
	{
	    case 0:
	        return -15;
	    break;

	    case 1:
	        return -15;
	    break;

	    case 2:
	        return -15;
	    break;

	    case 3:
	        return -15;
	    break;
		
		case 4:
	        return -17;
	    break;

	    case 5:
	        return -16;
	    break;

	    case 6:
	        return -20;
	    break;

	    case 7:
	        return -25;
	    break;

	    case 8:
	        return -22;
	    break;
		
		case 9:
	        return -22;
	    break;
		
		case 10:
	        return -28;
	    break;
		
		case 11:
	        return -25;
	    break;
		
		case 12:
	        return -25;
	    break;
		
		case 18:
			return -25;
	    break;
		case 25:
			return -22;
		break
		
		case 26:
	        return -22;
	    break;
		
		case 27:
	        return -22;
	    break;
		
		case 28:
	        return -30;
	    break;
	}
}


function checkDeadPerfectCurse(_targets)
{
	if _targets[0].name="Ancient King"&&global.perfect=3
	{
		oBattle.enemyUnits[0].hp=0
	}
}

function boyToyStuff()
{
	if instance_exists(oBattleUnitBoyToy){boyToy1Attack=false}
	if instance_exists(oBattleUnitBoyToy){boyToy2Attack=false}
	
	if instance_exists(oBattleUnitBoyToy)&&instance_exists(oBattleUnitBoyToy2)
	{
		oBattle.boyToyAttackTimer=60
		oBattle.boyToyAttackEndTimer=0
	}
	else
	{
		if instance_exists(oBattleUnitBoyToy)&&!instance_exists(oBattleUnitBoyToy2)
		{
			oBattle.boyToyAttackTimer=40
			oBattle.boyToyAttackEndTimer=0
		}
		if !instance_exists(oBattleUnitBoyToy)&&instance_exists(oBattleUnitBoyToy2)
		{
			oBattle.boyToyAttackTimer=60
			oBattle.boyToyAttackEndTimer=20
		}
	}
}