// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RanDamage(_strength,_hit)
{
	//damage is based on how many arrows you hit
	return round(((_strength)+irandom_range(-power(_strength, 1/6),power(_strength, 1/6)))/(array_length(obj_RhythmArrowAttackBar.arrows)))

}

function ContinuousAmmount(_target)
{
	if _target[0].hpMax>=700
	{
		return 6
	}
	if _target[0].hpMax>=600
	{
		return 5
	}
	if _target[0].hpMax>=400
	{
		return 4
	}
	if _target[0].hpMax>=100
	{
		return 3
	}
	if _target[0].hpMax<100
	{
		return 2
	}
}

function ContinuousDamage(_strength)
{
	return round(((_strength)/2)/global.continuous)
}