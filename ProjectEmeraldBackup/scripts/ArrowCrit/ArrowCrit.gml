// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ArrowCrit(_strength,_damage)
{
	if _strength = _damage
	{
		var _ran = irandom_range(0,25)
		
		if _ran = 25
		{
			oBattle.draw_char = 16
			oBattle.battleEndMessages[0] = "Critical Attack!";
			return true
		}
		else
		{
			return false	
		}
	}
}