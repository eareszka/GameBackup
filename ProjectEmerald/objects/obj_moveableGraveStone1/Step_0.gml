image_speed = 1
if place_meeting(x,y,obj_playerEmory) && global.flag[7]<1
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		faceActor(obj_playerEmory,self)
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		create_textbox(text_id)			
	}
}

if global.flag[7]>=1 && !instance_exists(obj_textBox)
{
	if image_index < 16
	{
		cutscene_setSprite(obj_moveableGraveStone1,spr_moveGraveStone,1,17)
	}
	else
	{
		inst_504ACCB6.x = 614
		inst_504ACCB6.y = 97
		image_index = 15
	}
}
else
{
	image_index = 1	
}

if place_meeting(x,y,obj_playerEmory) && global.flag[7]>=1 && image_index = 15
{
	global.escapeImmunity = 2500
	global.prevRoom = room
	instance_create_depth(0,0,-9999,oFadeIn)
	if alarm[0] == -1 
	{
		alarm[0] = room_speed*.2
	}		
}

ObjDepth(self,obj_playerEmory,-5,10)
