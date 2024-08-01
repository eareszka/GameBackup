switch bedType
{
	//full hp
	case 0:
		if !instance_exists(obj_textBox)
		{
			if keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_playerEmory)
			{
				create_textbox("SaveProgress")	
			}
		}
	break;
	
	//half hp
	case 1:
		if !instance_exists(obj_textBox)
		{
			if keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_playerEmory)
			{
				create_textbox("SaveProgress2")	
			}
		}
	break;
	
	//full hp and mp
	case 2:
	
	break;
}

image_index=bedImg