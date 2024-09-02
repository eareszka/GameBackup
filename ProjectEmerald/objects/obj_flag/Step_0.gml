if action
{
	switch flag
	{
		case 60:
			if place_meeting(x,y,obj_playerEmory)&&global.flag[flag]!=1&&global.sacredAnimals.dog=true&&global.flag[57]=0
			{
				create_cutscene("computerTalkDestiny")
				global.flag[flag]=1
			}
		break
		
		case 59:
			if place_meeting(x,y,obj_playerEmory)&&global.flag[flag]!=1&&global.flag[57]=1&&global.sacredAnimals.dog=false
			{
				create_cutscene("evaReturn")
				global.flag[flag]=1
			}
		break
		
		case 58:
			if place_meeting(x,y,obj_playerEmory)&&global.flag[flag]!=1
			{
				create_cutscene("nightcrawlerAttack")
				global.flag[flag]=1
			}
		break
		
		case 56:
			if place_meeting(x,y,obj_playerEmory)
			{
				if keyboard_check_pressed(vk_space)&&global.flag[flag]!=100//100=success
				{
					if global.flag[flag]<3{global.flag[flag]+=1}else{global.flag[flag]=0}
				}
				
				if global.flag[flag]=100&&global.flag[55]=0
				{
					create_cutscene("ladderFallCatacombsBottom")
				}
			}
		break
		
		case 54:
			if place_meeting(x,y,obj_playerEmory)
			{
				if keyboard_check_pressed(vk_space)&&global.flag[flag]!=1//1=success
				{
					create_cutscene("ladderFallStatueSwitch")
					global.flag[flag]=1
				}
			}
		break;
		
		case 51:
			if place_meeting(x,y,obj_playerEmory)&&global.flag[flag]=0&&global.flag[60]=1
			{
				if global.sacredAnimals.dog=true
				{
					if global.timeOfDay<8
					{
						global.flag[26]=1
						global.timeOfDay+=.01
						obj_playerEmory.speedWalk=0
					}
					else
					{
						global.flag[26]=0
						if instance_exists(obj_dayNight){instance_destroy(obj_dayNight)}
						global.timeOfDay=8
						global.flag[flag]=1
					}
				}
			}
		break
		case 50:
			if place_meeting(x,y,obj_playerEmory)&&global.flag[flag]=0
			{
				create_cutscene("anahCutscene1")
				global.flag[flag]=1
			}
		break;
		//catacombs summon abone
		case 49:
			if place_meeting(x,y,obj_playerEmory)
			{
				if global.flag[47]=100&&global.flag[48]=100//makes sure torches are moved
				{
					if global.flag[flag]=0
					{
						create_cutscene("createAmalbonemation")	
					}
				}
			}
		break;
		
		//move torch3
		case 47:
			if place_meeting(x,y,obj_playerEmory)
			{
				if keyboard_check_pressed(vk_space)&&global.flag[flag]!=100//100=success
				{
					if global.flag[flag]<3{global.flag[flag]+=1}else{global.flag[flag]=0}
				}
			}
		break;
		
		//move torch4
		case 48:
			if place_meeting(x,y,obj_playerEmory)
			{
				if keyboard_check_pressed(vk_space)&&global.flag[flag]!=100//100=success
				{
					if global.flag[flag]<3{global.flag[flag]+=1}else{global.flag[flag]=0}
				}
			}
		break;
		
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
		
		//computer talk 1
		case 42:
			if global.flag[flag]<1
			{
				if place_meeting(x,y,obj_playerEmory)
				{
					create_cutscene("computerTalk1")
					global.flag[flag]=ammount
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
		
		case 4:
			if place_meeting(x,y,obj_playerEmory)
			{
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