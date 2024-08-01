//changes sprite based on room
switch room
{
	case RM_SHARKSpool1:
		if !instance_exists(oCutscene)
		{
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
		}
	break
	
	case RM_ANAHhouse3:
		if global.flag[42]=1
		{
			if !instance_exists(oCutscene)
			{
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
				
				if place_meeting(x,y,obj_playerEmory)
				{
					if keyboard_check_pressed(vk_space)
					{
						if !instance_exists(obj_textBox){create_textbox("computerTalk5")}
					}
				}
			}
		}
		else{cutscene_setSprite(oMacintosh,sMacintosh,8,11)}
	break
}