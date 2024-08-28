draw_self()

if setup
{
	if !instance_exists(obj_RhythmArrowAttackSpeedBar)
	{
		instance_create_depth(x,y+1,depth+1,obj_RhythmArrowAttackSpeedBar,{target: target, dance: dance})
	}
	if !instance_exists(obj_RhythmArrowAttackSpeedBar)
	{
		instance_create_depth(x,y+1,depth+1,obj_RhythmArrowAttackSpeedBar,{target: target, dance: dance})
	}
}


