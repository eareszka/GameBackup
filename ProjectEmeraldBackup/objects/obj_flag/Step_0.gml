if action
{
	switch flag
	{
		case 1:
			if global.flag[flag]<1
			{
				if place_meeting(x,y,obj_playerEmory)
				{
					if !instance_exists(oCutscene)
					{
						with instance_create_depth(x,y,-9999,oCutscene)
						{
							cutscene = "babyWorm"
						}
					}
				}
			}
		break
		
		case 2:
			if global.flag[flag] < 1
			{
				if !keyboardCheck
				{
					if place_meeting(x,y,obj_playerEmory)
					{
						create_cutscene("theCoach")
					}
				}
				if keyboardCheck
				{
					if place_meeting(x,y,obj_playerEmory)
					{
						if keyboard_check_pressed(vk_space)
						{
							create_cutscene("theCoach")
						}
					}
				}
			}
		break;
		
		case 12:
			if global.flag[flag] < 1
			{
				if place_meeting(x,y,obj_playerEmory)
				{
					create_cutscene("hornedBeetle")
				}
			}
		break;
		
		case 13:
			if global.flag[flag] < 1
			{
				if place_meeting(x,y,obj_playerEmory)
				{
					create_cutscene("ancientKingIntro")
				}
			}
		break;
		
		//bomb run cutscene
		case 24:
			if global.flag[flag] < 1
			{
				if place_meeting(x,y,obj_playerEmory)
				{
					create_cutscene("bombRun2")
				}
			}
		break
		
		//bomb destroy rock
		case 25:
			if global.flag[flag] < 1&&global.flag[23]=1&&global.bombTimer>0
			{
				if place_meeting(x,y,obj_playerEmory)
				{
					create_cutscene("bombRunDestroy")
				}
			}
		break
		
		//move torches
		case 32:
			if place_meeting(x,y,obj_playerEmory)
			{
				if keyboard_check_pressed(vk_space)&&global.flag[flag]!=100//100=success
				{
					if global.flag[flag]<3{global.flag[flag]+=1}else{global.flag[flag]=0}
				}
			}
		break;
		
		//move torches
		case 33:
			if place_meeting(x,y,obj_playerEmory)
			{
				if keyboard_check_pressed(vk_space)&&global.flag[flag]!=100//100=success
				{
					if global.flag[flag]<3{global.flag[flag]+=1}else{global.flag[flag]=0}
				}
			}
		break;
	}
}
else
{
	if place_meeting(x,y,obj_playerEmory)
	{	
		global.flag[flag] = ammount
	}
}