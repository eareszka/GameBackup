// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RhythmDefend(_user,_targets)
{
	if !instance_exists(obj_projectileGenerator)&&oBattle.defendEnd=false{instance_create_depth(0,0,0,obj_projectileGenerator,{enemy: _user, target: _targets})}
	if !instance_exists(obj_defendStanceLineGenerator){instance_create_depth(_targets.xstart,_targets.y+32,0,obj_defendStanceLineGenerator)}
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
	
	//for (var i = 0; i < array_length(global.party); i++)
	//{
	//	with oBattle.partyUnits[i]
	//	{
	//		if targeted
	//		{
	//			if x!=oBattle.x+192
	//			{
	//				y++
	//			}
	//			else
	//			{
	//				defensiveStance=true
	//			}
	//		}	
	//		else
	//		{
	//			defensiveStance=true
	//		}
	//	}
	//}
	//var _speed = 1
	
	//for (var i = 0; i < array_length(global.party); i++)
	//{
	//	with oBattle.partyStats[i]
	//	{	
	//		if targeted
	//		{
	//			var _speed = 1.5
				
	//			if oBattle.partyStats[i].defendSet=false
	//			{
	//				if xPos!=oBattle.partyStats[i].x+160
	//				{
	//					//if box is not in middle and is targeted
	//					var _setupPointX=oBattle.partyStats[i].x
	//					var _setupPointY=oBattle.y+50
	//					if point_distance(x, y, _setupPointX, _setupPointY) > _speed
	//					{
	//						move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));	
	//					}
	//					else
	//					{
	//						oBattle.partyStats[i].defendSet=true
	//					}
	//				}
	//				else
	//				{
	//					var _speed = 1
	//					//if box is already in middle and is targeted
	//					var _setupPointX=oBattle.partyStats[i].x
	//					var _setupPointY=oBattle.y+28
	//					if point_distance(x, y, _setupPointX, _setupPointY) > _speed
	//					{
	//						move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));	
	//					}	
	//					else
	//					{
	//						oBattle.partyStats[i].defendSet=true	
	//					}
	//				}
	//			}
	//		}
	//		else
	//		{
	//			//for boxes that are not targeted
	//			if oBattle.partyStats[i].alpha>.3
	//			{
	//				oBattle.partyStats[i].alpha-=.1
	//			}
	//			var _setupPointX=oBattle.partyStats[i].x
	//			var _setupPointY=oBattle.y+35
			
	//			move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));
	//		}
	//	}
	//}
}

function ResetUI()
{
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyUnits[i]
		{
			targeted=false
		}
	}
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyStats[i]
		{
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

function CreateProjectile(_user,_targets,_xx=0,_type=0)
{
	ObjFlash(_user,1.5,.025,255,255,255)
	switch _user.name
	{
		case "Mutant Worm":
			instance_create_depth(_targets.xstart+_xx,_user.y,-16000,obj_projectileMud)
		break;
		
		case "Itty-Bitty Ant":
			instance_create_depth(_targets.xstart+_xx,_user.y,-16000,obj_projectileMud)
		break;
		
		case "Bull Frog":
			instance_create_depth(_targets.xstart+_xx,_user.y,-16000,obj_projectileMud)
		break;
		
		case "Nightcrawler":
			
			switch _type
			{
				case 0: instance_create_depth(_targets.xstart+_xx,_user.y,-16000,obj_projectileAirrod,{path: path_projectileAirrod}) break
				case 1: instance_create_depth(_targets.xstart+_xx,_user.y,-16000,obj_projectileAirrod,{path: path_projectileAirrod2}) break
			}
		break;
	}
}

