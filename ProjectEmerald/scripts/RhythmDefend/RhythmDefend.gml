// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RhythmDefend(_user,_targets)
{
	if !instance_exists(obj_projectileGenerator)&&oBattle.defendEnd=false{ObjFlash(_targets,1.5,.025,255,255,255) instance_create_depth(0,0,0,obj_projectileGenerator,{enemy: _user, target: _targets})}
}


function EnemyUI()
{
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyUnits[i]
		{
			turnCompleted=false
		}
	}
	
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyStats[i]
		{
			var _speed = 1
			var _setupPointX=oBattle.partyStats[i].x
			var _setupPointY=oBattle.y+25

			move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));	
		}
	}
}


function DefendUI()
{
	oBattle.highlightEnemy=true
	
	if oBattleBackground.fadeAlpha<1
	{
		oBattleBackground.fadeAlpha+=.1
	}
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyStats[i]
		{	
			if !targeted
			{
				if alpha>.3
				{
					alpha-=.1
				}
			}
		}
	}
	
}

function ResetUI()
{
	if oBattleBackground.fadeAlpha>0
	{
		oBattleBackground.fadeAlpha-=.01
	}
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyUnits[i]
		{
			dodgePhase=false
			targeted=false
			dodgePos=2
		}
	}
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyStats[i]
		{
			if alpha<1
			{
				alpha+=.1
			}
			
			targeted=false
			
			oBattle.partyStats[i].defendSet=false
			var _speed = 1
			var _setupPointX=oBattle.partyStats[i].x
			var _setupPointY=oBattle.y
			move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));	
			
			if point_distance(x, y, _setupPointX, _setupPointY) > _speed	
			{
				oBattle.defendStart=false
			}
		}
	}
	
	//for (var i = 0; i < array_length(global.party); i++)
	//{
	//	with oBattle.partyUnits[i]
	//	{
	//		defensiveStance=false	
	//	}	
	//}
	
	//with oBattleStats
	//{
	//	var _setupPointX=oBattleStats.x
	//	var _setupPointY=oBattle.y
			
	//	move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));
		
	//	if oBattleStats.y=_setupPointY{oBattle.defendSetup=false}
	//}
}

function ResetAlpha()
{
	var _possibleUnit = array_filter
	(oBattle.enemyUnits, function(_unit, _index)
	{
		return (_unit.hp > 0);
	});
	
	for (var i = 0; i < array_length(_possibleUnit); i++)
	{
		if _possibleUnit[i].image_alpha<1{_possibleUnit[i].image_alpha+=.1}
		show_debug_message(_possibleUnit[0].image_alpha)
	}	
}

//function InitProjectile(_sec, _steps, _user, _targets, _xx=0, _type=0)
//{
//	if obj_projectileGenerator.sec>=_sec&&obj_projectileGenerator.steps>=_steps
//	{
//		CreateProjectile(_user,_targets,_xx=0,_type=0)	
//	}
//}

function CreateProjectile(_flag, _sec, _steps, _user,_row,_spd,_ystart,_type=0,_subType=0)
{
	var _set=getFlag(_flag,0)
	
	switch _user.name
	{
		case "Typha":
		
			if obj_projectileGenerator.sec>=_sec&&obj_projectileGenerator.steps>=_steps&&_set=false
			{
				getFlag(_flag,1)
				instance_create_depth(_row,_ystart,-16000,obj_projectileLeaf,{type: _type, row: _row ,spd: _spd})
				ObjFlash(_user,1.5,.025,255,255,255)
			}
			
		break;
		
		case "Mutant Worm":
		
			if obj_projectileGenerator.sec>=_sec&&obj_projectileGenerator.steps>=_steps&&_set=false
			{
				getFlag(_flag,1)
				instance_create_depth(_row,_ystart,-16000,obj_projectileMud,{type: _type, row: _row ,spd: _spd})
				ObjFlash(_user,1.5,.025,255,255,255)
			}
			
		break;
		
		case "Annoyed Ant":
		
			if obj_projectileGenerator.sec>=_sec&&obj_projectileGenerator.steps>=_steps&&_set=false
			{
				getFlag(_flag,1)
				instance_create_depth(_row,_ystart,-16000,obj_projectileAntBite,{type: _type, row: _row ,spd: _spd})
				ObjFlash(_user,1.5,.025,255,255,255)
			}
			
		break;
		
		case "Bull Frog":

			if obj_projectileGenerator.sec>=_sec&&obj_projectileGenerator.steps>=_steps&&_set=false
			{
				getFlag(_flag,1)
				if _type=0	{instance_create_depth(_row,_ystart,-16000,obj_projectileSlimeBall,{type: _type, row: _row ,spd: _spd})}
				if _type=1	{instance_create_depth(_row,_ystart,-16000,obj_projectileHorns,{type: _type, row: _row ,spd: _spd})}
				ObjFlash(_user,1.5,.025,255,255,255)
			}
			
		break;
		
		case "Nightcrawler":
			if obj_projectileGenerator.sec>=_sec&&obj_projectileGenerator.steps>=_steps&&_set=false
			{
				getFlag(_flag,1)
				if _subType=0	{instance_create_depth(_row,_ystart,-16000,obj_projectileAirrodShort,{type: _type, row: _row ,spd: _spd})}
				if _subType=1	{instance_create_depth(_row,_ystart,-16000,obj_projectileAirrodLong,{type: _type, row: _row ,spd: _spd})}
				ObjFlash(_user,1.5,.025,255,255,255)
			}
		break;
	}
}

function getFlag(_flag, _type)
{
	
	if _type=0 //check if flag is false
	{
		switch _flag
		{
			case 1:	
				if obj_projectileGenerator.flag1=true {return true}
				else{return false}
			case 2:	
				if obj_projectileGenerator.flag2=true {return true}
				else{return false}
			case 3:	
				if obj_projectileGenerator.flag3=true {return true}
				else{return false}
			case 4:	
				if obj_projectileGenerator.flag4=true {return true}
				else{return false}
			case 5:	
				if obj_projectileGenerator.flag5=true {return true}
				else{return false}
			case 6:	
				if obj_projectileGenerator.flag6=true {return true}
				else{return false}
			case 7:	
				if obj_projectileGenerator.flag7=true {return true}
				else{return false}
			case 8:	
				if obj_projectileGenerator.flag8=true {return true}
				else{return false}
			case 9:	
				if obj_projectileGenerator.flag9=true {return true}
				else{return false}
			case 10:	
				if obj_projectileGenerator.flag10=true {return true}
				else{return false}
			
				
		}
	}
	if _type=1 //sets flag to true
	{
		switch _flag
		{
			case 1:	obj_projectileGenerator.flag1=true break
			case 2:	obj_projectileGenerator.flag2=true break
			case 3:	obj_projectileGenerator.flag3=true break
			case 4:	obj_projectileGenerator.flag4=true break
			case 5:	obj_projectileGenerator.flag5=true break
			case 6:	obj_projectileGenerator.flag6=true break
			case 7:	obj_projectileGenerator.flag7=true break
			case 8:	obj_projectileGenerator.flag8=true break
			case 9:	obj_projectileGenerator.flag9=true break
			case 10: obj_projectileGenerator.flag10=true break
			
		}
	}
}

