//Battle start - transition
if (battleState == 0) 
{
	if !audio_is_playing(music)
	{
		audio_play_sound(music,2,true)
	}
	transitionProg += .1
	if (transitionProg >= .5)
	{
		transitionTransparency-=.3;
		if (transitionTransparency <0)
		{
			if (bossBattle = false)
			{
				if array_length(enemyUnits)>1
				{
					battleEndMessages[0] = string(enemyUnits[0].name)+" And Cohorts Emerge!"
				}
				else
				{
					battleEndMessages[0] = string(enemyUnits[0].name)+" Draws Near!"	
				}
			}
			else
			{
				battleEndMessages[0] = string(enemyUnits[0].name)+" Approaches Confidently!"
			}
			battleText = battleEndMessages[battleEndMessageProg];
			if battleMessageClear<=0&&keyboard_check_pressed(vk_space)
			{
				battleFlavorText(enemies,flavorText)
				battleEndMessageProg=0
				battleState = 1;
			}
		}
	}
}

//Battle end - transition
if (battleState == 3) 
{
	transitionProg -= 0.1;
	if (transitionProg <= 0.0)
	{
		var _camWidth = 480
		var _camHeight = 270
		camera_set_view_size(view_camera[0],_camWidth,_camHeight)
		
		instance_destroy()
		instance_deactivate_object(oMainMenu)
		instance_deactivate_object(oExclamationMark)
	}
	
}

//Battle end - messages
if (battleState == 2)
{
	if (instance_exists(oMenu))
	{
		instance_destroy(oMenu)	
	}
	
	audio_stop_sound(music)
	if conclusionType != 3
	{
		if !audio_is_playing(battleVictory)
		{
			audio_play_sound(battleVictory,1,false)
		}
	}
	
	if (keyboard_check_pressed(vk_space)) && battleMessageClear < 0
	{
		audio_play_sound(moveArrow2,1,false)

		battleMessageClear = 15
		
		if (battleEndMessageProg < array_length(battleEndMessages)){draw_char=0 battleEndMessageProg++;}
		
	}
	if (battleEndMessageProg >= array_length(battleEndMessages))
	{
		battleText = ""
		
		battleState = 3;
	}
	else
	{
		battleText = battleEndMessages[battleEndMessageProg];
	}
}

//Battle in progress
if (battleState == 1) 
{	
	//resets defensive stance
	if playerTurn
	{
		ResetUI()
	}

	if !playerTurn
	{
		EnemyUI()
	}

	if !playerTurn&&defendStart
	{
		DefendUI()
	}

	if !highlightEnemy&&!playerTurn
	{
		ResetAlpha()
	}
	
	
	//Is the battle over?
	var _noEnemiesAlive = !array_any(enemyUnits, function(_unit)
	{
		return (_unit.hp > 0);
	});
	
	var _noPartyAlive = !array_any(partyUnits, function(_unit)
	{
		return (_unit.hp > 0);
	});
	
	//Player lose overrides win
	if (_noPartyAlive)
	{
		poisoned = false
		draw_char = 0
		battleState = 2;
		conclusionType = 3;
		battleEndMessages[0] = "All party members defeated!";
		battleEndMessages[1] = "Game over...";
	}
	else
	{
		//SAVES HP AFTER EACH BATTLE
		global.EcurrentHP = partyUnits[0].hp
		if global.fin == 1
		{
		global.EcurrentHP = partyUnits[0].hp
		global.FcurrentHP = partyUnits[1].hp
		}
		if global.broke == 1
		{
		global.EcurrentHP = partyUnits[0].hp
		global.FcurrentHP = partyUnits[1].hp
		global.BcurrentHP = partyUnits[2].hp
		}
		if global.jen == 1
		{
		global.EcurrentHP = partyUnits[0].hp
		global.FcurrentHP = partyUnits[1].hp
		global.BcurrentHP = partyUnits[2].hp
		global.JcurrentHP = partyUnits[3].hp
		}
		
		//SAVES MP AFTER EACH BATTLE
		global.EcurrentMP = partyUnits[0].mp
		if global.fin == 1
		{
		global.EcurrentMP = partyUnits[0].mp
		global.BcurrentMP = partyUnits[1].mp
		}
		if global.broke == 1
		{
		global.EcurrentMP = partyUnits[0].mp
		global.BcurrentMP = partyUnits[1].mp
		global.BcurrentMP = partyUnits[2].mp
		}
		if global.jen == 1
		{
		global.EcurrentMP = partyUnits[0].mp
		global.BcurrentMP = partyUnits[1].mp
		global.BcurrentMP = partyUnits[2].mp
		global.JcurrentMP = partyUnits[3].mp
		}
		
		
		if (_noEnemiesAlive)
		{
			transitionProg=2
			
			poisoned = false
			if !instance_exists(oRhythmVisual)
			{
				endTimer-=1
				if endTimer<0
				{
					battleMessageClear--
					conclusionType = 1;
					battleState = 2;
					draw_char = 0
					for (var i = 0; i < array_length(enemyUnits); i++)
					{
						battleMoneyGained += enemyUnits[i].moneyValue;
						battleExperinceGained +=enemyUnits[i].experinceValue;
						//tracks how many ene killed in each room
						if !bossBattle
						{
							EnemiesCount(room)
						}	
					}
					battleEndMessages[0] = "Victory!\nGained $"+string(battleMoneyGained)+" & "+string(battleExperinceGained)+"XP"
					
					//battleEndMessages[1] = string("Gained {0} $", battleMoneyGained);
					//battleEndMessages[2] = string("Gained {0} XP", battleExperinceGained);
					global.my_Money +=battleMoneyGained
					global.battleExperince +=battleExperinceGained
					global.battlesWon++;
					
					LevelUp()
				}
				else
				{
					battleMessageClear = 10
				}
			}
		}
	
		if (escaped)
		{
			poisoned = false
			draw_char = 0
			conclusionType = 2;
			battleState = 2;
		}
	}
		
	//plays music
	if !audio_is_playing(music)
	{
		//audio_play_sound(music,1,true)
	}	
	instance_deactivate_object(oMainMenu)
	
	
	//Progress turns / continue actions
	if !battleStopFlow
	{	
		if (!battleActionInProgress)
		{
			if (!instance_exists(oMenu)) DoTurn(units[turn]);
		}
		else
		{
			ContinueAction(currentUser,currentAction,currentTargets);
		}
	}
}


//Cursor control
if (targetCursor.cursorActive) && endTimer = 80
{
	with (targetCursor)
	{
		//input
		var _keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
		var _keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
		var _keyLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
		var _keyRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
		var _keyToggle = false;
		var _keyConfirm = false
		var _keyCancel = false;
		cursorConfirmDelay++
		if (cursorConfirmDelay > 1) 
		{
			_keyConfirm = keyboard_check_pressed(vk_space);
			_keyCancel = keyboard_check_pressed(vk_escape);
			_keyToggle = keyboard_check_pressed(vk_shift);
		}
		var _moveH = _keyRight - _keyLeft;
		var _moveV = _keyUp - _keyDown;
	

		if (_moveV == -1)&&!cursorGroup
		{
			audio_play_sound(moveArrow1,1,false)
			cursorSide = oBattle.partyUnits;
		}
		if (_moveV == 1)&&!cursorGroup
		{
			audio_play_sound(moveArrow1,1,false)	
			cursorSide = oBattle.enemyUnits;
		}
		
		//verify target list 
		if (cursorSide == oBattle.enemyUnits)
		{
			cursorSide = array_filter(cursorSide, function(_element, _index)
			{
				return _element.hp > 0;
			});
		}
		
		if (cursorMode == 0) //Single target mode
		{
			if (_moveH == 1)&&!cursorSelf
			{
				audio_play_sound(moveArrow1,1,false);
				cursorIndex++;
			}
			if (_moveH == -1)&&!cursorSelf
			{
				audio_play_sound(moveArrow1,1,false);
				cursorIndex--;
			}
			var _targets = array_length(cursorSide);
			if (cursorIndex < 0) cursorIndex = _targets - 1;
			if (cursorIndex > (_targets - 1)) cursorIndex = 0;
			
			cursorTarget = cursorSide[cursorIndex];
			
			if (cursorAction.targetAll == 2) && (_keyToggle) //switch to all mode
			{
				cursorMode = 1; 
			}
		}
		else //target all mode
		{
			if oBattle.scatterRageTarget=false
			{
				cursorTarget = cursorSide;
				cursorError = false;
				if (cursorAction.targetAll == 2) && (_keyToggle) //switch to single mode
				{
					cursorMode = 0; 
				}
			}
			//scatterRage
			else
			{
				cursorSide = array_filter(cursorSide, function(_element, _index)
				{
					return _element.scatterSelected = true;
				});
				cursorTarget = cursorSide;
				cursorError = false;
				if (cursorAction.targetAll == 2) && (_keyToggle) //switch to single mode
				{
					cursorMode = 0; 
				}
			}
		}
		
		if (!cursorError)
		{
			if (_keyConfirm)
			{
				oBattle.BeginAction(cursorUser, cursorAction, cursorTarget);
				with (oMenu) instance_destroy();
				cursorSelf = false;
				cursorGroup = false;
				cursorActive = false;	
				cursorConfirmDelay = 0;
				
				if oBattle.scatterRageTarget{oBattle.scatterRageActive=false}
			}
		}
		
		if (_keyCancel) && (!_keyConfirm)
		{
			with (oMenu) active = true;	
			cursorSelf = false;
			cursorGroup = false;
			cursorActive = false;
			cursorConfirmDelay = 0;
			
			scatterRageTarget=false
		}
	}
}


/************
Poison effect
************/

if poisoned = true&&!escaped
{
	if poisonedTargets.hp > 0 && !battleActionInProgress
	{
		poisonedTimer-=poisonedFreq
		if poisonedDamage <= 0
		{
			poisonedDamage = 1	
		}
		if poisonedTimer < 0
		{
			var _ran = irandom_range(0,100)
			if _ran=100
			{
				poisonedTimer = 300
				BattleChangeHP(poisonedTargets, -poisonedDamage)
			}
		}
	}
	else
	{
		if poisonedTargets.myTurn=1{EndTurn(poisonedTargets) if instance_exists(oMenu){instance_destroy(oMenu)}if instance_exists(obj_battleMenu){instance_destroy(obj_battleMenu)} if targetCursor.cursorActive{targetCursor.cursorActive=false}}
	}
}


function battleFlavorText(_enemyUnits,_flavorText,_wornOff=0)
{
	//makes sure only 1 message a time
	if array_length(battleEndMessages)<1
	{
		if _wornOff=0
		{
			if roundCount=0&&oBattle.partyUnits[0].myTurn=true
			{
				battleEndMessageProg=0
				if (bossBattle = false)
				{
					if array_length(enemyUnits)>1
					{
						battleEndMessages[0] = string(enemyUnits[0].name)+" And Cohorts Emerge!"
					}
					else
					{
						battleEndMessages[0] = string(enemyUnits[0].name)+" Draws Near!"	
					}
				}
				else
				{
					battleEndMessages[0] = string(enemyUnits[0].name)+" Approaches Confidently!"
				}
				battleText = battleEndMessages[battleEndMessageProg];
			}
			else
			{
				var _possibleUnit = array_filter
				(oBattle.enemyUnits, function(_unit, _index)
				{
					return (_unit.hp > 0);
				});
				if array_length(_possibleUnit)>0
				{
					var _unit = _possibleUnit[irandom(array_length(_possibleUnit)-1)];
					battleEndMessages[0] = createFlavorText(_unit,_flavorText)
					battleText = battleEndMessages[battleEndMessageProg];
				}
			}
		}
		else
		{
			if _wornOff=1
			{
				battleEndMessages[0] = string(partyUnits[0].name)+" Status has worn off.."
				battleText = battleEndMessages[battleEndMessageProg];
			}
		}	
	}
}