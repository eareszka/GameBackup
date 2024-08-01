if store
{
	switch global.flag[15]
	{
		//brownstown
		case 1:
			target_x = 1456;
			target_y = 447;
			target_rm = RM_BROWNSTOWN;
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		//planevill
		case 2:
			target_x = 804;
			target_y = 564;
			target_rm = RM_PLAINVILL;
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		//ospring
		case 3:
			target_x = 994;
			target_y = 1076;
			target_rm = RM_OSPRING
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
	}
}
if drug
{
	switch global.flag[16]
	{
		//brownstown
		case 1:
			target_x = 1300;
			target_y = 952;
			target_rm = RM_BROWNSTOWN;
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		//planevill
		case 2:
			target_x = 2035;
			target_y = 570;
			target_rm = RM_PLAINVILL;
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
	}
}
if hospital
{	
	switch global.flag[17]
	{
		//brownstown
		case 1:
			target_x = 1004
			target_y = 952
			target_rm = RM_BROWNSTOWN
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		//ospring
		case 2:
			target_x = 1813
			target_y = 317
			target_rm = RM_OSPRING
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
	}
}
if tent
{
	switch global.flag[18]
	{
		//bottom left Mountain
		case 1:
			target_x = 309;
			target_y = 3058;
			target_rm = RM_MOUNTAINS
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		//top Mountain
		case 2:
			target_x = 1560;
			target_y = 877;
			target_rm = RM_MOUNTAINS
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
	}
}

if igloo
{
	switch global.flag[19]
	{
		//igloo1
		case 1:
			target_x = 971;
			target_y = 1772;
			target_rm = RM_MOUNTAINS
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		//top Mountain
		case 2:
			target_x = 1095;
			target_y = 1645;
			target_rm = RM_MOUNTAINS
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
		
		case 3:
			target_x = 1320;
			target_y = 1661;
			target_rm = RM_MOUNTAINS
			if place_meeting(x, y, obj_playerEmory) && !instance_exists(oFadeOut) && !instance_exists(oCutscene)
			{
				if keyPress
				{
					if keyboard_check(vk_space)
					{
						if before_face != -1 obj_playerEmory.face = before_face
						global.prevRoom = room
						global.escapeImmunity = 2500
						instance_create_depth(0,0,-9999,oFadeIn)
						if alarm[0] == -1 
						{
							alarm[0] = room_speed*.2
						}
					}
				}
				else
				{
					if before_face != -1 obj_playerEmory.face = before_face
					global.prevRoom = room
					global.escapeImmunity = 2500
					instance_create_depth(0,0,-9999,oFadeIn)
					if alarm[0] == -1 
					{
						alarm[0] = room_speed*.2
					}
				}
			}
		break;
	}
}