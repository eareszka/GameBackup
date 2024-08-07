//changes floor
if global.flag[4]=0
{
	with inst_6BA42727
	{
		target_x = 356
		target_y = 147
		target_rm = RM_HOTEL
	}
}
if global.flag[4]=1
{
	with inst_6BA42727
	{
		target_x = 150
		target_y = 115
		target_rm = RM_HOTELemory	
	}
}
if global.flag[4]=2
{
	with inst_6BA42727
	{
		target_x = 120
		target_y = 150
		target_rm = RM_HOTELtop	
	}
}
oElevatorMove.createTimer=25