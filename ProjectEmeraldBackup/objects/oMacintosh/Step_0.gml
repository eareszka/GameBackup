//changes sprite based on room
switch room
{
	case RM_SHARKSpool1:
		if obj_playerEmory.x > x+48
		{
			image_index = 6
		}
		else if obj_playerEmory.x < x
		{
			image_index = 5
		}
		else
		{
			image_index = 4
		}
	break
	
	case RM_ANAHhouse3:
		if obj_playerEmory.x > x+48
		{
			image_index = 13
		}
		else if obj_playerEmory.x < x
		{
			image_index = 12
		}
		else
		{
			image_index = 11
		}
	break
}