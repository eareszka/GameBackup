// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RhythmDefend(_user,_targets)
{
	oBattle.defendStart=true
	if !instance_exists(obj_projectileGenerator)&&oBattle.defendEnd=false{instance_create_depth(0,0,0,obj_projectileGenerator,{enemy: _user, target: _targets})}
}

function DefendUI()
{
	oBattle.highlightEnemy=true
	for (var i = 0; i < array_length(oBattle.enemyUnits); i++)
	{
		if enemyUnits[i].myTurn=false
		{
			if enemyUnits[i].image_alpha>.1{enemyUnits[i].image_alpha-=.1}
		}
	}
	
	
	var _speed = 1.25
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyUnits[i]
		{
			var _setupPointX=oBattle.partyUnits[i].x
			var _setupPointY=camera_get_view_y(view_camera[0])+182
			
			move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));
		}	
	}
	
	with oBattleStats
	{
		var _setupPointX=oBattleStats.x
		var _setupPointY=camera_get_view_y(view_camera[0])+22
			
		move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));
		
		if oBattleStats.y=_setupPointY{oBattle.defendSetup=true}
	}
}

function ResetUI()
{
	var _speed = 1.25
	
	for (var i = 0; i < array_length(global.party); i++)
	{
		with oBattle.partyUnits[i]
		{
			var _setupPointX=oBattle.partyUnits[i].x
			var _setupPointY=camera_get_view_y(view_camera[0])+160
			
			move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));
		}	
	}
	
	with oBattleStats
	{
		var _setupPointX=oBattleStats.x
		var _setupPointY=oBattle.y
			
		move_towards_point(_setupPointX, _setupPointY, min(point_distance(x, y, _setupPointX, _setupPointY), _speed));
		
		if oBattleStats.y=_setupPointY{oBattle.defendSetup=false}
	}
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



function CreateProjectile(_user,_targets)
{
	ObjFlash(_user,1.5,.025,255,255,255)
	switch _user.name
	{
		case "Itty-Bitty Ant":
			instance_create_depth(_targets.x,_user.y,-16000,obj_projectileMud)
		break;
		
		case "Bull Frog":
			instance_create_depth(_targets.x,_user.y,-16000,obj_projectileMud)
		break;
		
		case "Nightcrawler":
			instance_create_depth(_targets.x,_user.y,-16000,obj_projectileAirrod,{path: path_projectileAirrod})
		break;
	}
}

