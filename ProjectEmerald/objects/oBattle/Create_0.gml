//stops all music
audio_stop_all()
global.success = 0
global.perfect=0
//Transition setup
transitionProg = 0;
transitionTransparency = 1;
surfTransition = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));

instance_deactivate_all(true);
var _camWidth = 384
var _camHeight = 216
camera_set_view_size(view_camera[0],_camWidth,_camHeight)


instance_create_depth(x,y,depth+100,oBattleBackground,{battleBackground: battleBackground})
with instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-16000,oFadeOut){FadeSpeed=.05}

//Battle setup
battleState = 0; //0: starting, 1: happening, 2: over
battleActionInProgress = false;
battleWaitForMenu = false
battleStopFlow = false
WaitTime = false
battleWaitTimeFrames = 0; //time to wait before finishing an action or turn
battleWaitTimeRemaining = 0;
battleMessageClear = 20
battleText = "";
draw_char = 0
textBoxHeight = 25
text_spd = 1
battleEndMessageProg = 0;
battleEndMessages = [];
flavorText=0
battleMoneyGained = 0;
battleExperinceGained = 0;
conclusionType = -1;
escaped = false;
turn = 0;
turnCount = 0;
chargeTurn = 0
roundCount = 0;
textBoxWait = false
item = 0
success=0
damageDone=0

//number of turns skipped
skipTurns = 0
continousAttack = 0
units = [];
stats=[]
unitRenderOrder = [];
unitDepth = depth-10;
starupTimer=20;
endTimer = 80;

//poison
poisoned = false
poisonedTargets = 0
poisonedDamage = 0
poisonedTimer = 300
poisonedFreq = 0

//perfect arrows
perfectCurse=false
perfectFail=false
perfectArrowAbsorbed=false

//scatterRageActive
scatterRageActive=false
scatterRageTarget=false

//boyToy
boyToy1Attack=false
boyToy2Attack=false
boyToyAttackTimer=60
boyToyAttackEndTimer=0

//for defending
defendSetup=false
playerTurn=true
highlightEnemy=false
defendStart=false
defendEnd=false
defendStanceLine=5

	
//Make party
for (var i = 0; i < array_length(global.party); i++)
{
	if (global.jen == 1 && global.broke == 1 && global.fin == 1)
	{
		partyStats[i]=instance_create_depth(x,y,-16000,obj_characterStats,{PC: i+1, PSIZE: 4})
		array_push(stats,partyStats[i])
		
		partyUnits[i] = instance_create_depth(x+92+(i*64),y+158.5,unitDepth,oBattleUnitPC,global.party[i]);
		array_push(units, partyUnits[i]);
	}
	else if (global.jen == 0 && global.broke == 1 && global.fin == 1)
	{
		partyStats[i]=instance_create_depth(x,y,-16000,obj_characterStats,{PC: i+1, PSIZE: 3})
		array_push(stats,partyStats[i])
		
		partyUnits[i] = instance_create_depth(x+128+(i*64),y+158.5,unitDepth,oBattleUnitPC,global.party[i]);
		array_push(units, partyUnits[i]);
	}
	else if (global.jen == 0 && global.broke == 0 && global.fin == 1)
	{
		partyStats[i]=instance_create_depth(x,y,-16000,obj_characterStats,{PC: i+1, PSIZE: 2})
		array_push(stats,partyStats[i])
		
		partyUnits[i] = instance_create_depth(x+156+(i*64),y+158.5,unitDepth,oBattleUnitPC,global.party[i]);
		array_push(units, partyUnits[i]);
	}
	else
	{
		partyStats[i]=instance_create_depth(x,y,-16000,obj_characterStats,{PC: i+1, PSIZE: 1})	
		array_push(stats,partyStats[i])
		
		partyUnits[i] = instance_create_depth(x+192+(i*65),y+158.5,unitDepth,oBattleUnitPC,global.party[i]);
		array_push(units, partyUnits[i]);	
	}
}

if	(array_length(enemies) > 3 && array_length(enemies) < 5)
	{
		for (var i = 0; i < array_length(enemies); i++)
		{
		    enemyUnits[i] = instance_create_depth(x+100+(i*60),y+90, unitDepth, oBattleUnitEnemy, enemies[i]);
			array_push(units, enemyUnits[i]);
		}
	}
if	(array_length(enemies) > 2 && array_length(enemies) < 4)
	{
		for (var i = 0; i < array_length(enemies); i++)
		{
		    enemyUnits[i] = instance_create_depth(x+130+(i*60),y+90, unitDepth, oBattleUnitEnemy, enemies[i]);
			array_push(units, enemyUnits[i]);
		}
	}
if	(array_length(enemies) > 1 && array_length(enemies) < 3)
	{
		for (var i = 0; i < array_length(enemies); i++)
		{
		    enemyUnits[i] = instance_create_depth(x+165+(i*60),y+90, unitDepth, oBattleUnitEnemy, enemies[i]);
			array_push(units, enemyUnits[i]);
		}
	}
if  (array_length(enemies) <= 1)
	{
			enemyUnits[0] = instance_create_depth(x+195,y+90, unitDepth, oBattleUnitEnemy, enemies[0]);
			array_push(units, enemyUnits[0]);
	}



//Make cursorTarget cursor
targetCursor = 
{
	cursorUser: noone,
	cursorTarget: noone,
	cursorAction : -1,
	cursorSide : -1, 
	cursorIndex : 0,
	cursorError : false,
	cursorConfirmDelay : 0,
	cursorActive : false,
	cursorSelf : false, //can only target self
	cursorGroup : false, //can only target 1 group
	cursorMode : 0 //0: single, 1: all
};


//Shuffle turn order
array_sort(units,function(_1, _2)
{
	return 1
});

//Get render order
RefreshRenderOrder = function()
{
	unitRenderOrder = [];
	array_copy(unitRenderOrder,0,units,0,array_length(units));
	//array_sort(unitRenderOrder,function(_1, _2)
	//{
	//	return _1.x - _2.x;
	//});
}
RefreshRenderOrder();


//Perform a turn
DoTurn = function(_unit)
{	
	//Is this unit alive and able to act?
	if (instance_exists(_unit)) && (_unit.hp > 0)
	{
		//Mark this unit as having the current turn
		_unit.myTurn =  true;
		
		//Reset any one turn effects
		_unit.defending = false;
		
		//boyToyStuff
		boyToyStuff()
		
		//Player
		if (_unit.enemy == false)
		{	
			if !playerTurn
			{
				//resets y pos of stats bar after ene turn
				for (var i = 0; i < array_length(global.party); i++)
				{
					with oBattle.partyStats[i]
					{
						targeted=false
						y=oBattle.y+25
					}
				
				}
				for (var i = 0; i < array_length(global.party); i++)
				{
					with oBattle.partyUnits[i]
					{
						x=DefenseX
						y=nonDefenseY+45
					}
				
				}
			}
			
			playerTurn=true
			
			//ResetUI()
			if defendSetup=false{defendSetup=true}
				
			if oBattle.partyUnits[0].myTurn=true
			{
				if scatterRageActive
				{
					global.actionLibrary.attackRhythm.targetAll=1	
				}
			}
			//Resets strength boost
			if _unit.strBoost = true && roundCount > chargeTurn + 1
			{
				var _ran = irandom_range(0,1)
				if _ran = 1
				{
					_unit.strBoost = false; 
					BattleChangeSTR(_unit, -_unit.strength/2)
					with _unit
					{
						sprite_index = sprites.idle;
					}
					battleFlavorText(enemies,flavorText,1)
				}	
				else
				{
					battleFlavorText(enemies,flavorText)
				}
			}
			else
			{
				battleFlavorText(enemies,flavorText)
			}
			
			if (!instance_exists(oMenu)) && endTimer = 80
			{
				
				//Compile the action menu
				var _menuOptions = [];
				var _subMenus = {};
				
				//add inventory to action list
				var _inventoryActions = [];
				for (var i = 0; i < array_length(global.inventory); i++)
				{
					//if we have any of this item left we want to add the to the action list
					if (global.inventory[i][1] > 0)	
					{
						var _itemAction = global.inventory[i][0];
						_itemAction.count = global.inventory[i][1];
						array_push(_inventoryActions, _itemAction); 
					}
				}
				
				var _actionList = array_union(_unit.actions, _inventoryActions);
				
				
				for (var i = 0; i < array_length(_actionList); i++)
				{
					var _action = _actionList[i]
					var _available = IsActionAvailable(_unit,_action);
					//Add item count to option name if necessary
					var _nameAndCount = _action.name;
					if (_action.subMenu == "Inventory") _nameAndCount += string(" x{0}", _action.count); 
					//add top level action
					if (_action.subMenu == -1) array_push(_menuOptions,[_nameAndCount, SelectAction, [_unit, _action], _available]);
					else 
					{
						//create or add to a submenu
						if (is_undefined(_subMenus[$ _action.subMenu]))
						{
							variable_struct_set(_subMenus, _action.subMenu, [[_nameAndCount, SelectAction, [_unit, _action], _available]]);
						}				
						else
						{
							array_push(_subMenus[$ _action.subMenu],[_nameAndCount, SelectAction, [_unit, _action], _available]);
						}
					}
				}
				
				//turn sub menus into an array
				var _subMenusArray = variable_struct_get_names(_subMenus);
				for (var i = 0; i < array_length(_subMenusArray); i++)
				{
					//sort submenu if needed
					//(here)
					
					//add back option at end of each submenu
					array_push( _subMenus[$ _subMenusArray[i]] , ["Back", MenuGoBack, -1, true]);
					//add submenu into main menu
					array_push(_menuOptions, [_subMenusArray[i], SubMenu, [_subMenus[$ _subMenusArray[i]]], true]);
				}
				
				//sort top level menu
				array_sort(_menuOptions, function(_a, _b)
				{
					var _Priority = function(_option)
					{
						if (_option[0] == "Attack") return 99;
						if (_option[0] == "Special") return 50;
						if (_option[0] == "Create") return 50;
						if (_option[0] == "Inventory") return -10;
						if (_option[0] == "Escape") return -15;
						if (_option[0] == "Defend") return -15;
						return 0;
					}
					return _Priority(_b) - _Priority(_a);
				});
				
				Menu(x+10,y+110,_menuOptions,,74,60,_unit)
			}
			else
			{	
				if string_length(battleText) > 0
				{
					battleWaitTimeFrames--
					if battleWaitTimeFrames < -5
					{
						battleText=""			
					}
				}
			}
		}
		else
		//Enemy
		{
			playerTurn=false
			//run ai script for that enemy
			var _enemyAction = _unit.AIscript(_unit); 
			if (_enemyAction != -1) 
			{
				BeginAction(_unit.id, _enemyAction[0], _enemyAction[1]); 	
			}
		}
	}
	else
	{
		EndTurn(_unit);	
	}
}


function EndTurn(_unit)
{
	highlightEnemy=false
	if instance_exists(obj_projectileGenerator){instance_destroy(obj_projectileGenerator)}
	if instance_exists(obj_defendProjectileParent){instance_destroy(obj_defendProjectileParent)}
	if instance_exists(obj_defendStanceLineGenerator){instance_destroy(obj_defendStanceLineGenerator)}
	defendEnd=false
	
	//resets statuses
	global.success = 0
	global.actionLibrary.attackRhythm.targetAll=0	
	if scatterRageActive=false{scatterRageTarget=false}

	if instance_exists(oRhythmUnitBoyToy){instance_destroy(oRhythmUnitBoyToy)}
	if instance_exists(oRhythmUnitBoyToy2){instance_destroy(oRhythmUnitBoyToy2)}
	
	if instance_exists(obj_RhythmArrowAttackSpeedBar){instance_destroy(obj_RhythmArrowAttackSpeedBar)}
	if instance_exists(obj_RhythmArrowAttackBar){instance_destroy(obj_RhythmArrowAttackBar)}
	if instance_exists(oRhythmArrow){instance_destroy(oRhythmArrow)}

	battleActionInProgress=false
	battleWaitTimeRemaining = 0;
	perfectFail=false
	perfectCurse=false
	perfectArrowAbsorbed=false
	
	with (_unit) myTurn = false;
	//if _unit.enemy == false{_unit.turnCompleted=true}
	turnCount++; //total turns
	turn++;
	//Loop turns
	if (turn > array_length(units) - 1)
	{
		turn = 0;
		roundCount++;
	}
	
	WaitTime = false
	battleEndMessages = -1
	battleEndMessages = []
	draw_char = 0
	battleEndMessageProg = 0
	
	//sets different flavor text
	flavorText=irandom_range(0,2)
}

//Start a unit action
function BeginAction(_user, _action, _targets)
{	
	draw_char = 0
	battleActionInProgress = true;
	currentUser = _user;
	currentAction = _action;
	currentTargets = _targets;
	if (!is_array(currentTargets)) 
	{
		currentTargets = [currentTargets];
	}
	//battleText = string_ext(_action.description,[_user.name])
	battleWaitTimeRemaining = battleWaitTimeFrames;
	
	//if action is continous subtract ammount
	if continousAttack > 0 {continousAttack -= 1}
	if continousAttack <= 0 {global.continous=0}
	
	
	//plays sound for each action
	if (variable_struct_exists(_action, "sound"))
	{
		audio_play_sound(_action.sound,1,false)
	}
  	if (variable_struct_exists(_action, "rhythm"))
	{
		if _action.targetAll <= 0
		{
			if (!variable_struct_exists(_targets, "scripted"))
			{
				RhythmCreate(_action.rhythm,_targets)
				with (_user)
				{
					acting = true;
				}
			}
			else
			{
				ScriptedBeforeAttack(_user,_action,_targets)
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
	else
	{
		with (_user)
		{
			acting = true;
			
			if variable_struct_exists(_action,"subMenu")
			{
				//consume item if needed
				if (_action.subMenu == "Inventory") {RemoveItemFromInventory(_action, 1) global.success = 1}
			}
			
			//play user animation if it is defined for that action, and that user
			if  (!is_undefined(_action[$ "userAnimation"])) && (!is_undefined(_user.sprites[$ _action.userAnimation]))
			{
				sprite_index = sprites[$ _action.userAnimation];
				image_index = 0;
			}
		}
	}
	/************
	Action Bubble
	************/
	if _user.enemy=true{BattleActionBox(_user,_action)}
}
	
//Continue the current action
function ContinueAction(_user, _action, _targets)
{	
	//if animation etc is still playing
	if (_user.acting)
	{	
		if variable_struct_exists(_action,"textBeforeAct")
		{
			battleEndMessages[0]=ActionText(_user,_action,_targets)
		}
		
		//sets up defense phase
		if variable_struct_exists(_action,"rhythmDefend")
		{
			defendStart=true
		}
		
		//performs action after textbox
		if battleEndMessageProg >= array_length(battleEndMessages) || !variable_struct_exists(_action,"textBeforeAct")
		{
			//when it ends, perform action effect if it exists
			if (_user.image_index >= _user.image_number -1) || _user.strBoost = true || _user.sprite_index = _user.sprites.idle
			{
				with (_user)
				{
					//resets to idle if not already in idle
					if _user.sprite_index != _user.sprites.idle
					{
						sprite_index = sprites.idle;
						image_index = 0;
					}
				}
				
				if _action.name!="Attack"
				{
					if _user.enemy=true{ObjFlash(_user,1.5,.025,255,255,255)}
				}
			
				if (variable_struct_exists(_action, "effectSprite"))
				{
					if (!variable_struct_exists(_action, "rhythm"))
					{
						if (_action.effectOnTarget) //effects play on cursorTarget positions?
						{
							for (var i = 0; i < array_length(_targets); i++)
							{
								instance_create_depth(_targets[i].x,_targets[i].y,_targets[i].depth-1,oBattleEffect,{sprite_index : _action.effectSprite});	
							}
						}
						else //play it at 0,0
						{
							instance_create_depth(camera_get_view_x(view_camera[0])+192,camera_get_view_y(view_camera[0])+108,depth-100,oBattleEffect,{sprite_index : _action.effectSprite});	
						}
					}
					else
					{
						if !(variable_struct_exists(_action, "rhythm"))
						{
							if (_action.effectOnTarget) //effects play on cursorTarget positions?
							{
								for (var i = 0; i < array_length(_targets); i++)
								{
									instance_create_depth(_targets[i].x,_targets[i].y,_targets[i].depth-1,oBattleEffect,{sprite_index : _action.effectSprite});	
								}
							}
							else //play it at 0,0
							{
								instance_create_depth(camera_get_view_x(view_camera[0])+192,camera_get_view_y(view_camera[0])+108,depth-100,oBattleEffect,{sprite_index : _action.effectSprite});
							}
							
						}
					}
				}
				
				
				/************
				 Action Flow
				************/
				if (variable_struct_exists(_action, "rhythm"))
				{
					if _action.rhythm="attack"
					{
						if instance_exists(obj_RhythmArrowAttackBar)&&_targets[0].hp>0
						{
							if !perfectFail
							{
								battleMessageClear = 20
								if success >=1
								{
									_action.func(_user, _targets);	
									success-=1
								}
								else
								{
								
								}
							}
							else
							{
								if perfectArrowAbsorbed=true
								{
									obj_RhythmArrowAttackBar.fade=true 
									obj_RhythmArrowAttackSpeedBar.fade=true
									oRhythmBar1.perfectFail=false
									_action.funcPerfectFail(_user, _targets) 
									_user.acting=false
								}
							}
						}
						else //ene is killed
						{
							//destroys objects if killed
							if instance_exists(obj_RhythmArrowAttackSpeedBar)
							{
								obj_RhythmArrowAttackSpeedBar.fade=true
							}
							if instance_exists(obj_RhythmArrowAttackBar)
							{
								obj_RhythmArrowAttackBar.fade=true
							}
							if !instance_exists(obj_RhythmArrowAttackSpeedBar)
							{
								if !perfectFail
								{
									//boy toys attack
									#region boytoy
									if instance_exists(oBattleUnitBoyToy)||instance_exists(oBattleUnitBoyToy2)
									{
										if oBattle.partyUnits[2].myTurn=true&&boyToyAttackTimer>boyToyAttackEndTimer&&_targets[0].hp>0
										{
											boyToyAttackTimer--	
											if boyToyAttackTimer<40
											{
												if instance_exists(oBattleUnitBoyToy2)&&boyToy2Attack=false
												{
													ObjFlash(oBattleUnitBoyToy2,1.5,.05,255,255,255)
													_action.funcBoyToy(_user, _targets);boyToy2Attack=true
												}
											}
											if boyToyAttackTimer<20
											{
												if instance_exists(oBattleUnitBoyToy)&&boyToy1Attack=false
												{
													ObjFlash(oBattleUnitBoyToy,1.5,.05,255,255,255)
													_action.funcBoyToy(_user, _targets);boyToy1Attack=true
												}
											}
										}
									}
									else
									{
										if damageDone<=0
										{
											_action.funcFailed(_user, _targets) _user.acting=false
										}
										else
										{
											_user.acting=false
										}
									}
								}
								else
								{
									if perfectArrowAbsorbed=true
									{
										_action.funcPerfectFail(_user, _targets) 
										_user.acting=false
									}
									else
									{
				
									}
								}
								
							}
						}
					}
					else
					{
						if global.success=1
						{
							_action.func(_user, _targets) if !battleStopFlow{_user.acting=false}
						}
						if global.success=0
						{
							_action.funcFailed(_user, _targets); if !battleStopFlow{_user.acting=false}	
						}
					}
				}
				else
				{
				
					if (_user.enemy == true)
					{
						//doding attack mechanic
						if variable_struct_exists(_action,"rhythmDefend")
						{
							RhythmDefend(_user,_targets[0])	
							
							if _targets[0].hp>0
							{
								if success >=1
								{
									_action.func(_user, _targets);	
									success-=1
								}
								else
								{
									if defendEnd=true
									{
										{_user.acting=false}	
									}
								}
							}
							else
							{
								{_user.acting=false}	
							}
						}
						else
						{
							_action.func(_user, _targets) {_user.acting=false}	
						}
					}
					else
					{
						_action.func(_user, _targets) {_user.acting=false}
					}
				}
			}
		}
		else
		{
			battleText = battleEndMessages[battleEndMessageProg];
			if (keyboard_check_pressed(vk_space)) && draw_char >= string_length(battleText) && battleMessageClear < 0
			{
				if instance_exists(obj_oBattleActionBox){instance_destroy(obj_oBattleActionBox)}

				audio_play_sound(moveArrow2,1,false)
				textBoxHeight = 25
				battleEndMessageProg++;
				draw_char = 0
				battleMessageClear = 20
			}
		}
	}
	else
	{
		if _user.enemy == false{_user.turnCompleted=true}
			
			
		//if perfect curse is defeated ene dies
		if perfectCurse {checkDeadPerfectCurse(_targets)}
		
		//wait for delay and then end the turn
		if instance_exists(oRhythmArrow){instance_destroy(oRhythmArrow)}
		if (_user.image_index >= _user.image_number -1)
		{
			with (_user)
			{
				sprite_index = sprites.idle;
			}
		}
		if WaitTime = false
		{
			if (keyboard_check_pressed(vk_space)) && draw_char >= string_length(battleText) && battleMessageClear < 0
			{
				if instance_exists(obj_oBattleActionBox){instance_destroy(obj_oBattleActionBox)}
				
				audio_play_sound(moveArrow2,1,false)
				textBoxHeight = 25
				battleEndMessageProg++;
				draw_char = 0
				battleMessageClear = 20
			}
			if (battleEndMessageProg >= array_length(battleEndMessages))
			{
				WaitTime = true
			}
			else
			{
				battleText = battleEndMessages[battleEndMessageProg];
			}
		}
		else if WaitTime = true
		{
			battleText = ""
			battleWaitTimeRemaining--
			if battleWaitTimeRemaining < 0 && !instance_exists(oBattleEffect)
			{
				if continousAttack < 1
				{
					battleActionInProgress = false;
					damageDone=0
					EndTurn(_user);
				}
				else
				{
					if continousAttack > 0
					{
						WaitTime = false
						battleEndMessages = -1
						battleEndMessages = []
						draw_char = 0
						battleEndMessageProg = 0
						BeginAction(_user.id, global.enemyLibrary.continuous, _targets); 	
					}
				}
			}
		}
	}
}