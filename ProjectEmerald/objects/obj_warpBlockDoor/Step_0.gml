if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)&&activate=true&&global.flag[26]=0
{
	if keyboard_check(vk_space)
	{
		if before_face != -1 obj_playerEmory.face = before_face
		global.prevRoom = room
		global.escapeImmunity=2000
		instance_create_depth(0,0,-9999,oFadeIn)
		if alarm[0] == -1 
		{
			alarm[0] = room_speed*.2
		}
	}
}
else
{
	if room=RM_HOTELtop
	{
		if global.flag[46]=0
		{
			if place_meeting(x, y, obj_playerEmory)
			{
				if !instance_exists(obj_textBox)
				{
					if keyboard_check(vk_space)&&timer1<0
					{
						if text_id!=-1{create_textbox(text_id)}
					}
				}
				else
				{
					timer1=10	
				}
			}
			if timer1>-100{timer1--}
		}
		else
		{
			activate=true
		}
	}
	
	if room=RM_BROWNSTOWN
	{
		if !activate
		{
			if place_meeting(x, y, obj_playerEmory)
			{
				if !instance_exists(obj_textBox)
				{
					if keyboard_check(vk_space)&&timer1<0
					{
						if text_id!=-1{create_textbox(text_id)}
					}
				}
				else
				{
					timer1=10	
				}
			}
			if timer1>-100{timer1--}
		}
	}
	
	if room=RM_ANAHhouse1
	{
		if !activate
		{
			if place_meeting(x, y, obj_playerEmory)
			{
				if !instance_exists(obj_textBox)
				{
					if keyboard_check(vk_space)&&timer1<0
					{
						if text_id!=-1{create_textbox(text_id)}
					}
				}
				else
				{
					timer1=10	
				}
			}
			if timer1>-100{timer1--}
		}
	}
}
