// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OverworldDamage(_obj,_damage)
{
	switch _obj
	{
		case obj_playerEmory:	
			if global.EcurrentHP > 0
			{
				_obj.hit = true
				global.overworldDamage = 80
				global.EcurrentHP -= _damage
				if !instance_exists(oFloatingText)
				{
					instance_create_depth(obj_playerEmory.x,obj_playerEmory.y,-16000, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_white, text: "-"+string(_damage)})
				}
			}
		break;
		case obj_playerFinn:
			if global.FcurrentHP > 0
			{
				_obj.hit = true
				global.overworldDamage = 80
				global.FcurrentHP -= _damage
				if !instance_exists(oFloatingText)
				{
					instance_create_depth(obj_playerFinn.x,obj_playerFinn.y,-16000, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_white, text: "-"+string(_damage)})
				}
			}
		break;
		case obj_playerzBroke:
			if global.BcurrentHP > 0
			{
				_obj.hit = true
				global.overworldDamage = 80
				global.BcurrentHP -= _damage
				if !instance_exists(oFloatingText)
				{
					instance_create_depth(obj_playerzBroke.x,obj_playerzBroke.y,-16000, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_white, text: "-"+string(_damage)})
				}
			}
		break;
		case obj_playerJen:
			if global.JcurrentHP > 0
			{
				_obj.hit = true
				global.overworldDamage = 80
				global.JcurrentHP -= _damage
				if !instance_exists(oFloatingText)
				{
					instance_create_depth(obj_playerJen.x,obj_playerJen.y,-16000, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_white, text: "-"+string(_damage)})
				}
			}
		break;
	}
}