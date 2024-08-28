// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createDancePad(_padNumber)
{
	switch _padNumber
	{
		case 0:
			var _specifications=
			{
				arrows:3,	
				spd:3,
				frequency:1,
				padNumber:39,
				x: obj_playerEmory.x+10,
				y: obj_playerEmory.y+15,
			}
			DanceRhythm(_specifications)
		break;
	}
}